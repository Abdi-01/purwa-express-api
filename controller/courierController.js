const { db, dbQuery } = require("../config");

module.exports = {
  addPengiriman: async (req, res, next) => {
    try {
      let add = `Insert into status_pengiriman (iddata, idstatus) 
            values (${db.escape(req.body.iddata)}, ${db.escape(
        req.body.idstatus
      )});`;

      let addStatus = `Insert into pengiriman (idusers, iddata, idstatus, resi,idcourier) 
            values (${db.escape(req.body.idusers)}, ${db.escape(
        req.body.iddata
      )}, ${db.escape(req.body.idstatus)}, ${db.escape(
        req.body.resi
      )},${db.escape(req.body.idcourier)});`;

      let update = `update data set idstatus=${db.escape(
        req.body.idstatus
      )} where iddata=${db.escape(req.body.iddata)}`;

      add = await dbQuery(add);
      addStatus = await dbQuery(addStatus);
      update = await dbQuery(update);
      res.status(201).send(add);
    } catch (error) {
      next(error);
    }
  },
  getDataPengiriman: async (req, res, next) => {
    try {
      getSQL = `select p.*,k.kota as kota_penerima,l.kota as kota_asal,s.desc_status,d.berat_barang,d.resi from pengiriman p join data d on p.iddata = d.iddata join status s on p.idstatus = s.idstatus join users u on  p.idusers = u.idusers join kota k on d.kota_penerima = k.idkota join kota l on l.idkota = d.kota_asal `;

      let get = await dbQuery(getSQL);
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
  getStatusPengiriman: async (req, res, next) => {
    try {
      getSQL = `select * from status `;

      let get = await dbQuery(getSQL);
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
  updateStatus: async (req, res, next) => {
    try {
      let statusPengiriman = `update pengiriman set idstatus=${db.escape(
        req.body.idstatus
      )} where idpengiriman = ${db.escape(req.body.idpengiriman)}`;

      pengiriman = await dbQuery(statusPengiriman);

      let insertStatusPengiriman = `insert into status_pengiriman (iddata,idstatus) values(${db.escape(
        req.body.iddata
      )},${db.escape(req.body.idstatus)})`;

      insertStatusPengiriman = await dbQuery(insertStatusPengiriman);

      let updateData = `update data set idstatus=${db.escape(
        req.body.idstatus
      )} where iddata = ${db.escape(req.body.iddata)}`;

      updateData = await dbQuery(updateData);

      res.status(201).send(pengiriman);
    } catch (error) {
      next(error);
    }
  },
};
