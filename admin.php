<?php
require 'rout/db.php';

$data = $_POST;
$user = [];
if (isset($_SESSION['logged_user'])) {
    $user = $_SESSION['logged_user'];
}

if (isset($data['exit'])) {
    unset($_SESSION['logged_user']);
    echo "<script>window.location.replace('/');</script>";
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Магазин кабелей</title>
    <link rel="stylesheet" href="public/css/style.css">
</head>
<body>
<header>
    <img src="public/img/logo.png" alt="">
    <nav>
        <a href="/">Home</a>
        <a href="#">About us</a>
        <a href="#">Contact</a>
        <?php if (!empty($user)) { ?>
            <a href="basket.php">Basket</a>
        <?php } ?>
        <?php if (!empty($user) && $user->group === '0') { ?>
            <a href="admin.php">Admin</a>
        <?php } ?>
    </nav>
    <?php if (!empty($user)) { ?>
        <form class="auth" method="post">
            Здравствуй <?php echo $user->name ?>
            <button name="exit">Выход</button>
        </form>
    <?php } else { ?>
        <div class="auth">
            <button id="login">Login</button>
            <button id="register">Registration</button>
        </div>
    <?php } ?>
</header>
<form class="login" id="loginBox" method="post" action="rout/login.php">
    <label for="emailLogin">
        Email
        <input type="email" id="emailLogin" name="email">
    </label>
    <label for="passwordLogin">
        Password
        <input type="password" id="passwordLogin" name="password">
    </label>
    <button>Entry</button>
</form>

<form class="registration" id="registerBox" method="post" action="rout/register.php">
    <label for="name">
        Name
        <input type="text" id="name" name="name">
    </label>
    <label for="email">
        Email
        <input type="email" id="email" name="email">
    </label>
    <label for="password">
        Password
        <input type="password" id="password" name="password">
    </label>
    <button>Registration</button>
</form>
<main>
    <div class="container">
        <form class="block addItem" method="post" action="rout/addItem.php">
            <label for="img">
                Image
                <input type="text" id="img" name="img">
            </label>
            <label for="title">
                Title card
                <input type="text" id="title" name="title">
            </label>
            <label for="prise">
                Title card
                <input type="number" id="prise" name="prise">
            </label>
            <button>Add Card</button>
        </form>
    </div>
</main>
<footer></footer>
<script src="public/js/script.js"></script>
</body>
</html>