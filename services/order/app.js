const express = require('express');
const app = express();
const port = 3001;

app.get('/order', (req, res) => {
  res.send('Hello from order Service!');
});

app.listen(port, () => {
  console.log(`Order service listening on port ${port}`);
});

