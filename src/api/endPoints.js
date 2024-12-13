const express = require("express");
const router = express.Router();

const { enviarcorre } = require("../controllers/enviarcorre");
const { obtenerlista } = require("../controllers/obtenerlistacontroller");

router.post("/enviarcorreo", enviarcorre);
router.get("/obtenerlista", obtenerlista);

module.exports = router;
