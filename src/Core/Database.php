<?php

namespace App\Core;

use PDOException;
use PDO;

class Database{
    


    //set private static property
    private static $pdo;

    public static function connect(){

        if(!self::$pdo){
            try{
                    self::$pdo = new PDO("mysql:host=localhost;dbname=vehicle_database;", "root", "");
            }
            catch(PDOException $e){
                die("something is wrong with db connection");
            }
            
        }
        return self::$pdo;
    }

}



