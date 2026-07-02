<?php
namespace App\Controllers;

use App\Models\Post;

class PostsController{

    public function store($data){
        $name = trim(htmlspecialchars($_POST['name']));
        $country = trim(htmlspecialchars($_POST['country']));

        if($name AND $country){
            $inserted = Post::createPost($country, $name);
        }
        if($inserted){
            return true;
        }else{
            return false;
        }
    }

    public function update($data, $id){
        $name = trim(htmlspecialchars($_POST['name']));
        $country = trim(htmlspecialchars($_POST['country']));

        if($name AND $country){
            $updated = Post::updatePost($country, $name, $id);
        }
        if($updated){
            return true;
        }else{
            return false;
        }
    }
}





?>