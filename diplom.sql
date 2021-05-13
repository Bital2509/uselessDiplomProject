-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 14 2021 г., 00:25
-- Версия сервера: 5.7.25-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `user`, `img`, `title`) VALUES
(1, 2, 'https://sun9-29.userapi.com/impg/Fmq2IDgmPKiVNdBWHnEfXyzlBtE8HNwls_E07w/9lgcZIfUGDg.jpg?size=420x506&quality=96&sign=89915bfc1431eb743c31e858fae976d8&type=album', 'rabbit mem');

-- --------------------------------------------------------

--
-- Структура таблицы `item`
--

CREATE TABLE `item` (
  `id` int(11) UNSIGNED NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `item`
--

INSERT INTO `item` (`id`, `img`, `title`) VALUES
(1, 'https://sun9-5.userapi.com/impg/dhlifb_ZhesOznpOGPC6a7sfkHoIpMgRvh-8RA/Anc1BXpjlwU.jpg?size=498x498&quality=96&sign=36b9c5485a508b5e99fa94c8074e57e1&type=album', 'Cat mem'),
(2, 'https://sun9-29.userapi.com/impg/Fmq2IDgmPKiVNdBWHnEfXyzlBtE8HNwls_E07w/9lgcZIfUGDg.jpg?size=420x506&quality=96&sign=89915bfc1431eb743c31e858fae976d8&type=album', 'rabbit mem'),
(3, 'https://sun9-4.userapi.com/impg/CFlv4W9oJ91UmPKYkg9kduq3y1-CNB7Lwa7MZQ/zzTdOya03Zg.jpg?size=510x549&quality=96&sign=faf8a343cbc03c2acfbc0103c0db5ba6&type=album', 'Cat mem 2');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `group`) VALUES
(1, 'test', 'test@test.ru', 'test', '1'),
(2, 'admin', 'admin@admin.ru', 'admin', '0');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `item`
--
ALTER TABLE `item`
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
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
