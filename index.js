// index.js
const express = require('express');
const app = express();
import UserRouter from './Routes/UserRouter.jS';
// Middleware to parse JSON
app.use(express.json());

// api endpoints
app.use('/api/user',UserRouter)
app.use('/api/PIM',PIM)
app.use('/api/AbsenceManagement',AbsentManagement)
app.get('/', (req, res) => {
  res.send('Hello, world!');
});

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
