<?php 

if ( !isAdmin() ) {
	header('Location: ' . HOST);
	die();
}

$title = "Редактироваить пост";
$post = R::load('posts', $_GET['id']);
$cats =R::find('categories', 'ORDER BY cat_title ASC');
if ( isset($_POST['postUpdate']) ) {
	if ( trim($_POST['postTitle']) == '' ) {
		$errors[] = ['title' => 'Введите название поста'];
	}
	if ( trim($_POST['postText']) == '' ) {
		$errors[] = ['title' => 'Введите Текст поста'];
	}
	if ( empty($errors) ) {
		
		$post->title = htmlentities($_POST['postTitle']);
		$post->cat = htmlentities($_POST['postCat']);
		$post->text = ($_POST['postText']);
		$post->authorId = $_SESSION['logged_user']['id'];
		$post->updateTime = R::isoDateTime();
		if ( isset($_FILES['postImg']['name']) && $_FILES['postImg']['tmp_name'] != "" ) {
			// Записываем параметры файла в переменные
			// Записываем имя файла
			$fileName = $_FILES["postImg"]["name"];
			// Записываем временный путь
			$fileTmpLoc = $_FILES["postImg"]["tmp_name"];
			// записываем тип файла
			$fileType = $_FILES["postImg"]["type"];
			// записываем размер файла
			$fileSize = $_FILES["postImg"]["size"];
			// записываем ошибки при добавлении файла, если они есть.
			$fileErrorMsg = $_FILES["postImg"]["error"];
			// записываем разбиваем файл на две части по разделителю "."
			$kaboom = explode(".", $fileName);
			// берем последний элемент из массива $kaboom
			$fileExt = end($kaboom);
				// Проверяем свойства файла по нескольким условиям
			// записываем ширину и высоту загруженной картинки 
			list($width, $height) = getimagesize($fileTmpLoc);
			// проверяем ширину и высоту изображения
			if ($width < 10 || $height < 10 ) {
				$errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше.' ];
			}
			// проверяем вес изобразения
			if ( $fileSize > 4194304 ) {
				$errors[] = ['title' => 'Файл изображения не должен быть более 4 Mb' ];
			}
			// проверяем соответствие подходящему формату
			if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				$errors[]  = [ 'title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, или png.</p>', ];
			}
			// проверяем есть ли ошибки при загрузке изображения
			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку' ];
			}
			// Перемещаем загруженный файл в нужную директорию
			// создаем случайное имя загруженного файла
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			// путь где будут храниться картинки к блогу
			$postImgFolderLocation = ROOT . 'usercontent/blog/';
			// записываем путь к файлу
			$uploadfile = $postImgFolderLocation . $db_file_name;
			// перемещаем переименованный файл в нужную папку, результат записываем п переменную
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			$postImg = $post->post_img;
			// Если картинка поста уже установлена, то удаляем файл аватара
			if ( $postImg != "" ) {
				// записаваем в переменную $picurl полный путь к файлу
				$picurl = $postImgFolderLocation . $postImg;
				// Удаляем аватар
				// die($picurl); 
			    if ( file_exists($picurl) ) { unlink($picurl); }
				$picurl320 = $postImgFolderLocation . '320-' . $postImg;
			    if ( file_exists($picurl320) ) { unlink($picurl320); }
			}
			// проверяем результат перемещения
			if ( $moveResult != true ) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}
			include_once( ROOT . "/libs/image_resize_imagick.php");
			$target_file =  $postImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			// записываем в базу имя файла
			$post->postImg = $db_file_name;
			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "320-" . $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			// записываем в базу имя маленького файла
			$post->postImgSmall = "320-" . $db_file_name;
		}
		R::store($post);
		// header('Location: ' . HOST . "profile");		
		header('Location: ' . HOST . "blog?result=postUpdated");
		exit();
	}
}
// готовим контент для центральной части
ob_start(); // включает буферизацию вывода.
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-edit.tpl";
$content = ob_get_contents(); //Возвращает содержимое буфера вывода
ob_clean(); //удаляем содержимое буфера вывода. 
// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>