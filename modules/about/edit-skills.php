<?php 
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$skills = R::load('skills', 1);
$title = "Редактировать - О авторе";
if ( isset($_POST['skillsUpdate'])) {  
	foreach ($_POST as $index => $value) {
		if ( intval($value) > 100 )  {
			$errors[] = ['title' => "Для поля $index введите число от 0 до 100" ];
		}
	}
// print_r($_POST['html']);
// echo intval($_POST['html']);
// echo is_numeric($_POST['html']);
// echo "</pre>";
// die();
	if ( empty($errors)) {
		// $skills = R::dispense('skills');
		$skills->html = htmlentities(intval($_POST['html']));
		$skills->css = htmlentities(intval($_POST['css']));
		$skills->js = htmlentities(intval($_POST['js']));
		$skills->jquery = htmlentities(intval($_POST['jquery']));
		$skills->php = htmlentities(intval($_POST['php']));
		$skills->mysql = htmlentities(intval($_POST['mysql']));
		$skills->git = htmlentities(intval($_POST['git']));
		$skills->gulp = htmlentities(intval($_POST['gulp']));
		$skills->npm = htmlentities(intval($_POST['npm']));
		$skills->yarn = htmlentities(intval($_POST['yarn']));
		R::store($skills);
		header('Location: ' . HOST . "about");
		exit();
	}
}
// готовим контент для центральной части
ob_start(); // включает буферизацию вывода.
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/edit-skills.tpl";
$content = ob_get_contents(); //Возвращает содержимое буфера вывода
ob_clean(); //удаляем содержимое буфера вывода. 
// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
?>