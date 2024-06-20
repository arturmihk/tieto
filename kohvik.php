<?php include('config.php'); ?>
<!doctype html>
<html lang="et">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kohvikud</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        .rating {
            float: left;
            height: 46px;
            padding: 0 10px;
        }
        fieldset, label { margin: 0; padding: 0; }
        body{ margin: 20px; }
        h1 { font-size: 1.5em; margin: 10px; }

        /* Style Star Rating Widget */
        .rating { 
            border: none;
            float: left;
        }
        .rating > input { display: none; } 
        .rating > label:before { 
            margin: 5px;
            font-size: 1.25em;
            font-family: FontAwesome;
            display: inline-block;
            content: "\f005";
        }
        .rating > .half:before { 
            content: "\f089";
            position: absolute;
        }
        .rating > label { 
            color: #ddd; 
            float: right; 
        }

        /* CSS Magic to Highlight Stars on Hover */
        .rating > input:checked ~ label,
        .rating:not(:checked) > label:hover,
        .rating:not(:checked) > label:hover ~ label { color: #FFD700; } /* hover current star */
        .rating > input:checked + label:hover,
        .rating > input:checked ~ label:hover,
        .rating > label:hover ~ input:checked ~ label,
        .rating > input:checked ~ label:hover ~ label { color: #FFED85; } /* lighten current selection */
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <?php
            // Handle rating deletion
            if (!empty($_GET["del"]) && !empty($_GET["id"])) {
                $del = $_GET["del"];
                $id = $_GET["id"];
                $query = 'DELETE FROM hinnangud WHERE id=' . intval($del);
                $result = mysqli_query($yhendus, $query);
                if ($result) {
                    echo '<div class="alert alert-success" role="alert">Hinnang edukalt kustutatud.</div>';
                } else {
                    echo '<div class="alert alert-danger" role="alert">Ei saanud kustutada.</div>';
                }
            }


            if (!empty($_POST["nimi"]) && !empty($_POST["kommentaar"]) && isset($_POST["rate"]) && !empty($_GET["id"])) {
                $nimi = mysqli_real_escape_string($yhendus, $_POST["nimi"]);
                $kommentaar = mysqli_real_escape_string($yhendus, $_POST["kommentaar"]);
                $rate = intval($_POST["rate"]);
                $id = intval($_GET["id"]);
                $query = 'INSERT INTO hinnangud (nimi, kommentaar, hinnang, toidukohad_id) VALUES ("' . $nimi . '", "' . $kommentaar . '", ' . $rate . ', ' . $id . ')';
                $result = mysqli_query($yhendus, $query);

                if ($result) {
                    echo '<div class="alert alert-success" role="alert">Hinnang lisatud.</div>';
                } else {
                    echo '<div class="alert alert-danger" role="alert">Hinnangut ei saanud lisada.</div>';
                }


                $avgQuery = "SELECT AVG(hinnang) AS keskmine_hinne, COUNT(*) AS hinnatud FROM hinnangud WHERE toidukohad_id=" . $id;
                $avgResult = mysqli_query($yhendus, $avgQuery);
                $avgData = mysqli_fetch_assoc($avgResult);
                $newAvg = round($avgData['keskmine_hinne'], 2);
                $newCount = $avgData['hinnatud'];

                $updateQuery = "UPDATE toidukohad SET keskmine_hinne=$newAvg, hinnatud=$newCount WHERE id=$id";
                $updateResult = mysqli_query($yhendus, $updateQuery);
                if (!$updateResult) {
                    echo '<div class="alert alert-warning" role="alert">Failed to update cafe rating.</div>';
                }
            }


            if (!empty($_GET["id"])) {
                $id = intval($_GET["id"]);
                $query = 'SELECT * FROM toidukohad WHERE id=' . $id;
                $result = mysqli_query($yhendus, $query);
                $cafe = mysqli_fetch_assoc($result);
            } else {
                echo '<div class="alert alert-danger" role="alert">Cafe ID is missing.</div>';
                exit();
            }
            ?>
            <h1>Hinda kohvikut <strong><?php echo htmlspecialchars($cafe['nimi']); ?></strong></h1>
            <form action="kohvik.php?id=<?php echo $id; ?>" method="post">
                <div class="row mb-3">
                    <div class="col-sm-4">Nimi:</div>
                    <div class="col-sm-8"><input required type="text" name="nimi" class="form-control"></div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-4">Kommentaar:</div>
                    <div class="col-sm-8"><textarea required name="kommentaar" rows="4" class="form-control"></textarea></div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-4">Hinnang:</div>
                    <div class="col-sm-8">
    
                        <div class="rating">
                            <?php for ($i = 10; $i >= 1; $i--) { ?>
                                <input type="radio" id="star<?php echo $i; ?>" name="rate" value="<?php echo $i; ?>" required />
                                <label for="star<?php echo $i; ?>" title="<?php echo $i; ?> stars"><?php echo $i; ?> </label>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="id" value="<?php echo $id; ?>">
                <div class="row mb-3">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-8"><input class="btn btn-danger" type="submit" value="Hinda"></div>
                </div>
            </form>
            <div class="row mb-3">
                <div class="col-sm-4"><a class="btn btn-primary btn-sm" href="index.php">Tagasi</a></div>
            </div>

            <table class="table table-sm">
                <thead>
                    <tr>
                        <th>Nimi</th>
                        <th>Kommentaar</th>
                        <th>Hinnang</th>
                        <th>Tegevus</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $query = 'SELECT * FROM hinnangud WHERE toidukohad_id=' . $id;
                    $result = mysqli_query($yhendus, $query);
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo '<tr>';
                        echo '<td>' . htmlspecialchars($row['nimi']) . '</td>';
                        echo '<td>' . htmlspecialchars($row['kommentaar']) . '</td>';
                        echo '<td>' . intval($row['hinnang']) . '/10</td>';
                        echo '<td><a href="kohvik.php?del=' . intval($row['id']) . '&id=' . $id . '" class="btn btn-danger btn-sm">Delete</a></td>';
                        echo '</tr>';
                    }
                    ?>
                </tbody>
            </table>
        </div>
        <div class="col-2"></div
