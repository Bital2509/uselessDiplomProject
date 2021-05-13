<?php
require 'redb.php';
R::setup('mysql:host=localhost;dbname=diplom', 'root', '');
if(!R::testConnection()) die('No DB connection!');
session_start();
