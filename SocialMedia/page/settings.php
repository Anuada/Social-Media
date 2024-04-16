<?php 
session_start();

include "../util/DbHelper.php";
include "../util/PromptHandler.php";

$db = new DbHelper();
$pm = new PromptHandler();

if (!isset($_SESSION["userId"])){
    header("Location: ../page/login.php?m=" . urlencode($pm->loginFirst()));
}
?>

<?php $title = "Settings" ?>

<?php ob_start() ?>

<div class="w3-row-padding w3-margin-top">
    <div class="w3-half">
        <div class="w3-panel w3-blue"><h5>Account Info</h5></div>
        <form action="../logic/account.php" method="post">
            <input type="hidden" name="userId" id="userId">
            <p>
                <label for="fname">First Name</label>
                <input type="text" name="fname" id="fname" class="w3-input w3-border">
            </p>
            <p>
                <label for="lname">Last Name</label>
                <input type="text" name="lname" id="lname" class="w3-input w3-border">
            </p>
            <p>
                <label for="email">Email</label>
                <input type="email" name="email" id="email" class="w3-input w3-border">
            </p>
            <p>
            <input type="submit" name="updateInfo" id="updateInfo" value="Update Info" class="w3-button w3-block w3-blue w3-hover-orange">
            </p>
        </form>
    </div>
    <div class="w3-half">
        <div class="w3-panel w3-blue"><h5>Change Password</h5></div>
        <form action="../logic/account.php" method="post">
            <input type="hidden" name="idUser" id="idUser">
            <p>
                <label for="password">New Password</label>
                <input type="password" name="password" id="password" class="w3-input w3-border">
            </p>
            <p>
                <label for="con_password">Confirm Password</label>
                <input type="password" name="con_password" id="con_password" class="w3-input w3-border">
            </p>
            <p>
            <input type="submit" name="changePass" id="changePass" value="Change Password" class="w3-button w3-block w3-blue w3-hover-orange">
            </p>
        </form>
    </div>
</div>

<div class="w3-card-2 w3-margin-top" style="width: 40%;margin: auto">
    <div class="w3-panel w3-blue"><h5>Account</h5></div>
    <div class="w3-padding-large">
        <table style="margin-left: 130px">
            <tr>
                <td>Delete Account?</td>
                <td><button class="w3-button w3-red w3-round" onclick="deleteAccount('<?php echo $_SESSION["userId"] ?>')">Delete</button></td>
            </tr>
        </table>
        <div class="w3-margin-bottom"></div>
    </div>
</div>

<?php $page_content = ob_get_clean() ?>

<?php ob_start() ?>
    <?php
    $acc_info = $db->getRecord("users", ["userId" => $_SESSION["userId"]]);
    ?>
    <script>
        document.getElementById("userId").value="<?php echo $_SESSION["userId"] ?>";
        document.getElementById("idUser").value="<?php echo $_SESSION["userId"] ?>";
        document.getElementById("fname").value="<?php echo $acc_info["userFName"] ?>";
        document.getElementById("lname").value="<?php echo $acc_info["userLName"] ?>";
        document.getElementById("email").value="<?php echo $acc_info["email"] ?>";
    </script>
<?php $scripts = ob_get_clean() ?>

<?php require_once "../shared/Layout.php" ?>