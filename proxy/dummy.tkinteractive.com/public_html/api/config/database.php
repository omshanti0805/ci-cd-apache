<?php
class Database{
 
    // specify your own database credentials
    private $host = "114.143.179.50";
    private $db_name = "api_db";
    private $username = "tkiuser";
    private $password = "ultimate";
    private $port = "3307";

    public $conn;
 
    // get the database connection
    public function getConnection(){
 
        $this->conn = null;
        $this->conn = new PDO("mysql:host=" . $this->host . ";port=" . $this->port .";dbname=" . $this->db_name, $this->username, $this->password);
        $this->conn->exec("set names utf8");
 
        // try{
        // }catch(PDOException $exception){
        //     echo "Connection error: " . $exception->getMessage();
        // }
 
        return $this->conn;
    }
}
?>


