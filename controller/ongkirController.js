const { db, dbQuery } = require("../config");
var RajaOngkir = require("rajaongkir-nodejs").Starter(
  "63b5cc834bb0e38090a2b629da2ca394"
);

module.exports = {
  getCity: (req, res) => {
    RajaOngkir.getCities()
      .then(function (result) {
        let kota = [];
        result.rajaongkir.results.map((item) => {
          kota.push({ id: item.city_id, city: item.city_name });
        });
        // console.log(kota);
        res.status(200).send(kota);
      })
      .catch(function (error) {
        next(error);
      });
  },
  postKotaToDatabase: (req, res) => {
    try {
      let insertKota;
      RajaOngkir.getCities()
        .then(function (result) {
          let kota = [];
          result.rajaongkir.results.map((item) => {
            kota.push({ id: item.city_id, city: item.city_name });
          });
          // console.log(kota);
          kota.forEach((item) => {
            return dbQuery(
              `Insert into kota (idkota, kota) values (${db.escape(
                item.id
              )},${db.escape(item.city)});`
            );
          });

          get = dbQuery(`select * from kota`);

          // console.log(get);
          res.status(200).send(get);
        })
        .catch(function (error) {
          console.log(error);
        });
    } catch (err) {
      next(err);
    }
  },
  shippingCost: (req, res) => {
    const params = {
      origin: req.body.origin,
      destination: req.body.destination,
      weight: req.body.weight,
    };
    RajaOngkir.getJNECost(params)
      .then(function (result) {
        let cost = [];
        result.rajaongkir.results.map((item) => {
          item.costs.map((item) => {
            cost.push({ cost: item.cost });
          });
        });
        res.status(200).send(cost);
      })
      .catch(function (error) {
        next(error);
      });
  },
};
