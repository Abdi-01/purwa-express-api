const express = require("express");
const { ongkirController } = require("../controller");
const router = express.Router();

router.get("/getCity", ongkirController.getCity);
router.post("/postKota", ongkirController.postKotaToDatabase);
router.post("/cost", ongkirController.shippingCost);

module.exports = router;
