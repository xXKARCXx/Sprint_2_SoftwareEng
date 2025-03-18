-- phpMyAdmin SQL Dump 
-- version 5.2.2
-- https://www.phpmyadmin.net/
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

-- Drop existing tables if they exist (to prevent duplication)
DROP TABLE IF EXISTS Tips_Table;
DROP TABLE IF EXISTS Games;
DROP TABLE IF EXISTS Users;

-- Creating the Users table
CREATE TABLE Users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL UNIQUE,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

-- Creating the Games table
CREATE TABLE Games (
  id INT AUTO_INCREMENT PRIMARY KEY,
  game_name VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL
);

-- Creating the Tips Table
CREATE TABLE Tips_Table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  game_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (game_id) REFERENCES Games(id)
);

-- Insert sample users
INSERT INTO Users (username, email, password) VALUES
('player1', 'player1@email.com', 'pass123'),
('gamer2', 'gamer2@email.com', 'pass456');

-- Insert sample games
INSERT INTO Games (game_name, genre) VALUES
('Minecraft', 'Sandbox'),
('Fortnite', 'Battle Royale'),
('Apex Legends', 'Battle Royale'),
('Cyberpunk 2077', 'RPG'),
('The Witcher 3', 'RPG'),
('Call of Duty', 'FPS'),
('Valorant', 'FPS'),
('Among Us', 'Party'),
('GTA V', 'Action-Adventure'),
('Elden Ring', 'RPG');

-- Insert sample tips with correct relational references
INSERT INTO Tips_Table (user_id, game_id, title, description) VALUES
(1, 1, 'How to Mine Diamonds', 'You need to get a gold pickaxe, to get that you need 3 gold ingots and 2 sticks. It can be made on a crafting table.'),
(2, 2, 'Fastest Way to Level Up', 'Complete daily quests and farm XP in dungeons.'),
(1, 10, 'Best Weapons in the Game', 'Use legendary weapons for maximum damage output.'),
(2, 6, 'Best Dribble Moves', 'Equip elite dribble packages for quicker handles.'),
(1, 9, 'Secret Locations for Loot', 'Check hidden caves near the mountains.'),
(2, 4, 'Speedrun Strategies', 'Use glitches to skip cutscenes and save time.'),
(1, 1, 'Survival Tips for Hardcore Mode', 'Always carry a water bucket to avoid fall damage.'),
(2, 6, 'Best Loadout for Ranked Matches', 'Use meta weapons with the right perks.'),
(1, 2, 'How to Unlock Secret Skins', 'Complete all battle pass challenges.'),
(2, 3, 'How to Master Competitive', 'Time your tricks perfectly.');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
