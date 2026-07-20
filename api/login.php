<?php
session_start();
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehicle_database";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(['status' => false, 'message' => 'DB connection failed']);
    exit;
}

$data = json_decode(file_get_contents('php://input'), true);
// REMOVED the stray echo that was here

$username = isset($data['username']) ? trim($data['username']) : '';
$password = isset($data['password']) ? $data['password'] : '';

if (empty($username) || empty($password)) {
    echo json_encode(['status' => false, 'message' => 'Username and password required']);
    $conn->close();
    exit;
}

$stmt = $conn->prepare("SELECT id, password FROM users WHERE username = ?");
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $user = $result->fetch_assoc();
    // Option 2: Plain text comparison (if your DB stores plain passwords)
    if ($password === $user['password']) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $username;
        echo json_encode(['status' => true, 'message' => 'Login successful']);
    } else {
        echo json_encode(['status' => false, 'message' => 'Invalid password']);
    }
} else {
    echo json_encode(['status' => false, 'message' => 'User not found']);
}

$stmt->close();
$conn->close();
?>