<?php
namespace App\Controllers;

use App\Models\Manufacturer;

class MansController{

    public function store($data){
        $name = trim(htmlspecialchars($data['name']));
        $country = trim(htmlspecialchars($data['country']));
        $logo_url = trim(htmlspecialchars($data['logo_url']));
        if($name AND $country){
            $inserted = Manufacturer::createPost($name, $country, $logo_url);
        
            if($inserted){
                return true;
            }else{
                return false;
            }
        }
    }

    public function update($data, $id){
        $name = trim(htmlspecialchars($data['name']));
        $country = trim(htmlspecialchars($data['country']));
        $logo_url = trim(htmlspecialchars($data['logo_url']));
        if($name AND $country){
            $updated = Manufacturer::updatePost($name, $country, $logo_url, $id);
            if($updated){
                return true;
            }else{
                return false;
            }
        }
    }
}





?>