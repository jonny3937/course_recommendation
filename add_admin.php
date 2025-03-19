<?php
include 'db.php';

$full_name = "Kevin";
$email = "kenife@gmail.com";
$password = password_hash("12345678", PASSWORD_DEFAULT);
$role = "admin";

$sql = "INSERT INTO users (full_name, email, password, role) VALUES (:full_name, :email, :password, :role)";
$stmt = $conn->prepare($sql);
$stmt->execute(['full_name' => $full_name, 'email' => $email, 'password' => $password, 'role' => $role]);

echo "Admin added successfully!";
?>
