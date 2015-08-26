<?php
    require_once 'db_conf.php';
    class User
    {
        /*
        method for conection
        */
        public function connect(){
            return $conn = new PDO('mysql:host='. DB_HOST .';dbname='. DB_NAME, DB_USER, DB_PASS);
        }
        /*
        method for checking if user alredy exists in database
        */
        public function checkUser($conn, $username){
            $stmt = $conn->prepare("select * from registrants where username = :username");
            $stmt->bindValue(':username', $username, PDO::PARAM_STR);
            $stmt->execute();
            if($stmt->fetchObject()){
                return true;
            }else{
                return false;
            }
        }
        /*
        method for creating a new user
        */
        public function createUser($conn, $first_name, $last_name, $date_of_birth, $country, $user_name, $pass, $email)
        {
            $query = $conn->prepare("insert into registrants (first_name, last_name, birth, country, username, pass, email) values ('{$first_name}', '{$last_name}', '{$date_of_birth}', '{$country}', '{$user_name}', '{$pass}', '{$email}')");
            $query->execute();
        }
        /*
        method for login
        */
        public function loginUser()
        {
            //body
        }
        /*
        method for deliting
        */
        public function deleteUser()
        {
            //body
        }
    }