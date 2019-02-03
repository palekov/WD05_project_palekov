<?php

$title = "Редактировать профиль";

$currentUser = $_SESSION['logged_user'];

$user = R::load('users', $currentUser->id);

//print_r($user);

if (isset($_POST['profile-update']))  {
	
	if (trim($_POST['name']) == '')  {
		$errors[] = ['title' => 'Введите Имя'];
	}

	if (trim($_POST['surname']) == '')  {
		$errors[] = ['title' => 'Введите Фамилию'];
	}

	if (trim($_POST['email']) == '')  {
		$errors[] = ['title' => 'Введите Email'];
	}

	//print_r($_FILES);

	if (empty($_FILES['avatar']['name'])) {
		$errors[] = ['title' => 'Выберите файл с Аватаркой'];
	}

	// print_r($errors);

	if (empty($errors)) {
		$user->name = htmlentities($_POST['name']);
		$user->surname = htmlentities($_POST['surname']);
		$user->city = htmlentities($_POST['city']);
		$user->country = htmlentities($_POST['country']);

		if (isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != "")  {

			$fileName = $_FILES["avatar"]["name"];
			$fileTmpLoc = $_FILES["avatar"]["tmp_name"];
			$fileType = $_FILES["avatar"]["type"];
			$fileSize = $_FILES["avatar"]["size"];
			$fileErrorMsg = $_FILES["avatar"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				$errors[] = ['title' => 'Выберите файл с расширением jpg, jpeg, gif, png.'];
			}			

			if (empty($errors)) { 
				list($width, $height) = getimagesize($fileTmpLoc);


			if ($width < 10 || $height < 10)  {
				$errors[] = ['title' => 'Некорректный размер картинки!'];
			}

			if ($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл не должен быть более 4 Мб!'];	
			}


			if ($fileErrorMsg == 1)  {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку!'];
			}

		}

			if (empty($errors)) {
			// --- Проверяем установлен ли аватар у пользователя ---
			$avatar = $user['avatar'];
			$avatarFolderLocation = ROOT . 'usercontent/avatar/';

			// --- Если аватар был установлен - удаляем файл аватара ---
			if ($avatar != "") {
				$picurl = $avatarFolderLocation . $avatar;
				// --- Удаляем аватар ---
				if (file_exists($picurl)) { unlink($picurl);  }
				// --- Удаляем маленький аватар ---
				$picurl48 = $avatarFolderLocation . '48-' . $avatar;
				if (file_exists($picurl48)) { unlink($picurl48);  }
			}
			// --- Генерируем случайное имя для файла
			$db_file_name = rand(10000000000,99999999999) . "." . $fileExt;
			// --- Перемещаем загруженный файл в нужную директорию ---
			$uploadfile = $avatarFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true)  {
				$errors[] = ['title' => 'Ошибка сохранения файла!'];
			} 

			include_once(ROOT . "libs/image_resize_imagick.php");

			$target_file = $avatarFolderLocation . $db_file_name;
			
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			$user->avatar = $db_file_name;

			$target_file = $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . "48-" . $db_file_name;
			$wmax = 48;
			$hmax = 48;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$user->avatarSmall = "48-" . $db_file_name;

		}

		R::store($user);
		$_SESSION['logged_user'] = $user;
		header('Location: ' . HOST . "profile");
		exit();
	}
	}
}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>