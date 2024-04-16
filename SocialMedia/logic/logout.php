<?php
session_start();
include "../util/PromptHandler.php";
include "../util/DbHelper.php";
$db = new DbHelper();
$pm = new PromptHandler();
$user = $db->getRecord("users", ["userId" => $_SESSION["userId"]]);
session_unset();
session_destroy();
header("Location: ../page/login.php?m=" . urlencode($pm->logout($user["userFName"])));
exit();