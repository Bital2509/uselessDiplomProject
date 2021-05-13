<?php
require 'db.php';

$data = $_POST;

$namedb = R::dispense('basket');

$namedb->user = $_SESSION['logged_user']->id;
$namedb->img = $data['img'];
$namedb->title = $data['title'];

R::store($namedb);

echo "<script>window.location.replace('../index.php');</script>";