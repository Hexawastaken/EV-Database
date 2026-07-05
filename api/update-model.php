<?php
require "../autoload.php";

header("Content-Type: application/json");
header("Acess-Control-Allow-Methods: PUT");

use App\Controllers\ModelsController;
use App\Models\Model;




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
    $updatePost = new ModelsController();

    $data = [
            "manufacturer_id" => $post["manufacturer_id"],
            "model_name" => $post["model_name"],
            "class_id" => $post["class_id"],
            "release_year" => $post["release_year"],
            "battery_capacity" => $post["battery_capacity"],
            "powertrain_id" => $post["powertrain_id"],
            "cltc_range" => $post["cltc_range"],
            "e_power" => $post["e_power"],
            "e_torque" => $post["e_torque"],
            "top_speed" => $post["top_speed"],
            "zero_to_hundred" => $post["zero_to_hundred"],
            "drive_type_id" => $post["drive_type_id"],
            "price" => $post["price"],
            "cell_shape" => $post["cell_shape"],
            "cooling_method" => $post["cooling_method"],
            "cell_chemistry" => $post["cell_chemistry"],
            "fast_charging_time" => $post["fast_charging_time"],
            "ac_charging_time" => $post["ac_charging_time"],
            "warranty_years" => $post["warranty_years"],
            "img_url" => $post["img_url"]
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
