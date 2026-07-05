<?php
namespace App\Controllers;

use App\Models\Model;

class ModelsController{

    public function store($data){
        $manufacturer_id = trim(htmlspecialchars($data['manufacturer_id']));
        $model_name = trim(htmlspecialchars($data['model_name']));
        $class_id = trim(htmlspecialchars($data['class_id']));
        $release_year = trim(htmlspecialchars($data['release_year']));
        $battery_capacity = trim(htmlspecialchars($data['battery_capacity']));
        $powertrain_id = trim(htmlspecialchars($data['powertrain_id']));
        $cltc_range = trim(htmlspecialchars($data['cltc_range']));
        $e_power = trim(htmlspecialchars($data['e_power']));
        $e_torque = trim(htmlspecialchars($data['e_torque']));
        $top_speed = trim(htmlspecialchars($data['top_speed']));
        $zero_to_hundred = trim(htmlspecialchars($data['zero_to_hundred']));
        $drive_type_id = trim(htmlspecialchars($data['drive_type_id']));
        $price = trim(htmlspecialchars($data['price']));
        $cell_shape = trim(htmlspecialchars($data['cell_shape']));
        $cooling_method = trim(htmlspecialchars($data['cooling_method']));
        $cell_chemistry = trim(htmlspecialchars($data['cell_chemistry']));
        $fast_charging_time = trim(htmlspecialchars($data['fast_charging_time']));
        $ac_charging_time = trim(htmlspecialchars($data['ac_charging_time']));
        $warranty_years = trim(htmlspecialchars($data['warranty_years']));
        $img_url = trim(htmlspecialchars($data['img_url']));
        
        if($manufacturer_id AND $model_name AND $class_id AND $release_year AND $battery_capacity AND $powertrain_id AND $cltc_range AND $e_power AND $e_torque AND $top_speed AND $zero_to_hundred AND $drive_type_id AND $price AND $cell_shape AND $cooling_method AND $cell_chemistry AND $fast_charging_time AND $ac_charging_time AND $warranty_years AND $img_url){
        $inserted = Model::createPost($manufacturer_id, $model_name, $class_id, $release_year, $battery_capacity, $powertrain_id, $cltc_range, $e_power, $e_torque, $top_speed, $zero_to_hundred, $drive_type_id, $price, $cell_shape, $cooling_method, $cell_chemistry, $fast_charging_time, $ac_charging_time, $warranty_years, $img_url);
        
            if($inserted){
                return true;
            }else{
                return false;
            }
        }
    }

    public function update($data, $id){
        $manufacturer_id = trim(htmlspecialchars($data['manufacturer_id']));
        $model_name = trim(htmlspecialchars($data['model_name']));
        $class_id = trim(htmlspecialchars($data['class_id']));
        $release_year = trim(htmlspecialchars($data['release_year']));
        $battery_capacity = trim(htmlspecialchars($data['battery_capacity']));
        $powertrain_id = trim(htmlspecialchars($data['powertrain_id']));
        $cltc_range = trim(htmlspecialchars($data['cltc_range']));
        $e_power = trim(htmlspecialchars($data['e_power']));
        $e_torque = trim(htmlspecialchars($data['e_torque']));
        $top_speed = trim(htmlspecialchars($data['top_speed']));
        $zero_to_hundred = trim(htmlspecialchars($data['zero_to_hundred']));
        $drive_type_id = trim(htmlspecialchars($data['drive_type_id']));
        $price = trim(htmlspecialchars($data['price']));
        $cell_shape = trim(htmlspecialchars($data['cell_shape']));
        $cooling_method = trim(htmlspecialchars($data['cooling_method']));
        $cell_chemistry = trim(htmlspecialchars($data['cell_chemistry']));
        $fast_charging_time = trim(htmlspecialchars($data['fast_charging_time']));
        $ac_charging_time = trim(htmlspecialchars($data['ac_charging_time']));
        $warranty_years = trim(htmlspecialchars($data['warranty_years']));
        $img_url = trim(htmlspecialchars($data['img_url']));

        if($manufacturer_id AND $model_name AND $class_id AND $release_year AND $battery_capacity AND $powertrain_id AND $cltc_range AND $e_power AND $e_torque AND $top_speed AND $zero_to_hundred AND $drive_type_id AND $price AND $cell_shape AND $cooling_method AND $cell_chemistry AND $fast_charging_time AND $ac_charging_time AND $warranty_years AND $img_url ){
            $updated = Model::updatePost($manufacturer_id, $model_name, $class_id, $release_year, $battery_capacity, $powertrain_id, $cltc_range, $e_power, $e_torque, $top_speed, $zero_to_hundred, $drive_type_id, $price, $cell_shape, $cooling_method, $cell_chemistry, $fast_charging_time, $ac_charging_time, $warranty_years, $img_url, $id);
            if($updated){
                return true;
            }else{
                return false;
            }
        }
    }
}





?>