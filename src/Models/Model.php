<?php

namespace App\Models;

use PDO;
use PDOException;
use App\Core\Database;

class Model{
    //get all models
    public static function getAllPosts(){
        $pdo = Database::connect();
        $allPosts = $pdo->prepare("SELECT * FROM models");
        $allPosts -> execute();
        return $allPosts -> fetchAll(PDO::FETCH_ASSOC);
    }

    //fetching one model
    public static function getSinglePost($id){
        $pdo = Database::connect();
        $singlePost = $pdo->prepare("SELECT * FROM models WHERE id=?");
        $singlePost -> execute([$id]);
        return $singlePost -> fetch(PDO::FETCH_ASSOC);
    }

    //Creating one model
    public static function createPost($manufacturer_id, $model_name, $class_id, $release_year, $battery_capacity, $powertrain_id, $cltc_range, $e_power, $e_torque, $top_speed, $zero_to_hundred, $drive_type_id, $price, $cell_shape, $cooling_method, $cell_chemistry, $fast_charging_time, $ac_charging_time, $warranty_years ) {
    try {
        $pdo = Database::connect();
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "HEREEE";
        $sql = "INSERT INTO models (manufacturer_id, model_name, class_id, release_year, battery_capacity, powertrain_id, cltc_range, e_power, e_torque, top_speed, zero_to_hundred, drive_type_id, price, cell_shape, cooling_method, cell_chemistry, fast_charging_time, ac_charging_time, warranty_years) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $pdo->prepare($sql);
        
        // Execute returns true on success, false on failure
        $success = $stmt->execute([$manufacturer_id, $model_name, $class_id, $release_year, $battery_capacity, $powertrain_id, $cltc_range, $e_power, $e_torque, $top_speed, $zero_to_hundred, $drive_type_id, $price, $cell_shape, $cooling_method, $cell_chemistry, $fast_charging_time, $ac_charging_time, $warranty_years]);
        
        // Optionally, return the new ID if needed
        return $success; // boolean
    }   catch (PDOException $e) {
        error_log("createPost error: " . $e->getMessage());
        return false;
    }
}

    //Updating posts
     public static function updatePost($manufacturer_id, $model_name, $class_id, $release_year, $battery_capacity, $powertrain_id, $cltc_range, $e_power, $e_torque, $top_speed, $zero_to_hundred, $drive_type_id, $price, $cell_shape, $cooling_method, $cell_chemistry, $fast_charging_time, $ac_charging_time, $warranty_years, $id){
        try{
        $pdo = Database::connect();
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = $pdo->prepare("UPDATE models SET manufacturer_id = ?, model_name = ?, class_id = ?, release_year = ?, battery_capacity = ?, powertrain_id = ?, cltc_range = ?, e_power = ?, e_torque = ?, top_speed = ?, zero_to_hundred = ?, drive_type_id = ?, price = ?, cell_shape = ?, cooling_method = ?, cell_chemistry = ?, fast_charging_time = ?, ac_charging_time = ?, warranty_years = ? WHERE id = ?");
        $success = $stmt->execute([$manufacturer_id, $model_name, $class_id, $release_year, $battery_capacity, $powertrain_id, $cltc_range, $e_power, $e_torque, $top_speed, $zero_to_hundred, $drive_type_id, $price, $cell_shape, $cooling_method, $cell_chemistry, $fast_charging_time, $ac_charging_time, $warranty_years, $id]);
        
        // Check if any row was actually updated
        if ($success && $stmt->rowCount() > 0) {
            return true;
        }
        
        return false; // No row found or no changes made
    } catch (PDOException $e) {
            error_log("updatePost error: " . $e->getMessage());
            return false;
        }
     }

    //Delete posts
     public static function deletePost($id){
        $pdo = Database::connect();
        $dPost = $pdo->prepare(" DELETE FROM manufactueres WHERE id=?");
        $dPost -> execute([$id]);
        return $dPost;
    }
}
