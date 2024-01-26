-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 22, 2024 at 09:12 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dog_shelter`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `availability_status`
--

CREATE TABLE `availability_status` (
  `availability_status_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `availability_status`
--

INSERT INTO `availability_status` (`availability_status_id`, `status`) VALUES
(1, 'Available for Adoption'),
(2, 'Pending Adoption'),
(3, 'Adopted'),
(4, 'On Hold'),
(5, 'Not Available');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `behavior`
--

CREATE TABLE `behavior` (
  `behavior_id` int(10) UNSIGNED NOT NULL,
  `behavior_name` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `behavior`
--

INSERT INTO `behavior` (`behavior_id`, `behavior_name`) VALUES
(1, 'Friendly'),
(2, 'Energetic'),
(3, 'Shy'),
(4, 'Aggressive'),
(5, 'Playful'),
(6, 'Calm'),
(7, 'Adaptable'),
(8, 'Other');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `breed`
--

CREATE TABLE `breed` (
  `breed_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breed`
--

INSERT INTO `breed` (`breed_id`, `name`) VALUES
(1, 'Labrador'),
(2, 'Beagle'),
(3, 'Golden Retriever'),
(4, 'German Shepherd'),
(5, 'Bulldog'),
(6, 'Poodle'),
(7, 'Siberian Husky'),
(8, 'Boxer');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dog`
--

CREATE TABLE `dog` (
  `dog_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `age` int(32) UNSIGNED NOT NULL,
  `photo_name` varchar(32) NOT NULL,
  `description` text DEFAULT NULL,
  `sex` varchar(1) NOT NULL,
  `breed_id` int(10) UNSIGNED NOT NULL,
  `health_status_id` int(10) UNSIGNED NOT NULL,
  `behavior_id` int(10) UNSIGNED NOT NULL,
  `availability_status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dog`
--

INSERT INTO `dog` (`dog_id`, `name`, `age`, `photo_name`, `description`, `sex`, `breed_id`, `health_status_id`, `behavior_id`, `availability_status_id`) VALUES
(1, 'Buddy', 3, 'buddy.jpg', 'Friendly and playful Labrador', 'M', 1, 1, 5, 1),
(2, 'Molly', 2, 'molly.jpg', 'Energetic Beagle looking for an active family', 'F', 2, 1, 2, 1),
(3, 'Max', 4, 'max.jpg', 'Golden Retriever with a calm demeanor', 'M', 3, 1, 6, 3),
(4, 'Luna', 1, 'luna.jpg', 'German Shepherd with a friendly nature', 'F', 4, 1, 1, 1),
(5, 'Rocky', 2, 'rocky.jpg', 'Bulldog who loves to play and cuddle', 'M', 5, 2, 5, 1),
(6, 'Daisy', 3, 'daisy.jpg', 'Poodle with an adaptable personality', 'F', 6, 1, 7, 4),
(7, 'Cody', 2, 'cody.jpg', 'Siberian Husky with a playful spirit', 'M', 7, 1, 5, 1),
(8, 'Zoe', 1, 'zoe.jpg', 'Boxer with a friendly and affectionate nature', 'F', 8, 1, 5, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `health_status`
--

CREATE TABLE `health_status` (
  `health_status_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_status`
--

INSERT INTO `health_status` (`health_status_id`, `status`) VALUES
(1, 'Good'),
(2, 'Requires veterinary care'),
(3, 'Under veterinary supervision'),
(4, 'Other');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `availability_status`
--
ALTER TABLE `availability_status`
  ADD PRIMARY KEY (`availability_status_id`);

--
-- Indeksy dla tabeli `behavior`
--
ALTER TABLE `behavior`
  ADD PRIMARY KEY (`behavior_id`);

--
-- Indeksy dla tabeli `breed`
--
ALTER TABLE `breed`
  ADD PRIMARY KEY (`breed_id`);

--
-- Indeksy dla tabeli `dog`
--
ALTER TABLE `dog`
  ADD PRIMARY KEY (`dog_id`),
  ADD KEY `breed_id` (`breed_id`),
  ADD KEY `health_status_id` (`health_status_id`),
  ADD KEY `behavior_id` (`behavior_id`),
  ADD KEY `availability_status_id` (`availability_status_id`);

--
-- Indeksy dla tabeli `health_status`
--
ALTER TABLE `health_status`
  ADD PRIMARY KEY (`health_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `availability_status`
--
ALTER TABLE `availability_status`
  MODIFY `availability_status_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `behavior`
--
ALTER TABLE `behavior`
  MODIFY `behavior_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `breed`
--
ALTER TABLE `breed`
  MODIFY `breed_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dog`
--
ALTER TABLE `dog`
  MODIFY `dog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `health_status`
--
ALTER TABLE `health_status`
  MODIFY `health_status_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dog`
--
ALTER TABLE `dog`
  ADD CONSTRAINT `dog_ibfk_1` FOREIGN KEY (`breed_id`) REFERENCES `breed` (`breed_id`),
  ADD CONSTRAINT `dog_ibfk_2` FOREIGN KEY (`health_status_id`) REFERENCES `health_status` (`health_status_id`),
  ADD CONSTRAINT `dog_ibfk_3` FOREIGN KEY (`behavior_id`) REFERENCES `behavior` (`behavior_id`),
  ADD CONSTRAINT `dog_ibfk_4` FOREIGN KEY (`availability_status_id`) REFERENCES `availability_status` (`availability_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
