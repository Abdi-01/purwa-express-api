const express = require("express");
const { readToken } = require("../config");
const router = express.Router();
const { adminController } = require("../controller");

router.post("/add-data", adminController.addData);
router.get("/get-data", adminController.getData);
router.get("/get-input", adminController.getDataInputAdmin);
router.get("/get-pengiriman", adminController.getPengirimanStatus);
router.get("/get-status", adminController.getStatusAll);
router.get("/get-konfirmasi", adminController.getKonfirmasi);
router.post("/add-konfirmasi", adminController.addKonfirmasi);

module.exports = router;
