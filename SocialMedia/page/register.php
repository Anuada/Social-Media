<?php 
session_start();

include "../util/PromptHandler.php";

$pm = new PromptHandler();

if (isset($_SESSION["userId"])){
    header("Location: ../page/");
}
?>

<?php $title = "Register" ?>

<?php ob_start() ?>

<div class="w3-panel w3-round-xlarge w3-card-4 w3-animate-top" style="width: 40%; margin: auto; margin-top: 40px">
    <form action="../logic/register.php" method="POST">
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
            <label for="password">PASSWORD</label>
            <input type="password" name="password" id="password" class="w3-input w3-border">
        </p>
        <p>
            <label for="con_password">CONFIRM PASSWORD</label>
            <input type="password" name="con_password" id="con_password" class="w3-input w3-border">
        </p>
        <p>
            <input type="submit" name="register" id="register" value="REGISTER" class="w3-button w3-block w3-blue w3-hover-orange">
        </p>
    </form>
        <p class="w3-center"> Already Have Account? <a href="./login.php" class="w3-text-blue w3-hover-text-orange" style="text-decoration: none">Login</a> </p>
</div>

<?php $page_content = ob_get_clean() ?>

<?php require_once "../shared/Layout.php" ?>