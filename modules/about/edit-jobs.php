<?php 
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
// echo "<pre>";
// print_r($_POST);
// echo "</pre>";
$jobs = R::find('jobs', 'ORDER BY id DESC');
// $refresh = 'SELECT * FROM jobs ORDER BY id DESC';
$title = "Редактировать - О авторе";
if (isset($_GET)) {
	// $getid = R::load('jobs', )
}
if ( isset($_POST['newJob'])) {
	if ( trim($_POST['period']) == '') {
		$errors[] = ['title' => 'Введите период работы' ];
	}
	if ( trim($_POST['title']) == '') {
		$errors[] = ['title' => 'Введите должность' ];
	}
	if ( empty($errors)) {
		$job = R::dispense('jobs');
		$job->period = htmlentities($_POST['period']);
		$job->title = htmlentities($_POST['title']);
		$job->description = htmlentities($_POST['description']);
		R::store($job);
		// $jobs = R::getAll($refresh);
		header('Location: ' . HOST . "edit-jobs?result=postCreated");
		
		
	}
}
// готовим контент для центральной части
ob_start(); // включает буферизацию вывода.
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/edit-jobs.tpl";
$content = ob_get_contents(); //Возвращает содержимое буфера вывода
ob_clean(); //удаляем содержимое буфера вывода. 
// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
?>