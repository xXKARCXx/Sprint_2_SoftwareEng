-- Creating the Tips_Table (Already exists in your setup)
CREATE TABLE Tips_Table (
  id INT NOT NULL,
  author VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  game TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Creating Users Table
CREATE TABLE Users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creating Games Table
CREATE TABLE Games (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL UNIQUE,
  genre VARCHAR(100),
  release_year INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Adding Foreign Keys to Tips_Table
ALTER TABLE Tips_Table 
ADD COLUMN user_id INT NOT NULL AFTER id,
ADD COLUMN game_id INT NOT NULL AFTER user_id,
ADD FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE CASCADE,
ADD FOREIGN KEY (game_id) REFERENCES Games(id) ON DELETE CASCADE;
