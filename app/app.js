const express = require("express");
const path = require("path");
const db = require("./services/db");

const app = express();

// Set view engine
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "pug");

// Serve static files (CSS, images, etc.)
app.use(express.static(path.join(__dirname, "../public"))); 

// Fetch all users
app.get("/users", async (req, res) => {
    try {
        const users = await db.getUsers();
        res.render("users", { data: users });
    } catch (err) {
        res.status(500).send("Error fetching users");
    }
});

// Fetch all games
app.get("/games", async (req, res) => {
    try {
        const games = await db.getGames();
        res.render("games", { data: games });
    } catch (err) {
        res.status(500).send("Error fetching games");
    }
});

// Fetch all tips with relational data
app.get("/tips", async (req, res) => {
    try {
        const tips = await db.getTips();
        res.render("all-tips", { data: tips });
    } catch (err) {
        res.status(500).send("Error fetching tips");
    }
});

// Start server
const PORT = 3000;
app.listen(PORT, () => console.log(`Server running on http://127.0.0.1:${PORT}`));
