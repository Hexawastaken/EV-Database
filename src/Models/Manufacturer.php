<?php

namespace App\Models;

use PDO;
use PDOException;
use App\Core\Database;

class Manufacturer{
    //get all manufacturers
    public static function getAllPosts(){
        $pdo = Database::connect();
        $allPosts = $pdo->prepare("SELECT * FROM manufacturers");
        $allPosts -> execute();
        return $allPosts -> fetchAll(PDO::FETCH_ASSOC);
    }

    //fetching one manufacturer
    public static function getSinglePost($id){
        $pdo = Database::connect();
        $singlePost = $pdo->prepare("SELECT * FROM manufacturers WHERE id=?");
        $singlePost -> execute([$id]);
        return $singlePost -> fetch(PDO::FETCH_ASSOC);
    }

    //Creating a new manufacturer
    public static function createPost($name, $country) {
    try {
        $pdo = Database::connect();
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO manufacturers (name, country) VALUES (?, ?)";
        $stmt = $pdo->prepare($sql);
        $success = $stmt->execute([$name, $country]);
        return $success; // boolean
    }   
    catch (PDOException $e) {
        error_log("createPost error: " . $e->getMessage());
        return false;
    }
}

    //Updating manufacturer
    public static function updatePost($name, $country, $id){
        try{
        $pdo = Database::connect();
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = $pdo->prepare("UPDATE manufacturers SET name = ?, country = ? WHERE id = ?");
        $success = $stmt->execute([$name, $country, $id]);
        if ($success && $stmt->rowCount() > 0) {
            return true;
        }
        
        return false; // No row found or no changes made
    } catch (PDOException $e) {
            error_log("updatePost error: " . $e->getMessage());
            return false;
        }
     }

    //Delete Manufacturer
     public static function deletePost($id){
        $pdo = Database::connect();
        $dPost = $pdo->prepare(" DELETE FROM manufactueres WHERE id=?");
        $dPost -> execute([$id]);
        return $dPost;
    }
}
