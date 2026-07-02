<?php
require "../autoload.php";

header("Content-Type: application/json");

use App\Models\Manufacturer;


$id = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);


if(!$id){
    echo json_encode([
        "status" => false,
        "message" => "Error, Invalid index"
    ]);
} else{
    $post = Manufacturer::getSinglePost($id);
    if(!$post){
        echo json_encode([
            "status" => false,
            "message" => "Error, not finding this post"
    ]);
    }else{
        echo json_encode([
            "status" => true,
            "post" => $post
        ]);   
    }
    
}