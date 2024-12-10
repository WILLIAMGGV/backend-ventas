const connection = require("../models/db");
const jwt = require("jsonwebtoken");
const { Resend } = require("resend");

const resend = new Resend("re_bB7iUQmS_8LB8xHkSg2Jzcv33hzpuaqfv");

const bcryptjs = require("bcryptjs");

module.exports.enviarcorre = async (req, res) => {
  const { nombre, apellido, telefono, email } = req.body;

  const { data, error } = await resend.emails.send({
    from: "Acme <onboarding@resend.dev>",
    to: ["william.gv@asistentevirtualsas.com"],
    subject: "Hello World",
    html: "<strong>It works!</strong>",
  });

  if (error) {
    return console.error({ error });
  }

  console.log(data);

  try {
    connection.query(
      "INSERT INTO av_landing (nombre, apellido, telefono, email) VALUES (?, ?, ?, ?)",
      [nombre, apellido, telefono, email],
      (err3, result3) => {
        if (err3) {
          return res.status(500).send(err3);
        }
        console.log(result3);
        res.send({ message: "guardado", data: data });
      }
    );
  } catch (e) {}
};
