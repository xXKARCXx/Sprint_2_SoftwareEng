const mysql = require('mysql2/promise');
const pool = mysql.createPool({ host: 'localhost', user: 'root', password: '', database: 'your_database_name' });

async function query(sql, params) {
  const [rows] = await pool.execute(sql, params);
  return rows;
}

// Fetch all users
async function getUsers() {
  return await query("SELECT * FROM Users");
}

// Fetch all games
async function getGames() {
  return await query("SELECT * FROM Games");
}

// Fetch all tips with user and game details
async function getTips() {
  return await query(`
    SELECT 
      Tips_Table.id, 
      Users.username AS author,
      Games.game_name AS game,
      Tips_Table.title, 
      Tips_Table.description 
    FROM Tips_Table 
    JOIN Users ON Tips_Table.user_id = Users.id 
    JOIN Games ON Tips_Table.game_id = Games.id
  `);
}

module.exports = { query, getUsers, getGames, getTips };
