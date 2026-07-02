<?php
require "../autoload.php";

header("Content-Type: application/json");

use App\Models\Model;

$allposts =  Model::getAllPosts();

$arr = [];
$arr["data"] = [];

if(!empty($allposts)){

    foreach($allposts as $post){
        $post_item = [
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
            "warranty_years" => $post["warranty_years"]
        ];

        $arr["data"][] = $post_item;
    }

    echo json_encode($arr);
}else{
    echo json_encode([
        "data" => [],
        "message" => "no posts for now"
    ]);
}