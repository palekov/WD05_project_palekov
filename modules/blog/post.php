<?php  

$title = "Блог";

//$posts = R::find('posts', 'ORDER BY id DESC');

//$post = R::findOne('posts', 'id = ?', array($_GET['id']));

$sql = '
		SELECT
			posts.id, posts.title, posts.text, posts.post_img, posts.date_time, posts.author_id, posts.cat,
			users.name, users.surname,
			categories.cat_title
		FROM `posts`
		LEFT JOIN categories ON posts.cat = categories.id
		INNER JOIN users ON posts.author_id = users.id
		WHERE posts.id = ' . $_GET['id'] . ' LIMIT 1';

$post = R::getAll($sql);

//--- получаем внутренний массив ---
$post = @$post[0];

$sql = '
		SELECT
			comments.text, comments.date_time, comments.user_id,
			users.name, users.surname, users.avatar_small
		FROM `comments`
		INNER JOIN users ON comments.user_id = users.id
		WHERE comments.post_id = ' . $_GET['id'];

	$comments = R::getAll($sql);

if (isset($_POST['addComment']))  {
	if (trim($_POST['commentText']) == '') {
		$errors[] = ['title' => 'Введите текст комментария!'];
	}

	if (empty($errors))  {
		$comment = R::dispense('comments');
		$comment->postId = htmlentities($_GET['id']);
		$comment->userId = htmlentities($_SESSION['logged_user']['id']);
		$comment->text = htmlentities($_POST['commentText']);
		$comment->dateTime = R::isoDateTime();
		R::store($comment);
		header('Location: ' . HOST . "blog/post?id=" . $_GET['id']);
		exit();
	}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/blog-post.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>