const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  //password: "Wg18509238",
  database: "db_av",
});

module.exports = connection;
