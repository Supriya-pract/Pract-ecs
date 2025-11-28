const express = require('express');
const app = express();
const port = 3000;

app.get('/user', (req, res) => {
  res.send('Hello from User Service!');
});

app.listen(port, () => {
  console.log(`User service listening on port ${port}`);
});

