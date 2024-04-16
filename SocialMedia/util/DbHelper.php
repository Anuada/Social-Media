<?php

class DbHelper {
    private $hostname = "127.0.0.1";
    private $username = "root";
    private $password = "";
    private $database = "socmed";
    private $conn;

    public function __construct() {
        $this->conn = new mysqli($this->hostname, $this->username, $this->password, $this->database);
    }

    public function __destruct() {
        $this->conn->close();
    }

    public function getAllRecords($table) {
        $rows = [];
        $sql = "SELECT * FROM `$table`";
        $query = $this->conn->query($sql);
        while ($row = $query->fetch_assoc()) {
            $rows[] = $row;
        }
        return $rows;
    }

    public function getAllRecords_v2($table, $args) {
        $rows = [];
        $arg = [];
        $keys = array_keys($args);
        $values = array_values($args);
        for ($i=0; $i < count($keys); $i++) { 
            $arg[] = "`" . $keys[$i] . "` = '" . $values[$i] . "'";
        }
        $condition = implode(" AND ", $arg);
        $sql = "SELECT * FROM `$table` WHERE $condition";
        $query = $this->conn->query($sql);
        while ($row = $query->fetch_assoc()) {
            $rows[] = $row;
        }
        return $rows;
    }

    public function getRecord($table, $args) {
        $arg = [];
        $keys = array_keys($args);
        $values = array_values($args);
        for ($i=0; $i < count($keys); $i++) { 
            $arg[] = "`" . $keys[$i] . "` = '" . $values[$i] . "'";
        }
        $condition = implode(" AND ", $arg);
        $sql = "SELECT * FROM `$table` WHERE $condition";
        $query = $this->conn->query($sql);
        $row = $query->fetch_assoc();
        return $row;
    }

    public function deleteRecord($table, $args) {
        $arg = [];
        $keys = array_keys($args);
        $values = array_values($args);
        for ($i=0; $i < count($keys); $i++) { 
            $arg[] = "`" . $keys[$i] . "` = '" . $values[$i] . "'";
        }
        $condition = implode(" AND ", $arg);
        $sql = "DELETE FROM `$table` WHERE $condition";
        $this->conn->query($sql);
        return $this->conn->affected_rows;
    }

    public function addRecord($table, $args) {
        $keys = array_keys($args);
        $values = array_values($args);
        $key = implode("`, `", $keys);
        $value = implode("', '", $values);
        $sql = "INSERT INTO `$table` (`$key`) VALUES ('$value')";
        $this->conn->query($sql);
        return $this->conn->affected_rows;
    }
    public function updateRecord($table, $args) {
        $arg = [];
        $keys = array_keys($args);
        $values = array_values($args);
        for ($i=1; $i < count($keys); $i++) { 
            $arg[] = "`" . $keys[$i] . "` = '" . $values[$i] . "'";
        }
        $set = implode(", ", $arg);
        $sql = "UPDATE `$table` SET $set WHERE `$keys[0]` = '$values[0]'";
        $this->conn->query($sql);
        return $this->conn->affected_rows;
    }

    public function posts(){
        $rows = [];
        $sql = "SELECT post.postId, users.userFName, users.userLName, post.datePosted, post.postContent, COUNT(comment.postId) AS commentCount 
                FROM post 
                JOIN users ON post.userId = users.userId 
                LEFT JOIN comment ON post.postId = comment.postId 
                GROUP BY post.postId, users.userFName, users.userLName, post.datePosted, post.postContent
                ORDER BY post.datePosted DESC";
        $query = $this->conn->query($sql);
        while ($row = $query->fetch_assoc()) {
            $rows[] = $row;
        }
        return $rows;
    }

    public function user_post($userId) {
        $rows = [];
        $sql = "SELECT post.postId, post.datePosted, post.postContent, COUNT(comment.postId) AS commentCount 
                FROM post 
                LEFT JOIN comment ON post.postId = comment.postId 
                WHERE post.userId = $userId GROUP BY post.postId";
        $query = $this->conn->query($sql);
        while ($row = $query->fetch_assoc()) {
            $rows[] = $row;
        }
        return $rows;
    }

    public function get_a_post($postId) {
        $sql = "SELECT post.postId, users.userFName, users.userLName, post.datePosted, post.postContent, COUNT(comment.postId) AS commentCount 
                FROM post 
                JOIN users ON post.userId = users.userId 
                LEFT JOIN comment ON post.postId = comment.postId 
                WHERE post.postId = '$postId'
                GROUP BY post.postId";
        $query = $this->conn->query($sql);
        $row = $query->fetch_assoc();
        return $row;
    }

    public function post_comments($postId) {
        $rows = [];
        $sql = "SELECT comment.commentId, users.userFName, users.userLName, comment.dateCommented, comment.commentContent 
                FROM comment 
                JOIN users ON comment.userId = users.userId 
                WHERE comment.postId = $postId
                ORDER BY comment.commentId DESC";
        $query = $this->conn->query($sql);
        while ($row = $query->fetch_assoc()) {
            $rows[] = $row;
        }
        return $rows;
    }
}