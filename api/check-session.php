<?php
session_start();
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$loggedIn = isset($_SESSION['user_id']);
echo json_encode(['loggedIn' => $loggedIn]);
?>