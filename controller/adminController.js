const { db, dbQuery } = require("../config");

module.exports = {
  addData: async (req, res, next) => {
    try {
      let {
        jenisbarang,
        namapengirim,
        username,
        namapenerima,
        alamat,
        kotaasal,
        kotapenerima,
        beratbarang,
        harga,
        telephonepenerima,
        resi,
        tanggalinput,
        idstatus,
      } = req.body;
      let add = `Insert into data (jenis_barang, nama_pengirim,idusers,nama_penerima,alamat,kota_asal,kota_penerima,berat_barang,harga,telp_penerima,resi,tanggal_input,idstatus)
            values (${db.escape(jenisbarang)}, ${db.escape(
        namapengirim
      )}, ${db.escape(username)}, ${db.escape(namapenerima)}, ${db.escape(
        alamat
      )},
            ${db.escape(kotaasal)}, ${db.escape(kotapenerima)}, ${db.escape(
        beratbarang
      )}, ${db.escape(harga)}, ${db.escape(telephonepenerima)}, ${db.escape(
        resi
      )},${db.escape(tanggalinput)},${db.escape(idstatus)});`;

      add = await dbQuery(add);

      let check = `select d.iddata, d.jenis_barang,d.nama_pengirim,idusers,d.nama_penerima,alamat,d.kota_asal,d.kota_penerima,d.berat_barang,d.harga,d.telp_penerima,d.resi,d.tanggal_input,k.kota as nama_kota_penerima,l.kota as nama_kota_asal from data d 
      join kota k on k.idkota = d.kota_penerima join kota l on l.idkota = d.kota_asal where d.resi=${db.escape(
        resi
      )}`;

      check = await dbQuery(check);

      let statusPengiriman = `insert into status_pengiriman (iddata,idstatus) values(${db.escape(
        check[0].iddata
      )},${db.escape(idstatus)})`;

      pengiriman = await dbQuery(statusPengiriman);
      res.status(201).send(check[0]);
    } catch (error) {
      next(error);
    }
  },
  getData: async (req, res, next) => {
    try {
      let getSQL,
        dataSearch = [];
      for (let prop in req.query) {
        if (prop.includes("idkota")) {
          let a = prop;
          const b = ["idkota"];
          a = a.replace(new RegExp(b.join("|"), "g"), "k.idkota");
          dataSearch.push(`${a} = ${db.escape(req.query[prop])}`);
        } else {
          dataSearch.push(`${prop} = ${db.escape(req.query[prop])}`);
        }
      }
      if (dataSearch.length > 0) {
        getSQL = `select sp.idstatus_pengiriman,sp.iddata,s.desc_status,d.nama_penerima,d.resi,k.kota as kota_penerima,d.idusers,l.kota as kota_asal,d.berat_barang,d.idstatus from status_pengiriman sp 
        join data d on sp.iddata = d.iddata join status s on sp.idstatus = s.idstatus join kota k on d.kota_penerima = k.idkota join kota l on d.kota_asal = l.idkota where ${dataSearch.join(
          " AND "
        )}`;
      } else {
        getSQL = `select sp.idstatus_pengiriman,sp.iddata,s.desc_status,d.nama_penerima,d.resi,k.kota as kota_penerima,d.idusers,l.kota as kota_asal,d.berat_barang,d.idstatus from status_pengiriman sp 
        join data d on sp.iddata = d.iddata join status s on sp.idstatus = s.idstatus join kota k on d.kota_penerima = k.idkota join kota l on d.kota_asal = l.idkota`;
      }

      let get = await dbQuery(getSQL);
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
  getPengirimanStatus: async (req, res, next) => {
    try {
      getSQL = `select p.*,d.jenis_barang,d.resi,d.tanggal_input,d.nama_pengirim,d.nama_penerima,d.alamat,d.telp_penerima,d.harga,k.kota as kota_asal,l.kota as kota_penerima,d.berat_barang,d.iddata from pengiriman p join data d on d.iddata = p.iddata join kota k on k.idkota = d.kota_asal join kota l on l.idkota=d.kota_penerima`;

      let get = await dbQuery(getSQL);
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
  getStatusAll: async (req, res, next) => {
    try {
      getSQL = `select * from status_pengiriman sp join status s on sp.idstatus = s.idstatus `;

      let get = await dbQuery(getSQL);
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
  addKonfirmasi: async (req, res, next) => {
    try {
      let add = `Insert into konfirmasi (idpengiriman, iddata,signature,penerima)
            values (${db.escape(req.body.idpengiriman)}, ${db.escape(
        req.body.iddata
      )}, ${db.escape(req.body.signature)}, ${db.escape(req.body.penerima)});`;

      add = await dbQuery(add);

      let check = `update pengiriman set idstatus=7 where idpengiriman=${db.escape(
        req.body.idpengiriman
      )}`;

      check = await dbQuery(check);

      let konfirmasi = `select * from konfirmasi`;

      konfirmasi = await dbQuery(konfirmasi);

      res.status(201).send(konfirmasi[0]);
    } catch (error) {
      next(error);
    }
  },
  getKonfirmasi: async (req, res, next) => {
    try {
      getSQL = `select * from konfirmasi k join data d on d.iddata = k.iddata join pengiriman p on p.idpengiriman = k.idpengiriman `;

      let get = await dbQuery(getSQL);
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
  getDataInputAdmin: async (req, res, next) => {
    try {
      getSQL =
        getSQL = `select d.iddata,d.jenis_barang,d.nama_pengirim,d.nama_penerima,d.idusers,d.alamat,d.berat_barang,d.harga,d.telp_penerima,d.resi,d.tanggal_input,s.*,k.kota as kota_asal,l.kota as kota_penerima from data d join status s on d.idstatus = s.idstatus join kota k on k.idkota = d.kota_asal  join kota l on l.idkota = d.kota_penerima`;
      let get = await dbQuery(getSQL);
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
  getAllData: async (req, res, next) => {
    try {
      let getSQL = `Select d.*, s.desc_status from data d join status s on d.idstatus = s.idstatus`;
      let getStatusPengiriman = `Select sp.*, s.desc_status, k.kota as asal, l.kota as tujuan, d.alamat, d.nama_penerima from status_pengiriman sp join status s on sp.idstatus = s.idstatus join data d on sp.iddata = d.iddata
      join kota k on k.idkota = d.kota_asal join kota l on l.idkota = d.kota_penerima;`;
      let getStatus = await dbQuery(getStatusPengiriman);
      let get = await dbQuery(getSQL);
      get.forEach((item) => {
        item.status = [];
        getStatus.forEach((el) => {
          if (item.iddata == el.iddata) {
            item.status.push(el);
          }
        });
      });
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
  barangTerkirim: async (req, res, next) => {
    try {
      getSQL = `Select d.*, s.desc_status from data d join status s on d.idstatus = s.idstatus where d.idstatus = 6`;
      let get = await dbQuery(getSQL);
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
};
