-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 08:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `email`, `password`, `photo`) VALUES
(2, 'a', 'b', 'female', '1990-01-01', 'a@gmail.com', '$2a$08$tr2YNCjR1kjM2tzBnnqwz.Mjmqsbp3Wh8N1YOXsPuKLKnOHcQFdgS', 'd.jpg'),
(3, 'b', 'c', 'female', '2000-01-01', 'b@gmail.com', '$2a$08$TjqCeZce/EFx93HdAaTO9O7IrZVZlKiIULKpjiAxSBjLnUDfXd8V2', ''),
(4, 'd', 'e', 'female', '2020-01-01', 'c@gmail.com', '$2a$08$BgZK5I7PUzyaYgIVENsvEOJogkSiuv5gsFcUEgqzSc2p2x4quACQy', ''),
(5, 'Nazmun ', 'Nahar', 'female', '2000-08-02', 'nazmunnahar@gmail.com', '$2a$08$KxN6//m5V0I9IQAeWRiLLOpbbOygHTHYovvpY4gYBlnAsdeNR9Q.2', 'd.jpg'),
(6, 'mim', 'bari', 'female', '2000-01-01', 'mim@gmail.com', '$2a$08$MySzFBtKqEwq7apJLXv4aeb/O7up9SsiFeYFuvgTjG8G3cQqgaBPq', 'image(1).jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
