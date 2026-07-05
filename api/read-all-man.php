<?php
require "../autoload.php";

header("Content-Type: application/json");

use App\Models\Manufacturer;

$allposts = Manufacturer::getAllPosts();

$arr = ["status" => true, "data" => []];

if(!empty($allposts)){

    foreach($allposts as $post){
        $post_item = [
            "id" => $post["id"],
            "name" => $post["name"],
            "country" => $post["country"],
            "logo_url" => $post["logo_url"]
        ];

        $arr["data"][] = $post_item;
    }

    echo json_encode($arr);
}else{
    echo json_encode([
        "data" => [],
        "status" => false
    ]);
}