<?php 

require "config.php";
require "db.php";
require ROOT . "libs/functions.php";

session_start();

/* ---------------  РОУТЕР --------------- */

$uri =  $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/"); 
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

$errors = array();
$success = array();

switch ( $uri[0]) {
	case '':
		include "modules/main/index.php";
		break;

	// -------------- users ---------------

	case 'login':
		require ROOT . "modules/login/login.php";
		break;

	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;	

	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;	

	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		include "modules/login/set-new-password.php";
		break;

	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;	

	case 'profile-edit':
		include ROOT . "modules/profile/edit.php";
		break;			

	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'blog':
		include "modules/blog/index.php";
		break;

	default:
		include "modules/main/index.php";
		break;
}


?>