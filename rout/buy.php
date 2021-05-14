<?php

require 'db.php';

$data = $_POST;

if (isset($data['deleted'])) {
    $item = R::load('basket', $data['deleted']);
    R::trash($item);
}
echo "<script>window.location.replace('../basket.php');</script>";