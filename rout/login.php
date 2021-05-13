<?php
require 'db.php';

$data = $_POST;

$users = R::findOne('users', 'email = ?', array($data['email']));
//print_r($users);
if (empty($users)) {
    echo "<script>window.location.replace('../index.php');</script>";
} else {
    if ($data['password'] === $users->password) {
        $_SESSION['logged_user'] = $users;
        echo "<script>window.location.replace('../index.php');</script>";
    }
}
