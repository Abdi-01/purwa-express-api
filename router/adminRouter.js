const express = require("express");
const { readToken } = require("../config");
const router = express.Router();
const { adminController } = require("../controller");

router.post("/add-data", adminController.addData);
router.get("/get-data", adminController.getData);

module.exports = router;
