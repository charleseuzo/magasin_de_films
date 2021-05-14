<?php
  class Connection {
    private $servername;
    private $username;
    private $password;
    private $dbName;
    private $conn;

    function __construct($servername, $username, $password, $dbName) {
      $this->servername=$servername;
      $this->username=$username;
      $this->password=$password;
      $this->dbName=$dbName;
    }

    function getConn() {
      return $this->conn;
    }

    function connect() {
      try {
        $dns = "mysql:host=$this->servername;dbname=$this->dbName";
        $options = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8", PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
        $this->conn = new PDO( $dns, $this->username, $this->password, $options );
      }
      catch ( Exception $e ) {
        echo "Probleme de connexion au serveur de bd";
        exit();
      }
    }
  }
