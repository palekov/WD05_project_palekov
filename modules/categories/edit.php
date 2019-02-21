<?php 

if ( !isAdmin() ) {
	header('Location: ' . HOST);
	die();
}

$title = "Редактировать категорию";

$cat = R::load('categories', $_GET['id']);

if ( isset($_POST['catEdit']) ) {
	if ( trim($_POST['catTitle']) == '' ) {
		$errors[] = ['title' => 'Введите название категории'];
	}
	if ( empty($errors) ) {
		$cat->cat_title = htmlentities($_POST['catTitle']);
		R::store($cat);
		header('Location: ' . HOST . "blog/categories?result=catUpdated");
		exit();
	}
}
// готовим контент для центральной части
ob_start(); // включает буферизацию вывода.
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/edit.tpl";
$content = ob_get_contents(); //Возвращает содержимое буфера вывода
ob_clean(); //удаляем содержимое буфера вывода. 
// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>