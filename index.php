<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kohvikud</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Valige asutus mida hinnata</h1>
        <div class="row mb-3">
            <div class="col-9"></div>
            <div class="col-3 text-end">
                <form class="mb-3" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control" name="s" placeholder="Otsi asutust" value="<?php echo isset($_GET['s']) ? htmlspecialchars($_GET['s']) : ''; ?>">
                        <button class="btn btn-primary" type="submit">Otsi</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="text-end mb-3">
            <a href="login.php" class="btn btn-outline-primary">Admin Login</a>
        </div>

        <table class="table table-sm">
            <thead>
                <tr>
                    <th>Nimi</th>
                    <th>Asukoht</th>
                    <th>Keskmine hinne</th>
                    <th>Hinnatud (korda)</th>
                </tr>
            </thead>
            <tbody>
            <?php
            include('config.php');

            function sanitize($input) {
                global $yhendus;
                return mysqli_real_escape_string($yhendus, htmlspecialchars(strip_tags($input)));
            }

            $limit = 10;
            $start = isset($_GET['next']) ? intval($_GET['next']) : 0;
            $prev = max(0, $start - $limit);

            if (!empty($_GET["s"])) {
                $search = sanitize($_GET["s"]);
                $query = "SELECT * FROM toidukohad WHERE nimi LIKE '%$search%'";
            } else {
                $query = "SELECT * FROM toidukohad LIMIT $start, $limit";

                $total_query = mysqli_query($yhendus, "SELECT COUNT(*) as total FROM toidukohad");
                $total_restaurants = mysqli_fetch_assoc($total_query)['total'];

                $next = $start + $limit;
                if ($next >= $total_restaurants) {
                    $next = $start;
                }
            }

            $result = mysqli_query($yhendus, $query);

            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td><a href=\"kohvik.php?id=" . htmlspecialchars($row['id']) . "\">" . htmlspecialchars($row['nimi']) . "</a></td>";
                echo "<td>" . htmlspecialchars($row['asukoht']) . "</td>";
                echo "<td>" . htmlspecialchars($row['keskmine_hinne']) . "</td>";
                echo "<td>" . htmlspecialchars($row['hinnatud']) . "</td>";
                echo "</tr>";
            }
            ?>
            </tbody>
        </table>
        
        <div class="d-flex justify-content-end">
            <a href="?prev=<?php echo $prev; ?>" class="btn btn-primary <?php if ($start == 0) echo 'disabled'; ?>" role="button" aria-disabled="<?php if ($start == 0) echo 'true'; ?>">&lt;&lt; Eelmised</a>
            <a href="?next=<?php echo $next; ?>" class="btn btn-primary ms-2 <?php if ($start >= $total_restaurants - $limit) echo 'disabled'; ?>" role="button" aria-disabled="<?php if ($start >= $total_restaurants - $limit) echo 'true'; ?>">Järgmised &gt;&gt;</a>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
