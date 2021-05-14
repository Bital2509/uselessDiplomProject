<?php
require 'db.php';

$data = $_POST;

$card = R::load('item', $data['id']);
$card->img = $data['img'];
$card->title = $data['title'];
R::store($card);

$cardBasket = R::findOne('basket', 'id_card = ?', [$data['id']]);

if (isset($cardBasket)) {
    $cardBasket->img = $data['img'];
    $cardBasket->title = $data['title'];
    R::store($cardBasket);
}
echo "<script>window.location.replace('../index.php');</script>";