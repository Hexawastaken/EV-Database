<?php
 
spl_autoload_register(function($class): void{
   
    //define prefix
    $prefix = "App\\";

    //define dir
    $dir = __DIR__  . "/src/";

    //define len
    $len = strlen($prefix);
    //strncmp
    if(strncmp($prefix, $class, $len) !== 0) return;

    //substr to get the file
    $relative_class = substr($class, $len);

    //file
    $file = $dir . str_replace("\\", "/", $relative_class) . ".php";
    if(file_exists($file)){
        require $file;
    }
}
);

use App\Core\Database;
use App\Models\Post;

Database::connect();
?>