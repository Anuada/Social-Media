<?php
session_start();

include "../util/DbHelper.php";
include "../util/PromptHandler.php";

$db = new DbHelper();
$pm = new PromptHandler();

if (isset($_POST["login"])) {
    $email = $_POST["email"];
    $password = $_POST["password"];

    if(!empty(trim($email)) && !empty(trim($password))) {
        $credential = $db->getRecord("users", array("email"=> $email,"password"=> $password));
        if ($credential != null) {
            $_SESSION["userId"] = $credential["userId"];
            $_SESSION["userFName"] = $credential["userFName"];
            $_SESSION["userLName"] = $credential["userLName"];
            $_SESSION["email"] = $credential["email"];
            header("Location: ../page/?m=" . urlencode($pm->welcomeUser($credential["userFName"])));
        } else {
            header("Location: ../page/login.php?m=" . urlencode($pm->invalidCredentials()));
        }
    } else {
        header("Location: ../page/login.php?m=" . urlencode($pm->emptyFields()));
    }
} else {
    header("Location: ../page/login.php?m=" . urlencode($pm->unauthorizedAccess()));
}