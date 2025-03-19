<?php
session_start();
include 'db.php';

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

$user_id = $_SESSION['user_id'];

// Fetch user details
$sql = "SELECT * FROM users WHERE id = :id";
$stmt = $conn->prepare($sql);
$stmt->execute(['id' => $user_id]);
$user = $stmt->fetch();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $full_name = $_POST['full_name'];
    $email = $_POST['email'];

    $sql = "UPDATE users SET full_name = :full_name, email = :email WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute(['full_name' => $full_name, 'email' => $email, 'id' => $user_id]);

    header('Location: profile.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Profile</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<nav>
    <ul>
        <li><a href="dashboard.php">Dashboard</a></li>
        <li><a href="logout.php">Logout</a></li>
    </ul>
</nav>

<div class="container">
    <h2>My Profile</h2>

    <form action="profile.php" method="POST">
        <label>Full Name:</label>
        <input type="text" name="full_name" value="<?php echo htmlspecialchars($user['full_name']); ?>" required>

        <label>Email:</label>
        <input type="email" name="email" value="<?php echo htmlspecialchars($user['email']); ?>" required>

        <button type="submit">Update Profile</button>
    </form>
</div>

<footer>
    &copy; 2025 Course Recommendation System | Inspired by KUCCPS
</footer>

</body>
</html>
