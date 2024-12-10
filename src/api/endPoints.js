const express = require("express");
const router = express.Router();

const { enviarcorre } = require("../controllers/enviarcorre");

router.post("/enviarcorreo", enviarcorre);

module.exports = router;
