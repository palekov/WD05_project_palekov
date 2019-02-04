<?php 

$title = "Удалить категорию";
$cat = R::load('categories', $_GET['id']);
if ( isset($_POST['catDelete']) ) {
	R::trash($cat);	
	header('Location: ' . HOST . "blog/categories?result=catDeleted");
	exit();
	
}

// готовим контент для центральной части

ob_start(); // включает буферизацию вывода.

include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/delete.tpl";

$content = ob_get_contents(); //Возвращает содержимое буфера вывода

ob_clean(); //удаляем содержимое буфера вывода. 

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>