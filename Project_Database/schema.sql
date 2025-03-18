-- Drop existing tables if they exist (to prevent duplication)
DROP TABLE IF EXISTS Tips_Table;
DROP TABLE IF EXISTS Games;
DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE Games (
  id INT AUTO_INCREMENT PRIMARY KEY,
  game_name VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL
);

CREATE TABLE Tips_Table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  game_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (game_id) REFERENCES Games(id)
);

INSERT INTO Users (username, email, password) VALUES
('player1', 'player1@email.com', 'pass123'),
('gamer2', 'gamer2@email.com', 'pass456');

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

-- Inserting sample data into Tips_Table
INSERT INTO Tips_Table (user_id, game_id, title, description) VALUES
(1, 1, 'Surviving the Night', 'Tips to survive your first night in Minecraft'),
(2, 2, 'Best Weapon Loadout', 'Best weapon loadout for Fortnite'),
(1, 3, 'Best Landing Spots', 'Best places to land in Apex Legends'),
(2, 4, 'Cyberware Guide', 'How to use cyberware in Cyberpunk 2077'),
(1, 5, 'Monster Hunting', 'Best strategies to hunt monsters in The Witcher 3'),
(2, 6, 'Killstreak Tips', 'How to get better killstreaks in Call of Duty'),
(1, 7, 'Best Agents', 'Ranking the best Valorant agents'),
(2, 8, 'Imposter Guide', 'How to win as an Imposter in Among Us'),
(1, 9, 'Fast Money Guide', 'How to make money fast in GTA V'),
(2, 10, 'Boss Fight Guide', 'Best strategies for Elden Ring bosses');
