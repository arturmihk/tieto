<?php
    $kasutaja = "artur";
    $dbserver = "localhost";
    $andmebaas = "kohvikud-it22";
    $pw = "Passw0rd";

    $yhendus = mysqli_connect($dbserver, $kasutaja, $pw, $andmebaas);

    if(!$yhendus){
        die("Ei saa ühendust!");
    } 
?>