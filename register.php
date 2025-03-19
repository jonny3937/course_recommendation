<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $full_name = $_POST['full_name'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO users (full_name, email, password) VALUES (:full_name, :email, :password)";
    $stmt = $conn->prepare($sql);
    $stmt->execute(['full_name' => $full_name, 'email' => $email, 'password' => $password]);

    header('Location: login.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="user_style.css">
</head>
<body>
<div class="container">
    <h2>Register</h2>
    <form action="register.php" method="POST">
        <input type="text" name="full_name" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Register</button>
    </form>
</div>
</body>
</html>
