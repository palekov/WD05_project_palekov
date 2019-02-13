<?php 

$title = "Контакты";

$contacts = R::load('contacts', 1);

if ( isset($_POST['newMessage'])) {
	if ( trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите Имя' ];
	}
	if ( trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email' ];
	}
	if ( trim($_POST['message']) == '') {
		$errors[] = ['title' => 'Введите Сообщение' ];
	}
	if ( empty($errors)) {
		$message = R::dispense('messages');
		$message->email = htmlentities($_POST['email']);
		$message->name = htmlentities($_POST['name']);
		$message->message = htmlentities($_POST['message']);
		$message->dateTime = R::isoDateTime();
		if ( isset($_FILES["file"]["name"]) && $_FILES["file"]["tmp_name"] != "" ) {
			// Write file image params in variables
			$fileName = $_FILES["file"]["name"];
			$fileTmpLoc = $_FILES["file"]["tmp_name"];
			$fileType = $_FILES["file"]["type"];
			$fileSize = $_FILES["file"]["size"];
			$fileErrorMsg = $_FILES["file"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл больше чем 4mb' ];
			} else if (!preg_match("/\.(gif|jpg|png|pdf|doc|jpeg)$/i", $fileName) ) {
				$errors[] = ['title' => 'Файл должен иметь следующие расширения: jpg, gif, png, pdf, doc, jpeg' ];
			} else if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'Произошла неизвестная ошибка :( ' ];
			}
			if ( empty($errors) ) {
									
				$postImgFolderLocation = ROOT . 'usercontent/upload_files/';
				// Перемещаем загруженный файл в нужную директорию
				$uploadfile = $postImgFolderLocation . $db_file_name;
				$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
				if ($moveResult != true) {
					$errors[] = ['title' => 'Произошла ошибка при загрузке файла' ];
				}
				$message->message_file_name_original = $fileName;
				$message->message_file = $db_file_name;
				}
		}
		if ( empty($errors) ) {
			R::store($message);
			$success[] = ['title' => 'Сообщение было успешно отправлено!' ];
		}
	}
}

// готовим контент для центральной части
ob_start(); // включает буферизацию вывода.
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contacts.tpl";
$content = ob_get_contents(); //Возвращает содержимое буфера вывода
ob_clean(); //удаляем содержимое буфера вывода. 

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
?>