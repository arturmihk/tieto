<?php
require 'config.php';
session_start();


if (!isset($_SESSION['admin'])) {
    header('Location: login.php');
    exit();
}


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = intval($_POST['id']);
    $nimi = $yhendus->real_escape_string($_POST['nimi']);
    $asukoht = $yhendus->real_escape_string($_POST['asukoht']);

    $updateQuery = "UPDATE toidukohad SET nimi = ?, asukoht = ? WHERE id = ?";
    if ($stmt = $yhendus->prepare($updateQuery)) {
        $stmt->bind_param('ssi', $nimi, $asukoht, $id);
        if ($stmt->execute()) {
            header('Location: admin.php');
            exit();
        } else {
            echo "Update failed: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Failed to prepare the update statement.";
    }
}


$toidukoht = null;
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $query = "SELECT * FROM toidukohad WHERE id = ?";
    if ($stmt = $yhendus->prepare($query)) {
        $stmt->bind_param('i', $id);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($result->num_rows > 0) {
            $toidukoht = $result->fetch_assoc();
        } else {
            echo "No record found!";
            exit();
        }
        $stmt->close();
    } else {
        echo "Failed to prepare the select statement.";
    }
} else {
    echo "Invalid ID!";
    exit();
}
?>

<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Muuda Toidukoht</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Muuda Toidukoht</h1>
        <form method="POST">
            <input type="hidden" name="id" value="<?php echo htmlspecialchars($toidukoht['id']); ?>">
            <div class="mb-3">
                <label for="nimi" class="form-label">Nimi</label>
                <input type="text" class="form-control" id="nimi" name="nimi" value="<?php echo htmlspecialchars($toidukoht['nimi']); ?>">
            </div>
            <div class="mb-3">
                <label for="asukoht" class="form-label">Asukoht</label>
                <input type="text" class="form-control" id="asukoht" name="asukoht" value="<?php echo htmlspecialchars($toidukoht['asukoht']); ?>">
            </div>
            <button type="submit" class="btn btn-primary">Salvesta muudatused</button>
        </form>
    </div>
</body>
</html>
