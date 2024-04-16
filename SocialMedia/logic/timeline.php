<?php

include "../util/DbHelper.php";
include "../util/PromptHandler.php";

$db = new DbHelper();
$pm = new PromptHandler();

if (isset($_POST["submit"])) {
    $action = $_POST["submit"];
    $userId = $_POST["userId"];
    $post = $_POST["post"];
    $postId = $_POST["postId"];

    if (!empty(trim($post))) {
        if(empty($postId)) {
            $createPost = $db->addRecord('post', ["userId" => $userId, "postContent"=> $post]);
            if ($createPost > 0) {
                header("Location: ../page/timeline.php?m=" . urlencode($pm->postCreate()));
            } else {
                header("Location: ../page/timeline.php?m=" . urlencode($pm->noPostCreate()));
            }
        } else {
            $editPost = $db->updateRecord("post", ["postId"=> $postId,"postContent"=> $post]);
            if ($editPost > 0) {
                header("Location: ../page/timeline.php?m=" . urlencode($pm->postUpdate()));
            } else {
                header("Location: ../page/timeline.php?m=" . urlencode($pm->noPostUpdate()));
            }
        }
    } else {
        header("Location: ../page/timeline.php?m=" . urlencode($pm->emptyFields()));
    }
} elseif (isset($_GET["delete"])) {
    $postId = $_GET["delete"];
    $deletePost = $db->deleteRecord("post", ["postId"=> $postId]);
    if ($deletePost > 0) {
        header("Location: ../page/timeline.php?m=" . urlencode($pm->postDelete()));
    } else{
        header("Location: ../page/timeline.php?m=" . urlencode($pm->noPostDelete()));
    }
} else {
    header("Location: ../page/timeline.php?m=" . urlencode($pm->unauthorizedAccess()));
}


