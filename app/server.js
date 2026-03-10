const express = require('express');
const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
    res.send('DevOps Assignment App Running 🚀');
});

app.get('/health', (req, res) => {
    res.json({ status: 'OK', uptime: process.uptime() });
});

app.get('/version', (req, res) => {
    res.json({ version: '1.0.0' });
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});