-- Creating the Users table
CREATE TABLE Users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

-- Creating the Games table
CREATE TABLE Games (
  id INT AUTO_INCREMENT PRIMARY KEY,
  game_name VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL,
  release_date DATE NOT NULL
);

-- Creating the Tips_Table (Already exists, only keep if needed)
CREATE TABLE Tips_Table (
  id INT NOT NULL,
  author VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  game TEXT NOT NULL
);

-- Inserting sample data into Users table
INSERT INTO Users (username, email, password) VALUES
('player1', 'player1@email.com', 'pass123'),
('gamer2', 'gamer2@email.com', 'pass456');

-- Inserting sample data into Games table
INSERT INTO Games (game_name, genre, release_date) VALUES
('Minecraft', 'Sandbox', '2011-11-18'),
('Fortnite', 'Battle Royale', '2017-07-25');
