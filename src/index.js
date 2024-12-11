const express = require("express");
const app = express();
const port = 3002;
const routes = require("./api/endPoints");
const cors = require("cors");

app.use(express.json());

app.use(express.urlencoded({ extended: true }));

const allowedOrigins = [
  "https://ventat.asistentevirtualsas.com",
  "http://ventat.asistentevirtualsas.com",
  "http://localhost:3000",
];

app.use(
  cors({
    origin: function (origin, callback) {
      // Permitir solicitudes sin origen (como las que se hacen desde Postman)
      if (!origin || allowedOrigins.indexOf(origin) !== -1) {
        callback(null, true);
      } else {
        callback(new Error("No permitido por CORS"));
      }
    },
    methods: ["GET", "POST"],
  })
);

app.use("/", routes);

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
