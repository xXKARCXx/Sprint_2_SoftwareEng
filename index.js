"use strict";

// Include the app.js file.
// This will run the code.
console.log("entrypoint");
const app = require("./app/app.js");

const express = require("express");
const path = require("path");

const app = express();

// Serve static files from the 'static' folder
app.use(express.static("static"));

// Set frontpage.html as the default page
app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "static", "frontpage.html"));
});

// Start server on port 3000
app.listen(3000, () => {
    console.log("Server is running on http://localhost:3000");
  });