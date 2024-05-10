-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 10 2024 г., 08:53
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `travel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `remarks`
--

CREATE TABLE `remarks` (
  `ID_user` int(11) NOT NULL,
  `topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `remarks`
--

INSERT INTO `remarks` (`ID_user`, `topic`, `text`) VALUES
(1, 'Отзыв о туре', 'Советую слетать в Крым!'),
(3, 'Отзыв о туре', 'Это супер!'),
(1, 'АААААААААААА', 'ААААААААААА');

-- --------------------------------------------------------

--
-- Структура таблицы `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programm` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tours`
--

INSERT INTO `tours` (`id`, `name`, `programm`, `photo`) VALUES
(1, 'Крым', 'Тур по Крыму позволит вам погрузиться в атмосферу уникального культурного наследия этого региона, исследовать древние города, насладиться красотой Черного моря и попробовать местные кулинарные деликатесы.', 'img/Crimea1.jpg'),
(2, 'Кавказ', 'Путешествие по Кавказу откроет перед вами величественные горные пейзажи, древние крепости и уникальную архитектуру народов этого региона. Вы сможете познакомиться с гостеприимством местных жителей и насладиться богатым культурным наследием.', 'img/Kavkaz1.jpg'),
(3, 'Алтай', 'Тур по Алтаю станет настоящим приключением для любителей природы и активного отдыха. Здесь вас ждут живописные горные хребты, кристально чистые озера, дикие реки и буйные леса. Вы сможете попробовать себя в множестве экстремальных видов спорта и насладиться уединением в окружении дикой природы.', 'img/Altay1.jpg'),
(4, 'Санкт-Петербург', 'Путешествие по Санкт-Петербургу погрузит вас в атмосферу исторического и культурного центра России. Вы посетите уникальные музеи, познакомитесь с архитектурными шедеврами города, прогуляетесь по набережным Невы и насладитесь богатой культурной программой столицы северной столицы.', 'img/Piter1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Login` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`ID`, `Name`, `Login`, `Pass`) VALUES
(1, 'Иван', 'Ivan228', '11111'),
(2, 'Никита', 'Nikitozzz', '22222'),
(3, 'Роман', 'rom', '33333');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
