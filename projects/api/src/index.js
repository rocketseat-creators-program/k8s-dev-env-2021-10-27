const express = require('express');
const bodyParser = require('body-parser');

const { User } = require('../models');

const app = express();
const port = 3000;

app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.post('/users/create', async (req, res) => {
  const { username } = req.body;
  const user = await User.create({ username });
  res.send(user);
});

app.get('/users', async (req, res) => {
  const users = await User.findAll();
  res.send(users);
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});

