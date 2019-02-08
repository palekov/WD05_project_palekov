<?php

if ( !isAdmin() ) {
	header('Location: ' . HOST);
	die();
}

$title = "Блог - добавить новый пост";

$cats = R::find('categories', 'ORDER BY cat_title ASC');

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-new.tpl";
$content = ob_get_contents();
ob_end_clean();

if (isset($_POST['postNew'])) {

	if (trim($_POST['postTitle']) == '') {
		$errors[] = ['title' => 'Введите название поста!'];
	}

	if (trim($_POST['postText']) == '') {
		$errors[] = ['text' => 'Введите текст поста!'];
	}

	if (empty($errors)) {
		
		$post = R::dispense('posts');
		$post->title = htmlentities($_POST['postTitle']);
		$post->cat = htmlentities($_POST['postCat']);
		$post->text = $_POST['postText'];
		$post->authorId = $_SESSION['logged_user']['id'];
		$post->dateTime = R::isoDateTime();

		if (isset($_FILES["postImg"]["name"]) && $_FILES["postImg"]["tmp_name"] != "")  {
			
			$fileName = $_FILES["postImg"]["name"];
			$fileTmpLoc = $_FILES["postImg"]["tmp_name"];
			$fileType = $_FILES["postImg"]["type"];
			$fileSize = $_FILES["postImg"]["size"];
			$fileErrorMsg = $_FILES["postImg"]["error"];
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

			if (empty($errors)) {
	
			// --- Генерируем случайное имя для файла
			$db_file_name = rand(10000000000,99999999999) . "." . $fileExt;
			// --- Перемещаем загруженный файл в нужную директорию ---
			$postImgFolderLocation = ROOT . 'usercontent/blog/';
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true)  {
				$errors[] = ['title' => 'Ошибка сохранения файла!'];
			} 

			include_once(ROOT . "libs/image_resize_imagick.php");

			$target_file = $postImgFolderLocation . $db_file_name;
			
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($target_file);

			$post->postImg = $db_file_name;

			$target_file = $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "320-" . $db_file_name;

			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$post->postImgSmall = "320-" . $db_file_name;

		}

		R::store($post);
		header('Location: ' . HOST . "blog?result=postCreated");
		exit();
	}
	
}
		R::store($post);
		header('Location: ' . HOST . "blog");
		exit();
	}
}

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>