const express = require('express');
const app = express();
const db = require('./services/db');

app.set('view engine', 'pug');
app.set('views', './views');

// Fetch all users
app.get("/users", async (req, res) => {
    db.getUsers().then(results => {
        res.render('users', { data: results });
    });
});

// Fetch all games
app.get("/games", async (req, res) => {
    db.getGames().then(results => {
        res.render('games', { data: results });
    });
});

// Fetch all tips with relational data
app.get("/tips", async (req, res) => {
    db.getTips().then(results => {
        res.render('all-tips', { data: results });
    });
});

app.listen(3000, () => console.log("Server running on port 3000"));
