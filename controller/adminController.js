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
      console.log("check", check[0]);
      res.status(201).send(check[0]);
    } catch (error) {
      next(error);
    }
  },
  getData: async (req, res, next) => {
    try {
      getSQL = `select sp.idstatus_pengiriman,sp.iddata,s.desc_status,d.nama_penerima,d.resi from status_pengiriman sp 
        join data d on sp.iddata = d.iddata join status s on sp.idstatus = s.idstatus`;

      let get = await dbQuery(getSQL);
      res.status(200).send(get);
    } catch (error) {
      next(error);
    }
  },
};
