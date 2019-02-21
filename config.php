<?php 

// DB SETTINGS
define('DB_HOST', 'localhost');
define('DB_NAME', 'WD05_project_palekov');
define('DB_USER', 'root');
define('DB_PASS', '');

// Хост сайта
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

define('SITE_NAME',"Сайт протфолио Александра Палекова");
define('SITE_EMAIL',"info@webdev05.com");
define('ADMIN_EMAIL', "palekov-2011@mail.ru");

// Физический путь к корневой директории скрипта
define('ROOT', dirname(__FILE__).'/');

?>