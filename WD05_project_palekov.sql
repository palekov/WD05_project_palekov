-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 24 2019 г., 09:46
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wd05_project_palekov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Александр Палеков', '<p>Я начинающий, но весьма перспективный web-разработчик с претензией на full-stack.</p>\r\n\r\n<p>Изучаю web-программирование с использованием HTML, CSS, PHP, mySQL, JavaScript.</p>\r\n\r\n<p>Так же интересуюсь разработкой программ на языке Java SE.</p>\r\n\r\n<p>Увлекаюсь электроникой и автоматизацией.</p>\r\n', '654124852.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Путешествия'),
(2, 'Учёба'),
(3, 'Работа'),
(4, 'Отдых'),
(5, 'Интересное');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `surname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `surname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'palekov-2011@mail.ru', '+375 33 3290443', 'Беларусь', 'Александр', 'Палеков', '', 'https://vk.com/id4582640', 'https://web.facebook.com/alexander.palekov.7', 'https://github.com/palekov', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(1, '1999-2001', 'Инженер-программист', 'Разрабатывал программы на СУБД Foxpro для учёта готовой продукции, отгрузки, выписки ТТН, учёта материалов на складе. '),
(2, '2001-2003', 'Электрик', 'Занимался прокладкой и монтажом электрической проводки и прочими сопутствующими работами.'),
(3, '2003-2005', 'Слесарь КИПиА', 'Обслуживание и ремонт контрольно-измерительных приборов и систем автоматики на котельных.'),
(4, '2005-2019', 'Наладчик КИПиА', 'Монтаж и наладка систем автоматического управления котельными.');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `message`, `date_time`, `message_file_name_original`, `message_file`) VALUES
(1, 'mail@grt.by', 'Василий', 'Сообщаю вам это сообщение в надежде на общение!', '2019-02-13 15:09:47', NULL, NULL),
(4, 'vvv@bbb.com', 'Володя', 'Some message for the forsage...', '2019-02-13 15:18:22', '320-216137360.jpg', '576145763.jpg'),
(5, 'volodya@mail.com', 'Володя', 'Привет! Это сообщение от Володи!', '2019-02-23 21:43:37', 'CAM03275.jpg', '1081438400.jpg'),
(6, 'dmitro@gmail.com', 'Дмитрий', 'Привет! Как поживаешь?', '2019-02-23 22:25:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `update_time`) VALUES
(27, 'Монтаж системы управления котельной', '<p>Сегодня на работе занимались монтажом и подключением шкафа автоматики на котельной. Потратили на данное занятие целый день. Было весьма занимательно и интересно.</p>\r\n', 22, '2019-02-19 21:51:42', '1378399375.jpg', '320-1378399375.jpg', '3', NULL),
(28, 'Занимался изучением программирования на Java', '<p>Решал задачки по программированию на Java. Тема давалась с трудом и с первой попытки решить не удалось. Однако методом проб и ошибок все задачи билы решены и достигнут новый уровень в обучении.</p>\r\n', 22, '2019-02-19 21:54:57', '1293416993.png', '320-1293416993.png', '2', NULL),
(29, 'Поработал над домашней системой автоматизации', '<p>Подправил веб-страничку системы домашней автоматизации. Получилось красиво и наглядно. Использовал технологии JavaScript.</p>\r\n', 22, '2019-02-19 22:00:23', '1249505575.png', '320-1249505575.png', '5', NULL),
(30, 'Изучение языка JavaScript', '<p>Сегодня попрактиковался в программировании на JS. Участвовал в интенсиве по созданию приложения Switter. Было сложно, но весьма познавательно. Приобрёл новые знания.</p>\r\n', 22, '2019-02-19 22:04:57', '1312831711.png', '320-1312831711.png', '2', NULL),
(31, 'Занимались наладкой системы диспетчеризации котельных', '<p>Сегодня на работе производили наладку программ для удалённого мониторинга автоматизированных котельных. Устанавливали программное обеспечение, настраивали технологические параметры объектов.</p>\r\n', 22, '2019-02-19 22:08:54', '1370755646.jpg', '320-1370755646.jpg', '3', NULL),
(32, 'Сделал урок по созданию блога', '<p>Недавно завершил урок по созданию страницы сайта, отвечающей за отображение всех записей блога. Приобрёл новые практические навыки работы с базой данных MySQL, и языком программирования PHP.</p>\r\n', 22, '2019-02-19 22:13:47', '1246481291.png', '320-1246481291.png', '2', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` double DEFAULT NULL,
  `css` int(11) UNSIGNED DEFAULT NULL,
  `js` int(11) UNSIGNED DEFAULT NULL,
  `jquery` int(11) UNSIGNED DEFAULT NULL,
  `php` int(11) UNSIGNED DEFAULT NULL,
  `mysql` int(11) UNSIGNED DEFAULT NULL,
  `git` int(11) UNSIGNED DEFAULT NULL,
  `gulp` int(11) UNSIGNED DEFAULT NULL,
  `npm` int(11) UNSIGNED DEFAULT NULL,
  `yarn` tinyint(1) UNSIGNED DEFAULT NULL,
  `java` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `npm`, `yarn`, `java`) VALUES
(1, 75, 25, 15, 15, 25, 15, 25, 15, 15, 0, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `surname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`, `secondname`) VALUES
(22, 'info@mail.com', '$2y$10$a70VAepekLMt6mnZQlZv6u7QyTChY2pwuehPsWzrj4MfSYw8R2hfO', 'admin', 'Александр', 'Палеков', 'Витебск', 'Беларусь', '1357929123.jpg', '48-1357929123.jpg', 'Y3udB2OZovgpl5f', 0, NULL),
(24, 'user@mail.com', '$2y$10$UpQnTJ.daXchDrshEDK5FOvGBDFED4U9TIQ0wexp52R7v8r1qLswa', 'user', 'Александр', 'Палеков', 'Витебск', 'Беларусь', '1369617092.jpg', '48-1369617092.jpg', NULL, NULL, NULL),
(27, 'info3@mail.com', '$2y$10$xRu4Eja4WjAS4HRGBCgr0Ov7axSf63p5D6peH7MfzjJzOYQq6gcje', 'user', 'Василий', 'Тёркин', 'Витебск', 'Беларусь', '1243793362.jpg', '48-1243793362.jpg', NULL, NULL, 'Тёркин');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
