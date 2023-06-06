<?php
    $host = 'localhost';
    $dbname = 'datubāze';
    $user = 'root'; 
    $password = ''; 

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
        echo "Savienojums neizdevās: " . $e->getMessage();
    }
?>