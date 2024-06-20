<?php
session_start();


if (!isset($_SESSION['admin'])) {
    header('Location: login.php');
    exit();
}

include('config.php');

function sanitize($input) {
    global $yhendus;
    return mysqli_real_escape_string($yhendus, htmlspecialchars(strip_tags($input)));
}

if ($_SERVER["REQUEST_METHOD"] === "GET" && !empty($_GET["action"]) && $_GET["action"] === "delete" && !empty($_GET["id"])) {
    $id = intval($_GET["id"]);
    $query = "DELETE FROM toidukohad WHERE id = ?";
    if ($stmt = $yhendus->prepare($query)) {
        $stmt->bind_param('i', $id);
        if ($stmt->execute()) {
            header("Location: admin.php");
            exit();
        } else {
            echo "Error: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Failed to prepare the delete statement.";
    }
}

$limit = 10;
$start = isset($_GET['next']) ? intval($_GET['next']) : 0;
$prev = max(0, $start - $limit);

if (!empty($_GET["s"])) {
    $search = sanitize($_GET["s"]);
    $query = "SELECT * FROM toidukohad WHERE nimi LIKE '%$search%' LIMIT $start, $limit";
    $count_query = "SELECT COUNT(*) as total FROM toidukohad WHERE nimi LIKE '%$search%'";
} else {
    $query = "SELECT * FROM toidukohad LIMIT $start, $limit";
    $count_query = "SELECT COUNT(*) as total FROM toidukohad";
}

$total_query = mysqli_query($yhendus, $count_query);
$total_records = mysqli_fetch_assoc($total_query)['total'];

$next = $start + $limit;
if ($next >= $total_records) {
    $next = $start;
}
?>

<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Admin Panel</h1>
        <div class="row justify-content-end mb-3">
            <div class="col-auto">
                <a href="logout.php" class="btn btn-danger">Logout</a>
            </div>
        </div>
        <table class="table table-sm">
            <thead>
                <tr>
                    <th>Nimi</th>
                    <th>Asukoht</th>
                    <th>Keskmine hinne</th>
                    <th>Hinnatud (korda)</th>
                    <th>Muuda</th>
                    <th>Kustuta</th>
                </tr>
            </thead>
            <tbody>
            <?php
            $result = mysqli_query($yhendus, $query);

            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . htmlspecialchars($row['nimi']) . "</td>";
                echo "<td>" . htmlspecialchars($row['asukoht']) . "</td>";
                echo "<td>" . htmlspecialchars($row['keskmine_hinne']) . "</td>";
                echo "<td>" . htmlspecialchars($row['hinnatud']) . "</td>";
                echo "<td><a href=\"muuda.php?id=" . htmlspecialchars($row['id']) . "\" class=\"btn btn-warning btn-sm\">Muuda</a></td>";
                echo "<td><a href=\"?action=delete&id=" . htmlspecialchars($row['id']) . "\" class=\"btn btn-danger btn-sm\" onclick=\"return confirm('Kas oled kindel, et soovid kustutada?')\">Kustuta</a></td>";
                echo "</tr>";
            }
            ?>
            </tbody>
        </table>

        <div class="d-flex justify-content-end">
            <a href="?prev=<?php echo $prev; ?>" class="btn btn-primary <?php if ($start == 0) echo 'disabled'; ?>" role="button" aria-disabled="<?php if ($start == 0) echo 'true'; ?>">&lt;&lt; Eelmised</a>
            <a href="?next=<?php echo $next; ?>" class="btn btn-primary ms-2 <?php if ($start >= $total_records - $limit) echo 'disabled'; ?>" role="button" aria-disabled="<?php if ($start >= $total_records - $limit) echo 'true'; ?>">Järgmised &gt;&gt;</a>
        </div>
    </div>
</body>
</html>
