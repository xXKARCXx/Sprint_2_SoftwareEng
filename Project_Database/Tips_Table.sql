-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 16, 2025 at 09:19 PM
-- Server version: 9.2.0
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd2-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Tips_Table`
--

CREATE TABLE `Tips_Table` (
  `id` int NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `game` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Tips_Table`
--

INSERT INTO `Tips_Table` (`id`, `author`, `title`, `description`, `game`) VALUES
(1, 'Anthony wite', 'how to mine diamonds', 'you need to get a gold pickaxe, to get that you need 3gold ingnots and 2 stick.I can be made on a crafting table', 'Minecraft'),
(2, 'Bradley Tores', 'Fastest Way to Level Up', 'Complete daily quests and farm XP in dungeons', 'World of Warcraft'),
(3, 'Mehul Mohan', 'Best Weapons in the Game', 'Use legendary weapons for maximum damage output', 'Elden Ring'),
(4, 'Duke Dennis', 'Best Dribble Moves', 'Equip elite dribble packages for quicker handles', 'NBA 2K24'),
(5, 'Mohammed Al-Farsi', 'Secret Locations for Loot', 'Check hidden caves near the mountains', 'Assassin\'s Creed Valhalla'),
(6, 'Darren Watkins', 'Speedrun Strategies', 'Use glitches to skip cutscenes and save time', 'Super Mario 64'),
(7, 'Aiden Carter', 'Survival Tips for Hardcore Mode', 'Always carry a water bucket to avoid fall damage', 'Minecraft'),
(8, 'Liam Thompson', 'Best Loadout for Ranked Matches', 'Use meta weapons with the right perks', 'Call of Duty: Warzone'),
(9, 'John Doe', 'How to Unlock Secret Skins', 'Complete all battle pass challenges', 'Fortnite'),
(10, 'Kenny Lucky', 'How to Master Competitive', 'Time your tricks perfectly', 'Skate 3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
