<?php

namespace App\Models;

use PDO;
use PDOException;
use App\Core\Database;

class Post{
    //get all posts
    public static function getAllPosts(){
        $pdo = Database::connect();
        $allPosts = $pdo->prepare("SELECT * FROM manufacturers");
        $allPosts -> execute();
        return $allPosts -> fetchAll(PDO::FETCH_ASSOC);
    }

    //fetching one post
    public static function getSinglePost($id){
        $pdo = Database::connect();
        $singlePost = $pdo->prepare("SELECT * FROM manufacturers WHERE id=?");
        $singlePost -> execute([$id]);
        return $singlePost -> fetch(PDO::FETCH_ASSOC);
    }

    //Creating one post
    public static function createPost($name, $country){
        $pdo = Database::connect();
        $iPost = $pdo->perpare("INSERT INTO manufacturers (name, country) VALUES (:name, :country)");
        $iPost -> execute([
            ":name" => $name,
            ":country" => $country
            ]);
        return $iPost;
    }

    //Updating posts
     public static function updatePost($name, $country, $id){
        $pdo = Database::connect();
        $uPost = $pdo->perpare("UPDATE manufacturers SET name=? AND country=? WHERE id=?");
        $uPost -> execute([
            $name, $country, $id
            ]);
        return $uPost;
    }

    //Delete posts
     public static function deletePost($id){
        $pdo = Database::connect();
        $dPost = $pdo->prepare(" DELETE FROM manufactueres WHERE id=?");
        $dPost -> execute([$id]);
        return $dPost;
    }
}