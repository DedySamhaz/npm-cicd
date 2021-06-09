import express from "express";
import bodyParser from "body-parser";

const app = express();

const PORT = 8080;
const HOST = '0.0.0.0';

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.get('/', (req, res) => {
  res.send('Hello Ddy');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
