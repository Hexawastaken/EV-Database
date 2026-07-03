<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Content-Type');

// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehicle_database";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die(json_encode([
        'status' => false,
        'message' => 'Database connection failed: ' . $conn->connect_error
    ]));
}

// Get ID from URL parameter
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($id <= 0) {
    echo json_encode([
        'status' => false,
        'message' => 'Invalid or missing ID parameter'
    ]);
    $conn->close();
    exit;
}

// Prepare and execute query
$stmt = $conn->prepare("SELECT id, name, description FROM powertrain_types WHERE id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo json_encode([
        'status' => true,
        'post' => [
            'id' => intval($row['id']),
            'name' => $row['name'],
            'description' => $row['description']
        ]
    ]);
} else {
    echo json_encode([
        'status' => false,
        'message' => 'Powertrain type not found'
    ]);
}

$stmt->close();
$conn->close();
?>