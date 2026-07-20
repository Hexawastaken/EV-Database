<?php
session_start();
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

session_destroy();
echo json_encode(['status' => true, 'message' => 'Logged out']);
?>