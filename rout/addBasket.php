<?php
require 'db.php';

$data = $_POST;

if (isset($data['buy'])) {
    $namedb = R::dispense('basket');

    $namedb->user = $_SESSION['logged_user']->id;
    $namedb->idCard = $data['buy'];
    $namedb->img = $data['img'];
    $namedb->title = $data['title'];
    $namedb->prise = $data['prise'];

    R::store($namedb);
    echo "<script>window.location.replace('../index.php');</script>";
} elseif (isset($data['edited'])) {
    $_SESSION['edited_item'] = $data['edited'];
    echo "<script>window.location.replace('../editedItem.php');</script>";
} elseif (isset($data['deleted'])) {
    $item = R::findOne('item', 'id = ?', [$data['deleted']]);
    R::trash($item);
    $itemBasket = R::findOne('basket','id_card = ?', [$data['deleted']]);
    if (isset($itemBasket)){
        R::trash($itemBasket);
    }
    echo "<script>window.location.replace('../index.php');</script>";
}
