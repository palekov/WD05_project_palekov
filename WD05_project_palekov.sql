-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 03 2019 г., 18:20
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
-- База данных: `WD05_project_palekov`
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
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`) VALUES
(3, 'Новый пост-1', 'Машенька была одарённым ребёнком. Ей даже дали президентскую стипендию, благодаря которой мама свозила Машу на несколько музыкальных концертов в филармонию и в Большой театр.\r\nВсё у Маши было хорошо, учителя ею были довольны. Но вот беда: едва Маша начинала играть дома на скрипке, как её сосед с верхнего этажа, старик с мохнатыми бровями и холодными серыми глазами, начинал стучать своей палкой в пол или по батарее, отчего Маша сбивалась с ритма, а пёс Антошка начинал от такого «концерта» выть. Это ещё больше злило соседа, и он либо звонил по телефону, либо опускался к их двери. Напрасно мама пыталась объяснить ему, что Маше надо заниматься.', 22, '2019-02-03 11:56:48', '1320878678.jpg', '320-1320878678.jpg'),
(4, 'Новый пост-2', 'Он твердил одно и то же: «Вот научится играть, тогда пусть играет, а бессмысленно скрипеть никто не давал вам права».\r\nЛетом ещё как-то выходили из положения: мама или бабушка везли Машу за город на дачу, и она там спокойно играла. Казалось бы, это просто смешно, но Машенька стала плохо спать, а на выпускном концерте она вдруг начала плакать и, так и не доиграв пьесу, убежала со сцены.', 22, '2019-02-03 11:57:24', '1265119182.jpg', '320-1265119182.jpg'),
(5, 'Новый пост-3', 'Год пришлось Маше пропустить, врачи ей запретили играть на скрипке. А потом бабушка устроилась работать вахтёром в один из научных институтов, и Маша по вечерам ходила заниматься в его огромном вестибюле. Там была замечательная акустика, и дела у Маши наладились. Она перестала волноваться, у неё стало больше уверенности.\r\nВ выпускном к', 22, '2019-02-03 11:57:55', '1331167174.jpg', '320-1331167174.jpg'),
(6, 'Новый пост-4', 'В выпускном классе решалась Машина судьба – она либо продолжает заниматься музыкой, либо выбирает себе какую-то другую профессию.\r\nДля выпускного экзамена Маша готовила отрывок из музыки Хачатуряна к фильму «Овод». Ей самой так нравилась мелодия, что у неё начинало учащённо биться сердце. Бабушка и мама поговаривали о том, что пусть уж лучше идёт на филологический, если нервы ей не позволят заниматься музыкой дальше.', 22, '2019-02-03 11:58:57', '1218284289.jpg', '320-1218284289.jpg'),
(7, 'Новый пост-5', 'Накануне выпускного вечера Маша надела своё первое концертное платье, которое ей сшили специально для этого случая, и, закрыв глаза, вслед за мелодией взлетела к золотому свечению высоко в небо. Она играла и одновременно растворялась в дивной мелодии, то ныряя и плавая, то поднимаясь над ней и любуясь дивными медово-золотыми переливами звуков.', 22, '2019-02-03 11:59:28', '1292462268.jpg', '320-1292462268.jpg'),
(8, 'Новый пост-6', 'Едва девочка кончила игру, как послышался звук опускающегося лифта и раздался звонок. Мама, заранее готовая к встрече со вздорным соседом, открыла дверь и обмерла. Пред ней стоял незнакомый человек, очень похожий на соседа, но это, видимо, был его брат.', 22, '2019-02-03 12:00:00', '1286200221.jpg', '320-1286200221.jpg'),
(9, 'Новый пост-7', 'Его трудно было назвать стариком. Глаза его были голубыми, брови не казались такими лохматыми, как у их соседа, а в руках он держал букет белых ландышей.\r\n– Вот, – смущённо проговорил он, – берите, не бойтесь, это не из леса, в лесу их не разрешают рвать, это я у себя на даче вырастил. Спасибо. Я давно так не плакал, как сегодня. Это моя любимая мелодия. Вся юность, моя первая любовь вдруг вспомнились. Простите меня, Машенька, – обратился он к смущённой девушке.', 22, '2019-02-03 12:00:27', '1263701920.jpg', '320-1263701920.jpg'),
(16, 'Новый пост-8', 'поооьптатпррп', 22, '2019-02-03 13:42:41', '1408108519.jpg', '320-1408108519.jpg'),
(18, 'Новый пост-10', 'ннееннг', 22, '2019-02-03 14:49:42', '1229800288.jpg', '320-1229800288.jpg'),
(19, 'Новый пост-11', 'неегер', 22, '2019-02-03 15:04:48', '1335964519.jpg', '320-1335964519.jpg'),
(20, 'Новый пост-12', 'нненггкек', 22, '2019-02-03 15:05:07', '1300117858.jpg', '320-1300117858.jpg'),
(21, 'Новый пост-12', 'проверочка ноу фото', 22, '2019-02-03 15:17:12', NULL, NULL),
(22, 'Очень сильно длинное название заголовка поста для проверки обрезания', 'Какое-либо нибудь содержание', 22, '2019-02-03 17:15:26', '1318020434.jpg', '320-1318020434.jpg');

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
(22, 'info@mail.com', '$2y$10$0rAAKs6UsReCaA7oK9T9sul2VacBzc6dN43xnHUyjKbG5o/KA6Kqi', 'admin', 'Александр', 'Палеков', 'Витебск', 'Беларусь', '1357929123.jpg', '48-1357929123.jpg', 'QjvBVJCSqO4yAI5', 0),
(24, 'user@mail.com', '$2y$10$UpQnTJ.daXchDrshEDK5FOvGBDFED4U9TIQ0wexp52R7v8r1qLswa', 'user', 'Александр', 'Палеков', 'Витебск', 'Беларусь', '1369617092.jpg', '48-1369617092.jpg', NULL, NULL),
(27, 'info3@mail.com', '$2y$10$xRu4Eja4WjAS4HRGBCgr0Ov7axSf63p5D6peH7MfzjJzOYQq6gcje', 'user', 'Василий', 'Тёркин', '', '', '1301214902.bmp', '48-1301214902.bmp', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
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
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
