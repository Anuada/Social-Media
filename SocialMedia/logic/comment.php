<?php

include "../util/DbHelper.php";
include "../util/PromptHandler.php";

$db = new DbHelper();
$pm = new PromptHandler();

if (isset($_POST["submit"])) {
    $userId = $_POST["userId"];
    $postId = $_POST["postId"];
    $comment = $_POST["comment"];
    if (!empty(trim($userId)) && !empty(trim($postId)) && !empty(trim($comment))) {
        $comment = $db->addRecord("comment", ["userId" => $userId,"postId"=> $postId,"commentContent"=> $comment]);
        if ($comment > 0) {
            header("Location: ../page/post.php?id=" . $postId . "&m=" . urlencode($pm->successComment()));
        } else {
            header("Location: ../page/post.php?id=" . $postId . "&m=" . urlencode($pm->errorComment()));
        }
    } else {
        header("Location: ../page/post.php?id=" . $postId . "&m=" . urlencode($pm->emptyFields()));
    }
} else {
    header("Location: ../page/post.php?id=" . $postId . "&m=" . urlencode($pm->unauthorizedAccess()));
}