<?php
$host = "localhost";
$db = "lugares_db";
$user = "root";
$pass = "";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
} catch (PDOException $e) {
    die(json_encode(["error" => $e->getMessage()]));
}
?>
