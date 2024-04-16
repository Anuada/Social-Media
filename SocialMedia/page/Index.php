<?php 
session_start();

include "../util/DbHelper.php";
include "../util/PromptHandler.php";

$db = new DbHelper();
$pm = new PromptHandler();
$allposts = $db->posts();
if (!isset($_SESSION["userId"])){
    header("Location: ../page/login.php?m=" . urlencode($pm->loginFirst()));
}
?>

<?php $title = "News Feed" ?>

<?php ob_start() ?>

<?php if($allposts != null): ?>
    <?php foreach($allposts as $post): ?>
        <div class="w3-card-2 w3-margin-bottom" style="width: 40%; margin: auto; cursor: pointer" title="View Post" onclick="redirectPost('<?php echo $post["postId"] ?>')">
            <div class="w3-panel w3-blue">
                <span class="w3-right"><h6><?php echo date("F j, Y", strtotime($post["datePosted"]))  ?></h6></span>
                <h5><?php echo $post["userFName"] . " " . $post["userLName"] ?></h5>
            </div>
            <div class="w3-padding-large">
                <?php echo $post["postContent"] ?>
            </div>
            <div class="w3-panel w3-blue">
                <span class="w3-right"><?php echo $post["commentCount"] ?> <?php echo ($post["commentCount"] > 1) ? "comments" : "comment" ?></span>
            </div>
        </div>
    <?php endforeach; ?>
<?php else: ?>
    <div class="w3-display-middle">
        <?php echo $pm->noPosts() ?>
    </div>
<?php endif; ?>

<?php $page_content = ob_get_clean() ?>

<?php require_once "../shared/Layout.php" ?>