<?php

$title = "Вход на сайт";
$email = false;

if (isset($_POST['login'])) {

	if (trim($_POST['email']) == '') {
        $errors[] = ['title' => 'Введите Email !'];
    } else { 
        
        $email = $_POST['email'];

        if (preg_match("/^(?:[a-z0-9]+(?:[-_.]?[a-z0-9]+)?@[a-z0-9_.-]+(?:\.?[a-z0-9]+)?\.[a-z]{2,5})$/i", $email)) 
        {
            $email = true;
        } else {
            $errors[] = ['title' => 'Неверный формат email !'];
        }
    }

	if (trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите Пароль!'];
	}

	if (empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']));

		if ($user) {
			if (password_verify( $_POST['password'], $user->password)) {
				$_SESSION['logged_user'] = $user;
				$_SESSION['login'] = "1";
				$_SESSION['role'] = $user->role;

				$currentUser = $_SESSION['logged_user'];

				header("Location: " . HOST);
				exit();
			}	else  {
					$errors[] = ['title' => 'Пароль введен неверно!'];
			}
		}  else {
			$errors[] = ['title' => 'Пользователь с таким Email<br>не зарегистрирован!' ];
		}
	}

}

ob_start();
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";
?>