<title> Sveikinimas </title>
<?php
date_default_timezone_set('Europe/Kaunas');

$servername = "localhost";
$username = "etravi_php";
$password = "e-Travi159";
$dbname = "etravi_php";

$datatable = "biblioteka"; // MySQL table name
$results_per_page = 10; // rezultatų puslapyje

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

?>