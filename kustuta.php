<?php
include('config.php');

if ($_SERVER["REQUEST_METHOD"] === "GET" && !empty($_GET["id"])) {
    $id = intval($_GET["id"]);
    $query = "DELETE FROM toidukohad WHERE id = ?";
    if ($stmt = $yhendus->prepare($query)) {
        $stmt->bind_param('i', $id);
        if ($stmt->execute()) {
            header("Location: index.php");
            exit();
        } else {
            echo "Error: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Failed to prepare the delete statement.";
    }
} else {
    echo "Invalid request.";
}
?>
