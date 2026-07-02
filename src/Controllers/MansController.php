<?php
namespace App\Controllers;

use App\Models\Manufacturer;

class MansController{

    public function store($data){
        $name = trim(htmlspecialchars($data['name']));
        $country = trim(htmlspecialchars($data['country']));

        if($name AND $country){
            $inserted = Manufacturer::createPost($name, $country);
        
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

        if($name AND $country){
            $updated = Manufacturer::updatePost($name, $country, $id);
            if($updated){
                return true;
            }else{
                return false;
            }
        }
    }
}





?>