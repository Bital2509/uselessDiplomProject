<?php
require 'db.php';

$data = $_POST;

$namedb = R::dispense('users');

$namedb->name = $data['name'];
$namedb->email = $data['email'];
$namedb->password = $data['password'];
$namedb->group = '1';

R::store($namedb);

$_SESSION['logged_user'] = $namedb->email;

echo "<script>window.location.replace('../index.php');</script>";