<?php
require "../autoload.php";

header("Content-Type: application/json");
header("Acess-Control-Allow-Methods: PUT");

use App\Controllers\MansController;
use App\Models\Manufacturer;




if($_SERVER['REQUEST_METHOD'] === "PUT"){

    //validate $id
    $post = json_decode(file_get_contents("php://input"), true);
    $id = isset($post['id']) ? (int)$post['id'] : 0;
    if($id < 0){
        echo json_encode([
            "status" => false,
            "message" => "Error, Invalid index"
        ]);
        exit(); 
    }

    
    //update
    $updatePost = new MansController();

    $data = [
        "name" => $post["name"],
        "country" => $post["country"],
    ];

    if($updatePost->update($data, $id)){
         echo json_encode([
            "status" => true,
            "message" => "Post is successfully updated",
            "data" => $data]
            );
    } else {
         echo json_encode([
            "status" => false,
            "message" => "Post was not updated"]);
    }
}
