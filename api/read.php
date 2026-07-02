<?php
require "../autoload.php";

header("Content-Type: application/json");

use App\Models\Post;

$allposts = post::getAllPosts();

$arr = [];
$arr["data"] = [];

if(!empty($allposts)){

    foreach($allposts as $post){
        $post_item = [
            "id" => $post["id"],
            "name" => $post["name"],
            "country" => $post["country"],
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