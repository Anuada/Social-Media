<?php 
session_start();

include "../util/DbHelper.php";
include "../util/PromptHandler.php";

$db = new DbHelper();
$pm = new PromptHandler();


if (!isset($_SESSION["userId"])){
    header("Location: ../page/login.php?m=" . urlencode($pm->loginFirst()));
    exit();
}

if (!isset($_GET["id"]) || empty(trim($_GET["id"]))){
    header("Location: ../page/");
    exit();
}

$post = $db->get_a_post($_GET["id"]);
$comments = $db->post_comments($_GET["id"]);

if (empty($post)) {
    header("Location: ../page/?m=" . urlencode($pm->noPost()));
    exit();
}

?>

<?php $title = "Post" ?>

<?php ob_start() ?>

<div class="w3-card-2 w3-margin-bottom" style="width: 40%; margin: auto;">
    <div class="w3-panel w3-blue">
        <span class="w3-right"><h6><?php echo date("F j, Y", strtotime($post["datePosted"])) ?></h6></span>
        <h5><?php echo $post["userFName"] . " " . $post["userLName"] ?></h5>
    </div>
    <div class="w3-padding-large">
        <?php echo $post["postContent"] ?>
    </div>
    <div class="w3-panel w3-blue">
        <span class="w3-right"><?php echo $post["commentCount"] ?> <?php echo ($post["commentCount"] > 1) ? "comments" : "comment" ?></span>
    </div>
</div>
<div class="w3-card-2 w3-blue" style="width: 40%; margin: auto;"><span class="w3-right w3-margin-right" style="cursor: pointer" onclick="displayControl('createComment','block')">+ADD COMMENT</span><h5 class="w3-margin-left">COMMENTS</h5></div>
<?php if($comments != null): ?>
    <?php foreach($comments as $comment): ?>
        <div class="w3-card-2 w3-margin-bottom" style="width: 40%; margin: auto;">
            <div class="w3-panel w3-blue">
                <span class="w3-right"><h6><?php echo date("F j, Y", strtotime($comment["dateCommented"])) ?></h6></span>
                <h5><?php echo $comment["userFName"] . " " . $comment["userLName"] ?></h5>
            </div>
            <div class="w3-padding-large">
                <?php echo $comment["commentContent"] ?>
            </div>
        </div>
    <?php endforeach; ?>
<?php else: ?>
    <span class="w3-display-middle"><?php echo strtoupper($pm->noComment()) ?></span>
<?php endif; ?>

<!-- Modal Area -->
<div class="w3-modal" id="createComment">
    <div class="w3-modal-content w3-animate-top w3-card-2" style="width: 40%; margin: auto">
        <div class="w3-panel w3-blue">
            <span class="w3-right" style="cursor: pointer;" onclick="displayControl('createComment','none')"><h4>&times;</h4></span>
            <h3>COMMENT</h3>
        </div>
        <div class="w3-padding-large">
            <form action="../logic/comment.php" method="post">
                <input type="hidden" name="userId" id="userId" value="<?php echo $_SESSION["userId"]?>">
                <input type="hidden" name="postId" id="postId" value="<?php echo $_GET["id"] ?>">
                <p>
                    <textarea name="comment" id="comment" cols="30" rows="10" class="w3-input w3-border" placeholder="What's on your mind?"></textarea>
                    <span class="w3-margin-top w3-right"><input type="submit" name="submit" value="Create" class="w3-btn w3-blue w3-round"></span>
                </p>
                <p style="margin-bottom: 60px"></p>
            </form>
        </div>
    </div>
</div>

<?php $page_content = ob_get_clean() ?>

<?php require_once "../shared/Layout.php" ?>