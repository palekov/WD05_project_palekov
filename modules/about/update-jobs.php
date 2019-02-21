<?php 
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
// $jobs = R::find('jobs', 'ORDER BY id DESC');
$jobUpdate = R::load('jobs', $_GET['id']);
$id = $jobUpdate['id'];
$title = "Редактировать - О авторе";
if ( isset($_POST['updateJob'])) {
// echo "<pre>";
// print_r($_POST);
// echo "</pre>";
// die();
	if ( trim($_POST['period']) == '') {
		$errors[] = ['title' => 'Введите период работы' ];
	}
	if ( trim($_POST['title']) == '') {
		$errors[] = ['title' => 'Введите должность' ];
	}
	if ( empty($errors)) {
		// $job = R::dispense('jobs');
		$jobUpdate->period = htmlentities($_POST['period']);
		$jobUpdate->title = htmlentities($_POST['title']);
		$jobUpdate->description = htmlentities($_POST['description']);
		R::store($jobUpdate);
		header('Location: ' . HOST . "edit-jobs?result=postUpdated&id=$id&#$id");
	}
}
// готовим контент для центральной части
ob_start(); // включает буферизацию вывода.
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/update-jobs.tpl";
$content = ob_get_contents(); //Возвращает содержимое буфера вывода
ob_clean(); //удаляем содержимое буфера вывода. 
// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
?>