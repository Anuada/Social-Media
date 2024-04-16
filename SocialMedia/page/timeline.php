<?php 
session_start();

include "../util/DbHelper.php";
include "../util/PromptHandler.php";

$db = new DbHelper();
$pm = new PromptHandler();

$allpostsbyuser = $db->user_post($_SESSION["userId"]);
$user = $db->getRecord("users", ["userId" => $_SESSION["userId"]]);

if (!isset($_SESSION["userId"])){
    header("Location: ../page/login.php?m=" . urlencode($pm->loginFirst()));
}
?>

<?php $title = "Timeline | " . $user["userFName"] . " " . $user["userLName"]?>

<?php ob_start() ?>
<h3 onclick="displayControl('createPost','block')" class="w3-margin-right" style="cursor: pointer; font-weight: bold">+ CREATE POST </h3>
<?php $createPost = ob_get_clean() ?>

<?php ob_start() ?>

<?php if($allpostsbyuser != null): ?>
    <?php foreach($allpostsbyuser as $post): ?>
        <div class="w3-card-2 w3-margin-bottom" style="width: 40%; margin: auto; cursor: pointer">
            <div class="w3-panel w3-blue">
                <span class="w3-left"><h6><?php echo date("F j, Y", strtotime($post["datePosted"])) ?></h6></span>
                <span class="w3-right">
                    <button class="w3-button w3-blue" onclick="fillFields('<?php echo $post["postId"] ?>','<?php echo $post["postContent"] ?>')">&#9998;</button>
                    <button class="w3-button w3-blue w3-hover-red" onclick="deletePost('<?php echo $post["postId"] ?>')">&times;</button>
                </span>
            </div>
            <div class="w3-padding-large" title="View Post" onclick="redirectPost('<?php echo $post["postId"] ?>')" style="cursor: pointer">
                <?php echo $post["postContent"] ?>
            </div>
            <div class="w3-panel w3-blue">
                <span class="w3-right"><?php echo $post["commentCount"] ?> <?php echo ($post["commentCount"] > 1) ? "comments" : "comment" ?></span>
            </div>
        </div>
    <?php endforeach; ?>
<?php else:?>
    <span class="w3-display-middle"><?php echo strtoupper($pm->noPosts()) ?></span>
<?php endif;?>

<div class="w3-card-2" style="width: 40%; margin: auto">
</div>

<!-- Modal Area -->
<div class="w3-modal" id="createPost">
    <div class="w3-modal-content w3-animate-top w3-card-2" style="width: 40%; margin: auto">
        <div class="w3-panel w3-blue">
            <span class="w3-right" style="cursor: pointer;" onclick="closeModal('createPost', 'post',['postId'])"><h4>&times;</h4></span>
            <h3>CREATE POST</h3>
        </div>
        <div class="w3-padding-large">
            <form action="../logic/timeline.php" method="post">
                <input type="hidden" name="userId" id="userId" value="<?php echo $_SESSION["userId"]?>">
                <input type="hidden" name="postId" id="postId">
                <p>
                    <textarea name="post" id="post" cols="30" rows="10" class="w3-input w3-border" placeholder="What's on your mind?"></textarea>
                    <span class="w3-margin-top w3-right"><input type="submit" name="submit" value="Post" class="w3-btn w3-blue w3-round"></span>
                </p>
                <p style="margin-bottom: 60px"></p>
            </form>
        </div>
    </div>
</div>

<?php $page_content = ob_get_clean() ?>

<?php require_once "../shared/Layout.php" ?>