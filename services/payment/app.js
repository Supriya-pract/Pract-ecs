const express = require('express');
const app = express();
const port = 3002;

app.get('/payment', (req, res) => {
  res.send('Hello from Payement Service!');
});

app.listen(port, () => {
  console.log(`Payment service listening on port ${port}`);
});

