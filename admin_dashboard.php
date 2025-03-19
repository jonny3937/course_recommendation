<?php
session_start();
include 'db.php';

if (!isset($_SESSION['admin_id'])) {
    header('Location: admin_login.php');
    exit();
}

// Fetch total users
$sql = "SELECT COUNT(*) AS total_users FROM users";
$stmt = $conn->prepare($sql);
$stmt->execute();
$total_users = $stmt->fetch(PDO::FETCH_ASSOC)['total_users'];

// Fetch total courses
$sql = "SELECT COUNT(*) AS total_courses FROM courses";
$stmt = $conn->prepare($sql);
$stmt->execute();
$total_courses = $stmt->fetch(PDO::FETCH_ASSOC)['total_courses'];

// Fetch total unique schools (universities) from courses
$sql = "SELECT COUNT(DISTINCT university) AS total_schools FROM courses";
$stmt = $conn->prepare($sql);
$stmt->execute();
$total_schools = $stmt->fetch(PDO::FETCH_ASSOC)['total_schools'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="admin_dashboard_style.css">
</head>
<body>
<nav>
    <ul>
        <li><a href="manage_users.php">Manage Users</a></li>
        <li><a href="manage_courses.php">Manage Courses</a></li>
        <li><a href="logout.php">Logout</a></li>
    </ul>
</nav>

<div class="container">
    <h2>Welcome, Admin</h2>
    <p>Use the menu to manage the system.</p>

    <div class="dashboard-cards">
        <div class="card">
            <h3>Total Schools</h3>
            <p><?php echo $total_schools; ?></p>
        </div>
        <div class="card">
            <h3>Total Courses</h3>
            <p><?php echo $total_courses; ?></p>
        </div>
        <div class="card">
            <h3>Total Users</h3>
            <p><?php echo $total_users; ?></p>
        </div>
    </div>
</div>

</body>
</html>
