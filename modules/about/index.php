<?php 
// echo "<pre>";
// print_r($_POST);
// echo "</pre>";
$title ="Об авторе";

$about = R::findOne('about',1);

//$about = R::load('about', 2);

$skills = R::load('skills', 1);
$jobs = R::find('jobs', 'ORDER BY id DESC');
// готовим контент для центральной части
ob_start(); // включает буферизацию вывода.
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/about.tpl";
$content = ob_get_contents(); //Возвращает содержимое буфера вывода
ob_clean(); //удаляем содержимое буфера вывода. 
// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
?>