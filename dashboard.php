<?php
session_start();
include 'db.php';

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<nav>
    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="profile.php">My Profile</a></li> <!-- New Profile Link -->
        <li><a href="logout.php">Logout</a></li>
    </ul>
</nav>

<div class="container">
    <h2>Dashboard</h2>
    <p>Welcome to your dashboard. Choose an option below:</p>
    
    <div class="dashboard-links">
        <a href="exam_results.php">Enter Exam Results</a>
        <a href="recommendations.php">View Recommendations</a>
    </div>
</div>

<footer>
    &copy; 2025 Course Recommendation System | Inspired by KUCCPS
</footer>

</body>
</html>
