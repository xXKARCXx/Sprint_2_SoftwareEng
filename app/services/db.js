const mysql = require("mysql2/promise");

const pool = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "", // Update if your MySQL has a password
    database: "your_database_name", // Change to your actual database name
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

// Helper function to execute queries
async function query(sql, params) {
    try {
        const [rows] = await pool.execute(sql, params);
        return rows;
    } catch (err) {
        console.error("Database Error: ", err);
        throw err;
    }
}

// Fetch all users
async function getUsers() {
    return await query("SELECT id, username, email FROM Users");
}

// Fetch all games
async function getGames() {
    return await query("SELECT id, game_name, genre FROM Games");
}

// Fetch all tips with user and game details
async function getTips() {
    return await query(`
        SELECT Tips_Table.id, Users.username AS author, Games.game_name AS game, 
               Tips_Table.title, Tips_Table.description 
        FROM Tips_Table 
        JOIN Users ON Tips_Table.user_id = Users.id 
        JOIN Games ON Tips_Table.game_id = Games.id
    `);
}

module.exports = { query, getUsers, getGames, getTips };
