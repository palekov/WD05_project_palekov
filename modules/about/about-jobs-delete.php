<?php 
if ( !isAdmin() ) {
	header('Location: ' . HOST);
	die();
}
$title = "Удалить пост о работе";
$jobs = R::load('jobs', $_GET['id']);

if ( isset($_POST['jobDelete']) ) {
	
	R::trash($jobs);	
	header('Location: ' . HOST . "edit-jobs?result=jobsDeleted");
	exit();
	
}
// готовим контент для центральной части
ob_start(); // включает буферизацию вывода.
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/delete-jobs.tpl";
$content = ob_get_contents(); //Возвращает содержимое буфера вывода
ob_clean(); //удаляем содержимое буфера вывода. 
// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
?>