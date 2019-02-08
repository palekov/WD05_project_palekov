-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 08 2019 г., 21:17
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
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Сашкус Палеков', 'Я слесарь-программист.');

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
(1, 'Путешествия натуралиста'),
(3, 'Продажи'),
(4, 'Находки'),
(6, 'Любопытные факты');

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
(18, 'Новый пост-10', 'Он твердил одно и то же: «Вот научится играть, тогда пусть играет, а бессмысленно скрипеть никто не давал вам права».\r\nЛетом ещё как-то выходили из положения: мама или бабушка везли Машу за город на дачу, и она там спокойно играла. Казалось бы, это просто смешно, но Машенька стала плохо спать, а на выпускном концерте она вдруг начала плакать и, так и не доиграв пьесу, убежала со сцены.', 22, '2019-02-03 14:49:42', '1229800288.jpg', '320-1229800288.jpg', '1', NULL),
(19, 'Новый пост-11', 'Его трудно было назвать стариком. Глаза его были голубыми, брови не казались такими лохматыми, как у их соседа, а в руках он держал букет белых ландышей.\r\n– Вот, – смущённо проговорил он, – берите, не бойтесь, это не из леса, в лесу их не разрешают рвать, это я у себя на даче вырастил. Спасибо. Я давно так не плакал, как сегодня. Это моя любимая мелодия. Вся юность, моя первая любовь вдруг вспомнились. Простите меня, Машенька, – обратился он к смущённой девушке.', 22, '2019-02-03 15:04:48', '1335964519.jpg', '320-1335964519.jpg', '6', NULL),
(20, 'Новый пост-12', 'В выпускном классе решалась Машина судьба – она либо продолжает заниматься музыкой, либо выбирает себе какую-то другую профессию.\r\nДля выпускного экзамена Маша готовила отрывок из музыки Хачатуряна к фильму «Овод». Ей самой так нравилась мелодия, что у неё начинало учащённо биться сердце. Бабушка и мама поговаривали о том, что пусть уж лучше идёт на филологический, если нервы ей не позволят заниматься музыкой дальше.', 22, '2019-02-03 15:05:07', '1300117858.jpg', '320-1300117858.jpg', '4', NULL),
(22, 'Очень сильно длинное название заголовка поста для проверки обрезания', 'Какое-либо нибудь содержание', 22, '2019-02-03 17:15:26', '1318020434.jpg', '320-1318020434.jpg', '3', NULL),
(25, 'Новый пост-777', '<p>В&nbsp;Румлевском парке ими такая проверка проведена, выявлено немало сухостоя, поваленных деревьев и&nbsp;валежника. Все они обследованы, и&nbsp;теперь самое благоприятное время проводить санитарную очистку парка. Получено разрешение областного комитета природных ресурсов и&nbsp;охраны окружающей среды на&nbsp;проведение санитарных рубок, имеем все соответствующие документы, в&nbsp;том числе и&nbsp;лесорубочный билет&raquo;.<br />\r\nЧитать полностью:&nbsp;&nbsp;<a href=\"https://news.tut.by/society/623437.html\">https://news.tut.by/society/623437.html</a></p>\r\n', 22, '2019-02-05 19:21:49', '216137360.jpg', '320-216137360.jpg', '1', '2019-02-06 21:40:44');

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
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `surname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(22, 'info@mail.com', '$2y$10$a70VAepekLMt6mnZQlZv6u7QyTChY2pwuehPsWzrj4MfSYw8R2hfO', 'admin', 'Александр', 'Палеков', 'Витебск', 'Беларусь', '1357929123.jpg', '48-1357929123.jpg', 'Y3udB2OZovgpl5f', 0),
(24, 'user@mail.com', '$2y$10$UpQnTJ.daXchDrshEDK5FOvGBDFED4U9TIQ0wexp52R7v8r1qLswa', 'user', 'Александр', 'Палеков', 'Витебск', 'Беларусь', '1369617092.jpg', '48-1369617092.jpg', NULL, NULL),
(27, 'info3@mail.com', '$2y$10$xRu4Eja4WjAS4HRGBCgr0Ov7axSf63p5D6peH7MfzjJzOYQq6gcje', 'user', 'Василий', 'Тёркин', '', '', '1345233060.jpg', '48-1345233060.jpg', NULL, NULL);

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
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
