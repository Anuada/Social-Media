<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge, chrome=1.0, safari">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/css/w3.css">
    <title><?php echo $title ?></title>
</head>
<body>
    <div class="w3-padding-large w3-blue w3-card-2">
        <?php if(isset($_SESSION["userId"])):?>
            <div class="w3-sidebar w3-bar-block w3-card" id="sidebar" style="width:15%;right:0;display: none">
                <h3 class="w3-bar-item w3-text-black" style="cursor: pointer" onclick="displayControl('sidebar','none')"><span class="w3-right">&#9776;</span></h3>
                <a href="../page/" class="w3-bar-item w3-button w3-text-black">Newsfeed</a>
                <a href="../page/timeline.php" class="w3-bar-item w3-button w3-text-black">Timeline</a>
                <a href="../page/settings.php" class="w3-bar-item w3-button w3-text-black">Setting</a>
                <a href="../logic/logout.php" class="w3-bar-item w3-button w3-text-black">Logout</a>
            </div>
            <h3 class="w3-right" style="cursor: pointer; font-weight: bold" onclick="displayControl('sidebar','block')">&#9776;</h3>
        <?php endif; ?>
        <?php if(isset($createPost)): ?>
            <span class="w3-right"><?php echo $createPost ?></span>
        <?php endif; ?>
        <h3><?php echo strtoupper($title) ?></h3>
    </div>


    <div class="w3-container">
        <?php echo $page_content; ?>
    </div>

    <?php if(isset($_GET["m"])):?>
        <?php $m = $_GET["m"] ?>
        <script>alert('<?php echo strtoupper($m) ?>');</script>
    <?php endif; ?>

    <script src="../assets/js/all.js"></script>
    <?php
        if(isset($scripts)){
            echo $scripts;
        }
    ?>
</body>
</html>