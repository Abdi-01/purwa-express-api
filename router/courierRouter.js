const express = require("express");
const { readToken } = require("../config");
const router = express.Router();
const { courierController } = require("../controller");

router.post("/add-pengiriman", courierController.addPengiriman);
router.get("/get-pengiriman", courierController.getDataPengiriman);
router.get("/get-status", courierController.getStatusPengiriman);
router.patch("/update-status", courierController.updateStatus);
module.exports = router;
