<?php
require 'db.php';

$data = $_POST;

$namedb = R::dispense('item');

$namedb->img = $data['img'];
$namedb->title = $data['title'];
$namedb->prise = $data['prise'];

R::store($namedb);

echo "<script>window.location.replace('../admin.php');</script>";