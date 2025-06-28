// index.js
const express = require('express');
const app = express();

// Middleware to parse JSON
app.use(express.json());

// Simple route
app.get('/', (req, res) => {
  res.send('Hello, world!');
});

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
