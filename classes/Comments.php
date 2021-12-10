<?php

include 'Database.php';

class Comments
{

    public $conn;

    public function __construct()
    {
        $database = new Database();
        $this->conn = $database->connect();
    }

    //Get the latest comments from the comments table in database
    public function getAllComments()
    {
        $sql = $this->conn->prepare("SELECT * FROM comments ORDER BY date DESC");
        $sql->execute();

        return $sql->fetchAll();
    }

    //Add comment to comments table in database
    public function createComment($fullname, $email, $message)
    {
        $sql = $this->conn->prepare("INSERT into comments (full_name, email, message, date) VALUES (:fullname,:email,:message,:date)");
        $sql->bindParam(':fullname', $fullname);
        $sql->bindParam(':email', $email);
        $sql->bindParam(':message', $message);
        date_default_timezone_set('Europe/Amsterdam');
        $date = date("Y-m-d H:i:s");
        $sql->bindParam(':date', $date);
        $sql->execute();

        return $sql;
    }

}