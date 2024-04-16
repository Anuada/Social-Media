<?php 
session_start();

include "../util/PromptHandler.php";

$pm = new PromptHandler();

if (isset($_SESSION["userId"])){
    header("Location: ../page/");
}
?>

<?php $title = "Login" ?>

<?php ob_start() ?>

<div class="w3-panel w3-round-xlarge w3-card-4 w3-animate-top" style="width: 40%; margin: auto; margin-top: 40px">
    <form action="../logic/login.php" method="POST">
        <p>
            <label for="email">Email</label>
            <input type="email" name="email" id="email" class="w3-input w3-border">
        </p>
        <p>
            <label for="password">PASSWORD</label>
            <input type="password" name="password" id="password" class="w3-input w3-border">
        </p>
        <p>
            <input type="submit" name="login" id="login" value="LOGIN" class="w3-button w3-block w3-blue w3-hover-orange">
        </p>
    </form>
        <p id="create_account" class="w3-center"> Create Account? <a href="./register.php" class="w3-text-blue w3-hover-text-orange" style="text-decoration: none">Register</a> </p>
</div>

<?php $page_content = ob_get_clean() ?>

<?php require_once "../shared/Layout.php" ?>