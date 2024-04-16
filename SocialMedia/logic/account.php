<?php
session_start();
include "../util/DbHelper.php";
include "../util/PromptHandler.php";

$db = new DbHelper();
$pm = new PromptHandler();

if(isset($_POST["updateInfo"])) {
    $userId = $_POST["userId"];
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];

    if (!empty(trim($userId)) && !empty(trim($fname)) && !empty(trim($lname)) && !empty(trim($email))) {
        $update_info = $db->updateRecord("users", ["userId" => $userId, "userFName"=> $fname,"userLName"=> $lname, "email" => $email]);
        if ($update_info > 0) {
            $_SESSION["userFName"] = $fname;
            $_SESSION["userLName"] = $lname;
            $_SESSION["email"] = $email;
            header("Location: ../page/settings.php?m=" . urlencode($pm->successAccount()));
        } else {
            header("Location: ../page/settings.php?m=" . urlencode($pm->errorAccount()));
        }
    } else {
        header("Location: ../page/settings.php?m=" . urlencode($pm->emptyFields()));
    }
} elseif (isset($_POST["changePass"])) {
    $idUser = $_POST["idUser"];
    $password = $_POST["password"];
    $con_password = $_POST["con_password"];
    if (!empty(trim($password)) && !empty(trim($con_password))) {
        if($password === $con_password) {
            $change_pass = $db->updateRecord("users", ["userId"=> $idUser,"password"=> $password]);
            if ($change_pass > 0) {
                header("Location: ../page/settings.php?m=" . urlencode($pm->successChangePass()));
            }
        } else {
            header("Location: ../page/settings.php?m=" . urlencode($pm->notMatch()));
        }
    } else {
        header("Location: ../page/settings.php?m=" . urlencode($pm->emptyFields()));
    }
} elseif (isset($_GET["delete"])) {
    $userId = $_GET["delete"];
    if(!empty(trim($userId))) {
        $deleteAccount = $db->deleteRecord("users", ["userId"=> $userId]);
        if ($deleteAccount > 0) {
            session_unset();
            session_destroy();
            header("Location: ../page/login.php?m=" . urlencode($pm->successDeleteAcc()));
        } else {
            header("Location: ../page/settings.php?m=" . urlencode($pm->errorDeleteAcc()));
        }
    } else {
        header("Location: ../page/settings.php?m=" . urlencode($pm->errorDeleteAcc()));
    }
} else {
    header("Location: ../page/settings.php?m=" . urlencode($pm->unauthorizedAccess()));
}


