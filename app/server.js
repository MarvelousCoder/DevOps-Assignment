// const express = require('express');
// const app = express();

// const PORT = 3000;

// app.get('/', (req, res) => {
//     res.send('DevOps Assignment App Running 🚀');
// });

// app.get('/health', (req, res) => {
//     res.json({ status: 'OK', uptime: process.uptime() });
// });

// app.get('/version', (req, res) => {
//     res.json({ version: '1.0.0' });
// });

// app.listen(PORT, () => {
//     console.log(`Server running on port ${PORT}`);
// });

const express = require("express");
const path = require("path");

const app = express();
const PORT = 3000;

// Serve static files
app.use(express.static(path.join(__dirname, "public")));

// Health endpoint
app.get("/health", (req, res) => {
    res.json({
        status: "OK",
        service: "DevOps Assignment App",
        timestamp: new Date()
    });
});

// Version endpoint
app.get("/version", (req, res) => {
    res.json({
        version: "1.0.0",
        environment: "production"
    });
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});