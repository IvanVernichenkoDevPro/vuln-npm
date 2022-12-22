const express = require('express');

// Constants
const PORT = process.env.PORT;
const HOST = process.env.HOST;

// Secrets:
// DB
const MY_DB_PASSWORD = process.env.DB_PASSWD; //;my$up3rs3cr3tp@$$word!';

// AWS
const MY_AWS_ACCESS_KEY_ID = process.env.AWS_ID;
const AWS_SECRET_ACCESS_KEY = process.env.AWS_KEY; 

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello World');
});

app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
});
