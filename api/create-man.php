<?php
require "../autoload.php";

header("Content-Type: application/json");
header("Acess-Control-Allow-Methods: POST");

use App\Controllers\MansController;
use App\Models\Manufacturer;

if($_SERVER['REQUEST_METHOD'] === "POST"){

    $createNewPost = new MansController();
    $post = json_decode(file_get_contents("php://input"));

    $data = [
        "name" => $post -> name,
        "country" => $post -> country,
    ];

    if($createNewPost->store($data)){
         echo json_encode([
            "status" => true,
            "message" => "Post is successfully created",
            "data" => $data]
            );
    } else {
         echo json_encode([
            "status" => false,
            "message" => "Post was not created"]);
    }
}
