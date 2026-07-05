<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehicle_database";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode([
        'status' => false,
        'message' => 'Database connection failed',
        'data' => []
    ]);
    exit;
}

$result = $conn->query("SELECT id, name, description FROM powertrain_types ORDER BY id");
$data = [];
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = [
            'id' => (int)$row['id'],
            'name' => $row['name'],
            'description' => $row['description']
        ];
    }
}
$conn->close();

echo json_encode([
    'status' => true,
    'data' => $data
]);
?>