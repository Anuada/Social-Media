<?php

include "../util/DbHelper.php";
include "../util/PromptHandler.php";

$db = new DbHelper();
$pm = new PromptHandler();

if (isset($_POST["register"])) {
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $con_password = $_POST["con_password"];

    if(!empty(trim($fname)) && !empty(trim($lname)) && !empty(trim($email)) && !empty(trim($password)) && !empty(trim($con_password))) {
        if($password == $con_password) {
            $register_user = $db->addRecord("users", ["userFName" => $fname, "userLName"=> $lname,"email" => $email,"password"=> $password]);
            if($register_user > 0) 
            {
                header("Location: ../page/login.php?m=" . urlencode($pm->successfulRegister()));
            } else {
                header("Location: ../page/login.php?m=" . urlencode($pm->errorRegister()));
            }
        } else {
            header("Location: ../page/register.php?m=" . urlencode($pm->passwordMatch()));
        }
    } else {
        header("Location: ../page/register.php?m=" . urlencode($pm->emptyFields()));
    }
} else {
    header("Location: ../page/register.php?m=" . urlencode($pm->unauthorizedAccess()));
}