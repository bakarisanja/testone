<?php
/**
 * Step 1: Require the Slim Framework
 *
 * If you are not using Composer, you need to require the
 * Slim Framework and register its PSR-0 autoloader.
 *
 * If you are using Composer, you can skip this step.
 */
require 'Slim/Slim.php';
include_once 'lib/functions.php';
/*
require user
*/
require_once 'Slim/lib/User.php';
\Slim\Slim::registerAutoloader();

/**
 * Step 2: Instantiate a Slim application
 *
 * This example instantiates a Slim application using
 * its default settings. However, you will usually configure
 * your Slim application now by passing an associative array
 * of setting names and values into the application constructor.
 */
$app = new \Slim\Slim();

/**
 * Step 3: Define the Slim application routes
 *
 * Here we define several Slim application routes that respond
 * to appropriate HTTP request methods. In this example, the second
 * argument for `Slim::get`, `Slim::post`, `Slim::put`, `Slim::patch`, and `Slim::delete`
 * is an anonymous function.
 */

// GET route
$app->get(
    '/',
    function () {
        //instance of User class
        $u = new User();
        $conn = $u->connect();
        $u->createUser($conn,'milos', 'babic', '1988-04-15', 'Serbia', 'baki', '123', 'a@a.a');
    }
);

// GET rerister/ registration form
$app->get(
    '/register',
    function() {
        echo"
        <form action='' method='post'>
            <label>first name</label><br />
            <input type='text' name='txt_name' /><br />
            <label>last name</label><br />
            <input type='text' name='txt_surname' /><br />
            <label>date of birth (DD/MM/YYYY)</label><br />
            <input type='text' name='txt_day' /><input type='text' name='txt_mounth' /><input type='text' name='txt_year' /><br />
            <label>coutry</label><br />
            <input type='text' name='txt_country' /><br />
            <label>username</label><br />
            <input type='text' name='txt_username' /><br />
            <label>pasword</label><br />
            <input type='password' name='txt_pass' /><br />
            <label>email</label><br />
            <input type='text' name='txt_email' /><br />
            <input type='submit' name='btn_register' value='register' />
        </form>
        ";
    }
);

// POST route
$app->post(
    '/register',
    function () {
        //db for later check of existing username
        $u = new User();
        $conn = $u->connect();


        //cehck if some post aprams are missing
        if(empty($_POST['first_name']) 
            || empty($_POST['last_name']) 
            || empty($_POST['date_of_birth'])
            || empty($_POST['country'])
            || empty($_POST['username'])
            || empty($_POST['password'])
            || empty($_POST['email']))
        {
            returnError('Missing or empty post parameters.');
        }

        //assigning post paramms to variables
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $date_of_birth = $_POST['date_of_birth'];
        $country = $_POST['date_of_birth'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $email = $_POST['email'];

        //validation fo data
        if(!ctype_alpha($first_name)) returnError('All first_name chars must be english letters.');
        if(!ctype_alpha($last_name)) returnError('All last_name chars must be english letters.');
        if(!preg_match("/[0-9]{2}\/[0-9]{2}\/[0-9]{4}/", $date_of_birth)) returnError('Invalid date format.');
       
        //M O J      D E O      A P L I K A C I J E
        
    }
);

// PUT route
$app->put(
    '/put',
    function () {
        echo 'This is a PUT route';
    }
);

// PATCH route
$app->patch('/patch', function () {
    echo 'This is a PATCH route';
});

// DELETE route
$app->delete(
    '/delete',
    function () {
        echo 'This is a DELETE route';
    }
);

/**
 * Step 4: Run the Slim application
 *
 * This method should be called last. This executes the Slim application
 * and returns the HTTP response to the HTTP client.
 */
$app->run();
