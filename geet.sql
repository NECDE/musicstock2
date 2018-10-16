-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2018 a las 15:25:31
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `geet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Bacon and Eggs', 2, 4, 'assets/images/artwork/clearday.jpg'),
(2, 'Pizza head', 5, 10, 'assets/images/artwork/energy.jpg'),
(3, 'Summer Hits', 3, 1, 'assets/images/artwork/goinghigher.jpg'),
(4, 'The movie soundtrack', 2, 9, 'assets/images/artwork/funkyelement.jpg'),
(5, 'Best of the Worst', 1, 3, 'assets/images/artwork/popdance.jpg'),
(6, 'Hello World', 3, 6, 'assets/images/artwork/ukulele.jpg'),
(7, 'Best beats', 4, 7, 'assets/images/artwork/sweet.jpg'),
(8, 'TOP50 SPOTIFLAY', 1, 6, 'assets/images/artwork/lala.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Mickey Mouse'),
(2, 'Goofy'),
(3, 'Bart Simpson'),
(4, 'Homer'),
(5, 'Bruce Lee'),
(6, 'Queen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `date`) VALUES
(2, 'asdasd', 'admin', '2018-10-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Acoustic Breeze', 1, 5, 8, '2:37', 'assets/music/bensound-acousticbreeze.mp3', 1, 3),
(2, 'A new beginning', 1, 5, 1, '2:35', 'assets/music/bensound-anewbeginning.mp3', 2, 1),
(3, 'Better Days', 1, 5, 2, '2:33', 'assets/music/bensound-betterdays.mp3', 3, 1),
(4, 'Buddy', 1, 5, 3, '2:02', 'assets/music/bensound-buddy.mp3', 4, 8),
(5, 'Clear Day', 1, 5, 4, '1:29', 'assets/music/bensound-clearday.mp3', 5, 1),
(6, 'Going Higher', 2, 1, 1, '4:04', 'assets/music/bensound-goinghigher.mp3', 1, 14),
(7, 'Funny Song', 2, 4, 2, '3:07', 'assets/music/bensound-funnysong.mp3', 2, 5),
(8, 'Funky Element', 2, 1, 3, '3:08', 'assets/music/bensound-funkyelement.mp3', 2, 2),
(9, 'Extreme Action', 2, 1, 4, '8:03', 'assets/music/bensound-extremeaction.mp3', 3, 3),
(10, 'Epic', 2, 4, 5, '2:58', 'assets/music/bensound-epic.mp3', 3, 2),
(11, 'Energy', 2, 1, 6, '2:59', 'assets/music/bensound-energy.mp3', 4, 0),
(12, 'Dubstep', 2, 1, 7, '2:03', 'assets/music/bensound-dubstep.mp3', 5, 0),
(13, 'Happiness', 3, 6, 8, '4:21', 'assets/music/bensound-happiness.mp3', 5, 0),
(14, 'Happy Rock', 3, 6, 9, '1:45', 'assets/music/bensound-happyrock.mp3', 4, 1),
(15, 'Jazzy Frenchy', 3, 6, 10, '1:44', 'assets/music/bensound-jazzyfrenchy.mp3', 3, 10),
(16, 'Little Idea', 3, 6, 1, '2:49', 'assets/music/bensound-littleidea.mp3', 2, 40),
(17, 'Memories', 3, 6, 2, '3:50', 'assets/music/bensound-memories.mp3', 1, 1),
(18, 'Moose', 4, 7, 1, '2:43', 'assets/music/bensound-moose.mp3', 5, 10),
(19, 'November', 4, 7, 2, '3:32', 'assets/music/bensound-november.mp3', 4, 12),
(20, 'Of Elias Dream', 4, 7, 3, '4:58', 'assets/music/bensound-ofeliasdream.mp3', 3, 2),
(21, 'Pop Dance', 4, 7, 2, '2:42', 'assets/music/bensound-popdance.mp3', 2, 10),
(22, 'Retro Soul', 4, 7, 5, '3:36', 'assets/music/bensound-retrosoul.mp3', 1, 2),
(23, 'Sad Day', 5, 2, 1, '2:28', 'assets/music/bensound-sadday.mp3', 1, 0),
(24, 'Sci-fi', 5, 2, 2, '4:44', 'assets/music/bensound-scifi.mp3', 2, 1),
(25, 'Slow Motion', 5, 2, 3, '3:26', 'assets/music/bensound-slowmotion.mp3', 3, 1),
(26, 'Sunny', 5, 2, 4, '2:20', 'assets/music/bensound-sunny.mp3', 4, 10),
(27, 'Sweet', 5, 2, 5, '5:07', 'assets/music/bensound-sweet.mp3', 5, 18),
(28, 'Tenderness ', 3, 3, 7, '2:03', 'assets/music/bensound-tenderness.mp3', 4, 0),
(29, 'The Lounge', 3, 3, 8, '4:16', 'assets/music/bensound-thelounge.mp3 ', 3, 11),
(30, 'Ukulele', 3, 3, 9, '2:26', 'assets/music/bensound-ukulele.mp3 ', 2, 1),
(31, 'Tomorrow', 3, 3, 1, '4:54', 'assets/music/bensound-tomorrow.mp3 ', 1, 8),
(32, 'Bohemian Rhapsody', 6, 8, 2, '10:10', 'assets/music/bohemian-rhapsody.mp3', 1, 186);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'reece-kenney', 'Reece', 'Kenney', 'Reece@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'donkey-kong', 'Donkey', 'Kong', 'Dk@yahoo.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'admin', 'Asd', 'Asd', 'Admin@adminasd.comasdasd', 'b26986ceee60f744534aaab928cc12df', '2018-10-03 00:00:00', 'tenor.gif'),
(4, 'necde', 'Necde', 'Lala', 'Asd@asd.cl', 'a3dcb4d229de6fde0db5686dee47145d', '2018-10-07 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'Jarmund', 'Bruno', 'Schmidt', 'Vanjackerbruno@gmail.com', '8749d7ae6eb08c3da221cf31162d2410', '2018-10-09 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
