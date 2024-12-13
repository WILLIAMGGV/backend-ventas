const connection = require("../models/db");
const jwt = require("jsonwebtoken");

module.exports.obtenerlista = async (req, res) => {
  try {
    connection.query(
      "SELECT * FROM av_landing", // Consulta para seleccionar todos los registros
      (err, results) => {
        if (err) {
          return res.status(500).send(err); // Manejo de errores
        }
        console.log(results);
        res.send(results); // Envía los resultados como respuesta
      }
    );
  } catch (e) {
    console.error(e); // Manejo de errores en el bloque catch
    res.status(500).send({ message: "Error en el servidor" });
  }
};
