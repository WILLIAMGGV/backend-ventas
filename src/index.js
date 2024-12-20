require("dotenv").config();
const express = require("express");
const app = express();
const port = 4000;
const routes = require("./api/endPoints");
const cors = require("cors");

app.use(express.json());

app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  res.send("¡Hola, mundo!");
});

app.use(
  cors({
    origin: [process.env.ORIGIN, process.env.ORIGIN2],
    methods: ["GET", "POST", "DELETE"],
  })
);

console.log(process.env.ORIGIN);

app.use("/", routes);

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
