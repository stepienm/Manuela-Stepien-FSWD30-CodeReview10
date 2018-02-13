-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Feb 2018 um 15:53
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_manuela_stepien_biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `firstName` varchar(55) DEFAULT NULL,
  `lastName` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `author`
--

INSERT INTO `author` (`author_id`, `firstName`, `lastName`) VALUES
(1, 'Astrid', 'Korten'),
(2, 'Elena', 'Ferrante'),
(3, 'Joanne K.', 'Rowling'),
(4, 'Joanne K.', 'Rowling'),
(5, 'Stephen,', 'King'),
(6, 'Stephen', 'King');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `genre`
--

INSERT INTO `genre` (`genre_id`, `name`) VALUES
(1, 'Psychotriller'),
(2, 'Roman'),
(3, 'Fantasy'),
(4, 'Science-Fiction');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `ISBN_code` int(11) DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `fk_author_id` int(11) DEFAULT NULL,
  `fk_genre_id` int(11) DEFAULT NULL,
  `fk_status_id` int(11) DEFAULT NULL,
  `fk_publisher_id` int(11) DEFAULT NULL,
  `fk_size_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `media`
--

INSERT INTO `media` (`media_id`, `title`, `image`, `description`, `ISBN_code`, `published_date`, `fk_author_id`, `fk_genre_id`, `fk_status_id`, `fk_publisher_id`, `fk_size_id`) VALUES
(1, 'Wo ist Jay?', 'https://www.skip.at/media/_versions/filme/1701/pger/1_zoom.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 45776, '2018-02-01', 1, 1, 1, 1, 2),
(2, 'Die Geschichte des verlorenen Kindes', 'https://www.skip.at/media/_versions/filme/1701/pger/1_zoom.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 45452, '2014-05-03', 2, 2, 2, 2, 3),
(3, 'Harry Potter und die Kammer des Schreckens', 'https://www.skip.at/media/_versions/filme/1701/pger/1_zoom.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 23965, '1990-04-11', 3, 3, 2, 2, 3),
(4, 'Harry Potter und die Heiligtümer des Todes', 'https://www.skip.at/media/_versions/filme/1701/pger/1_zoom.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 56921, '1992-08-10', 4, 3, 1, 2, 3),
(5, 'Der Turm', 'https://www.skip.at/media/_versions/filme/1701/pger/1_zoom.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 34495, '2012-03-02', 5, 4, 3, 3, 3),
(6, 'Wind', 'https://www.skip.at/media/_versions/filme/1701/pger/1_zoom.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 22305, '2014-10-10', 6, 3, 3, 3, 2),
(7, 'tot', 'https://www.skip.at/media/_versions/filme/1701/pger/1_zoom.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 44365, '2015-08-03', 6, 3, 2, 2, 3),
(8, 'Harry Potter und der Halbblutprinz', 'https://www.skip.at/media/_versions/filme/1701/pger/1_zoom.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 87231, '2001-04-01', 3, 3, 1, 1, 3),
(9, 'Mind Control', 'https://www.skip.at/media/_versions/filme/1701/pger/1_zoom.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 68235, '2016-11-12', 6, 1, 3, 2, 3),
(10, 'Ein plötzlicher Todesfall', '', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 48236, '2012-12-12', 3, 2, 1, 2, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media_status`
--

CREATE TABLE `media_status` (
  `status_id` int(11) NOT NULL,
  `standing` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `media_status`
--

INSERT INTO `media_status` (`status_id`, `standing`) VALUES
(1, 'borrow'),
(2, 'here'),
(3, 'reserved');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`) VALUES
(1, 'Independently published'),
(2, 'Carlsen'),
(3, 'Random House GmbH');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `size`
--

INSERT INTO `size` (`size_id`, `name`) VALUES
(1, 'small'),
(2, ' medium'),
(3, 'large');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `email` varchar(155) DEFAULT NULL,
  `users_password` varchar(55) DEFAULT NULL,
  `fk_media_id` int(11) DEFAULT NULL,
  `fk_media_status_id` int(11) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`users_id`, `email`, `users_password`, `fk_media_id`, `fk_media_status_id`, `name`) VALUES
(1, 'alfred_olaf@hotmail.com', 'ich bin der alfred!', 6, 2, 'Alfred'),
(2, 'nelson_kate@gmail.com', 'i_like_dogs', 8, 1, 'Kate'),
(3, 'iva_beckett@hotmail.com', '03-02.1993-love', 10, 1, 'Iva');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indizes für die Tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_author_id` (`fk_author_id`),
  ADD KEY `fk_genre_id` (`fk_genre_id`),
  ADD KEY `fk_status_id` (`fk_status_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`),
  ADD KEY `fk_size_id` (`fk_size_id`);

--
-- Indizes für die Tabelle `media_status`
--
ALTER TABLE `media_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indizes für die Tabelle `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD KEY `fk_media_id` (`fk_media_id`),
  ADD KEY `fk_media_status_id` (`fk_media_status_id`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_genre_id`) REFERENCES `genre` (`genre_id`),
  ADD CONSTRAINT `media_ibfk_3` FOREIGN KEY (`fk_status_id`) REFERENCES `media_status` (`status_id`),
  ADD CONSTRAINT `media_ibfk_4` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`),
  ADD CONSTRAINT `media_ibfk_5` FOREIGN KEY (`fk_size_id`) REFERENCES `size` (`size_id`);

--
-- Constraints der Tabelle `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`fk_media_id`) REFERENCES `media` (`media_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`fk_media_status_id`) REFERENCES `media_status` (`status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
