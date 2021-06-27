-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: ekspedisi
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `iddata` int NOT NULL AUTO_INCREMENT,
  `jenis_barang` varchar(45) NOT NULL,
  `nama_pengirim` varchar(45) NOT NULL,
  `nama_penerima` varchar(45) NOT NULL,
  `idusers` int DEFAULT NULL,
  `alamat` varchar(500) NOT NULL,
  `kota_asal` int NOT NULL,
  `kota_penerima` int NOT NULL,
  `berat_barang` int NOT NULL,
  `harga` int NOT NULL,
  `telp_penerima` bigint NOT NULL,
  `resi` varchar(45) NOT NULL,
  `tanggal_input` varchar(45) NOT NULL,
  `idstatus` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddata`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (31,'Elektronik','Reza Hadrianto','Mochamad Rakha',0,'Komplek ga tau dimana no 15',22,151,2000,22000,8112264420,'PWX#527991','27/6/2021-12:6:16',1),(32,'Elektronik','Reza Hadrianto','Mochamad Rakha',0,'Komplek ga tau dimana no 15',22,151,2000,22000,8112264420,'PWX#52714','27/6/2021-12:6:37',1),(33,'Elektronik','Reza Hadrianto','Mochamad Rakha',0,'Komplek ga tau dimana no 15',22,151,2000,22000,8112264420,'PWX#52736','27/6/2021-12:6:57',1),(34,'Elektronik','Reza Hadrianto','Mochamad Rakha',0,'Komplek ga tau dimana no 15',22,151,2000,22000,8112264420,'PWX#52784','27/6/2021-12:7:24',1),(35,'Elektronik','Reza Hadrianto','Mochamad Rakha',0,'Komplek ga tau dimana no 15',22,151,2000,22000,8112264420,'PWX#527240','27/6/2021-12:7:56',1),(36,'Elektronik','Reza Hadrianto','Mochamad Rakha',0,'Komplek ga tau dimana no 15',22,151,2000,22000,8112264420,'PWX#527928','27/6/2021-12:8:21',1),(37,'Elektronik','Reza Hadrianto','Mochamad Rakha',0,'Komplek ga tau dimana no 15',22,151,2000,22000,8112264420,'PWX#527874','27/6/2021-12:8:36',1),(38,'Elektronik','Reza Hadrianto','Mochamad Rakha',0,'Komplek ga tau dimana no 15',22,151,2000,22000,8112264420,'PWX#527367','27/6/2021-12:9:1',1);
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kota`
--

DROP TABLE IF EXISTS `kota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kota` (
  `idkota` int NOT NULL AUTO_INCREMENT,
  `kota` varchar(45) NOT NULL,
  PRIMARY KEY (`idkota`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kota`
--

LOCK TABLES `kota` WRITE;
/*!40000 ALTER TABLE `kota` DISABLE KEYS */;
INSERT INTO `kota` VALUES (1,'Aceh Barat'),(2,'Aceh Barat Daya'),(3,'Aceh Besar'),(4,'Aceh Jaya'),(5,'Aceh Selatan'),(6,'Aceh Singkil'),(7,'Aceh Tamiang'),(8,'Aceh Tengah'),(9,'Aceh Tenggara'),(10,'Aceh Timur'),(11,'Aceh Utara'),(12,'Agam'),(13,'Alor'),(14,'Ambon'),(15,'Asahan'),(16,'Asmat'),(17,'Badung'),(18,'Balangan'),(19,'Balikpapan'),(20,'Banda Aceh'),(21,'Bandar Lampung'),(22,'Bandung'),(23,'Bandung'),(24,'Bandung Barat'),(25,'Banggai'),(26,'Banggai Kepulauan'),(27,'Bangka'),(28,'Bangka Barat'),(29,'Bangka Selatan'),(30,'Bangka Tengah'),(31,'Bangkalan'),(32,'Bangli'),(33,'Banjar'),(34,'Banjar'),(35,'Banjarbaru'),(36,'Banjarmasin'),(37,'Banjarnegara'),(38,'Bantaeng'),(39,'Bantul'),(40,'Banyuasin'),(41,'Banyumas'),(42,'Banyuwangi'),(43,'Barito Kuala'),(44,'Barito Selatan'),(45,'Barito Timur'),(46,'Barito Utara'),(47,'Barru'),(48,'Batam'),(49,'Batang'),(50,'Batang Hari'),(51,'Batu'),(52,'Batu Bara'),(53,'Bau-Bau'),(54,'Bekasi'),(55,'Bekasi'),(56,'Belitung'),(57,'Belitung Timur'),(58,'Belu'),(59,'Bener Meriah'),(60,'Bengkalis'),(61,'Bengkayang'),(62,'Bengkulu'),(63,'Bengkulu Selatan'),(64,'Bengkulu Tengah'),(65,'Bengkulu Utara'),(66,'Berau'),(67,'Biak Numfor'),(68,'Bima'),(69,'Bima'),(70,'Binjai'),(71,'Bintan'),(72,'Bireuen'),(73,'Bitung'),(74,'Blitar'),(75,'Blitar'),(76,'Blora'),(77,'Boalemo'),(78,'Bogor'),(79,'Bogor'),(80,'Bojonegoro'),(81,'Bolaang Mongondow (Bolmong)'),(82,'Bolaang Mongondow Selatan'),(83,'Bolaang Mongondow Timur'),(84,'Bolaang Mongondow Utara'),(85,'Bombana'),(86,'Bondowoso'),(87,'Bone'),(88,'Bone Bolango'),(89,'Bontang'),(90,'Boven Digoel'),(91,'Boyolali'),(92,'Brebes'),(93,'Bukittinggi'),(94,'Buleleng'),(95,'Bulukumba'),(96,'Bulungan (Bulongan)'),(97,'Bungo'),(98,'Buol'),(99,'Buru'),(100,'Buru Selatan'),(101,'Buton'),(102,'Buton Utara'),(103,'Ciamis'),(104,'Cianjur'),(105,'Cilacap'),(106,'Cilegon'),(107,'Cimahi'),(108,'Cirebon'),(109,'Cirebon'),(110,'Dairi'),(111,'Deiyai (Deliyai)'),(112,'Deli Serdang'),(113,'Demak'),(114,'Denpasar'),(115,'Depok'),(116,'Dharmasraya'),(117,'Dogiyai'),(118,'Dompu'),(119,'Donggala'),(120,'Dumai'),(121,'Empat Lawang'),(122,'Ende'),(123,'Enrekang'),(124,'Fakfak'),(125,'Flores Timur'),(126,'Garut'),(127,'Gayo Lues'),(128,'Gianyar'),(129,'Gorontalo'),(130,'Gorontalo'),(131,'Gorontalo Utara'),(132,'Gowa'),(133,'Gresik'),(134,'Grobogan'),(135,'Gunung Kidul'),(136,'Gunung Mas'),(137,'Gunungsitoli'),(138,'Halmahera Barat'),(139,'Halmahera Selatan'),(140,'Halmahera Tengah'),(141,'Halmahera Timur'),(142,'Halmahera Utara'),(143,'Hulu Sungai Selatan'),(144,'Hulu Sungai Tengah'),(145,'Hulu Sungai Utara'),(146,'Humbang Hasundutan'),(147,'Indragiri Hilir'),(148,'Indragiri Hulu'),(149,'Indramayu'),(150,'Intan Jaya'),(151,'Jakarta Barat'),(152,'Jakarta Pusat'),(153,'Jakarta Selatan'),(154,'Jakarta Timur'),(155,'Jakarta Utara'),(156,'Jambi'),(157,'Jayapura'),(158,'Jayapura'),(159,'Jayawijaya'),(160,'Jember'),(161,'Jembrana'),(162,'Jeneponto'),(163,'Jepara'),(164,'Jombang'),(165,'Kaimana'),(166,'Kampar'),(167,'Kapuas'),(168,'Kapuas Hulu'),(169,'Karanganyar'),(170,'Karangasem'),(171,'Karawang'),(172,'Karimun'),(173,'Karo'),(174,'Katingan'),(175,'Kaur'),(176,'Kayong Utara'),(177,'Kebumen'),(178,'Kediri'),(179,'Kediri'),(180,'Keerom'),(181,'Kendal'),(182,'Kendari'),(183,'Kepahiang'),(184,'Kepulauan Anambas'),(185,'Kepulauan Aru'),(186,'Kepulauan Mentawai'),(187,'Kepulauan Meranti'),(188,'Kepulauan Sangihe'),(189,'Kepulauan Seribu'),(190,'Kepulauan Siau Tagulandang Biaro (Sitaro)'),(191,'Kepulauan Sula'),(192,'Kepulauan Talaud'),(193,'Kepulauan Yapen (Yapen Waropen)'),(194,'Kerinci'),(195,'Ketapang'),(196,'Klaten'),(197,'Klungkung'),(198,'Kolaka'),(199,'Kolaka Utara'),(200,'Konawe'),(201,'Konawe Selatan'),(202,'Konawe Utara'),(203,'Kotabaru'),(204,'Kotamobagu'),(205,'Kotawaringin Barat'),(206,'Kotawaringin Timur'),(207,'Kuantan Singingi'),(208,'Kubu Raya'),(209,'Kudus'),(210,'Kulon Progo'),(211,'Kuningan'),(212,'Kupang'),(213,'Kupang'),(214,'Kutai Barat'),(215,'Kutai Kartanegara'),(216,'Kutai Timur'),(217,'Labuhan Batu'),(218,'Labuhan Batu Selatan'),(219,'Labuhan Batu Utara'),(220,'Lahat'),(221,'Lamandau'),(222,'Lamongan'),(223,'Lampung Barat'),(224,'Lampung Selatan'),(225,'Lampung Tengah'),(226,'Lampung Timur'),(227,'Lampung Utara'),(228,'Landak'),(229,'Langkat'),(230,'Langsa'),(231,'Lanny Jaya'),(232,'Lebak'),(233,'Lebong'),(234,'Lembata'),(235,'Lhokseumawe'),(236,'Lima Puluh Koto/Kota'),(237,'Lingga'),(238,'Lombok Barat'),(239,'Lombok Tengah'),(240,'Lombok Timur'),(241,'Lombok Utara'),(242,'Lubuk Linggau'),(243,'Lumajang'),(244,'Luwu'),(245,'Luwu Timur'),(246,'Luwu Utara'),(247,'Madiun'),(248,'Madiun'),(249,'Magelang'),(250,'Magelang'),(251,'Magetan'),(252,'Majalengka'),(253,'Majene'),(254,'Makassar'),(255,'Malang'),(256,'Malang'),(257,'Malinau'),(258,'Maluku Barat Daya'),(259,'Maluku Tengah'),(260,'Maluku Tenggara'),(261,'Maluku Tenggara Barat'),(262,'Mamasa'),(263,'Mamberamo Raya'),(264,'Mamberamo Tengah'),(265,'Mamuju'),(266,'Mamuju Utara'),(267,'Manado'),(268,'Mandailing Natal'),(269,'Manggarai'),(270,'Manggarai Barat'),(271,'Manggarai Timur'),(272,'Manokwari'),(273,'Manokwari Selatan'),(274,'Mappi'),(275,'Maros'),(276,'Mataram'),(277,'Maybrat'),(278,'Medan'),(279,'Melawi'),(280,'Merangin'),(281,'Merauke'),(282,'Mesuji'),(283,'Metro'),(284,'Mimika'),(285,'Minahasa'),(286,'Minahasa Selatan'),(287,'Minahasa Tenggara'),(288,'Minahasa Utara'),(289,'Mojokerto'),(290,'Mojokerto'),(291,'Morowali'),(292,'Muara Enim'),(293,'Muaro Jambi'),(294,'Muko Muko'),(295,'Muna'),(296,'Murung Raya'),(297,'Musi Banyuasin'),(298,'Musi Rawas'),(299,'Nabire'),(300,'Nagan Raya'),(301,'Nagekeo'),(302,'Natuna'),(303,'Nduga'),(304,'Ngada'),(305,'Nganjuk'),(306,'Ngawi'),(307,'Nias'),(308,'Nias Barat'),(309,'Nias Selatan'),(310,'Nias Utara'),(311,'Nunukan'),(312,'Ogan Ilir'),(313,'Ogan Komering Ilir'),(314,'Ogan Komering Ulu'),(315,'Ogan Komering Ulu Selatan'),(316,'Ogan Komering Ulu Timur'),(317,'Pacitan'),(318,'Padang'),(319,'Padang Lawas'),(320,'Padang Lawas Utara'),(321,'Padang Panjang'),(322,'Padang Pariaman'),(323,'Padang Sidempuan'),(324,'Pagar Alam'),(325,'Pakpak Bharat'),(326,'Palangka Raya'),(327,'Palembang'),(328,'Palopo'),(329,'Palu'),(330,'Pamekasan'),(331,'Pandeglang'),(332,'Pangandaran'),(333,'Pangkajene Kepulauan'),(334,'Pangkal Pinang'),(335,'Paniai'),(336,'Parepare'),(337,'Pariaman'),(338,'Parigi Moutong'),(339,'Pasaman'),(340,'Pasaman Barat'),(341,'Paser'),(342,'Pasuruan'),(343,'Pasuruan'),(344,'Pati'),(345,'Payakumbuh'),(346,'Pegunungan Arfak'),(347,'Pegunungan Bintang'),(348,'Pekalongan'),(349,'Pekalongan'),(350,'Pekanbaru'),(351,'Pelalawan'),(352,'Pemalang'),(353,'Pematang Siantar'),(354,'Penajam Paser Utara'),(355,'Pesawaran'),(356,'Pesisir Barat'),(357,'Pesisir Selatan'),(358,'Pidie'),(359,'Pidie Jaya'),(360,'Pinrang'),(361,'Pohuwato'),(362,'Polewali Mandar'),(363,'Ponorogo'),(364,'Pontianak'),(365,'Pontianak'),(366,'Poso'),(367,'Prabumulih'),(368,'Pringsewu'),(369,'Probolinggo'),(370,'Probolinggo'),(371,'Pulang Pisau'),(372,'Pulau Morotai'),(373,'Puncak'),(374,'Puncak Jaya'),(375,'Purbalingga'),(376,'Purwakarta'),(377,'Purworejo'),(378,'Raja Ampat'),(379,'Rejang Lebong'),(380,'Rembang'),(381,'Rokan Hilir'),(382,'Rokan Hulu'),(383,'Rote Ndao'),(384,'Sabang'),(385,'Sabu Raijua'),(386,'Salatiga'),(387,'Samarinda'),(388,'Sambas'),(389,'Samosir'),(390,'Sampang'),(391,'Sanggau'),(392,'Sarmi'),(393,'Sarolangun'),(394,'Sawah Lunto'),(395,'Sekadau'),(396,'Selayar (Kepulauan Selayar)'),(397,'Seluma'),(398,'Semarang'),(399,'Semarang'),(400,'Seram Bagian Barat'),(401,'Seram Bagian Timur'),(402,'Serang'),(403,'Serang'),(404,'Serdang Bedagai'),(405,'Seruyan'),(406,'Siak'),(407,'Sibolga'),(408,'Sidenreng Rappang/Rapang'),(409,'Sidoarjo'),(410,'Sigi'),(411,'Sijunjung (Sawah Lunto Sijunjung)'),(412,'Sikka'),(413,'Simalungun'),(414,'Simeulue'),(415,'Singkawang'),(416,'Sinjai'),(417,'Sintang'),(418,'Situbondo'),(419,'Sleman'),(420,'Solok'),(421,'Solok'),(422,'Solok Selatan'),(423,'Soppeng'),(424,'Sorong'),(425,'Sorong'),(426,'Sorong Selatan'),(427,'Sragen'),(428,'Subang'),(429,'Subulussalam'),(430,'Sukabumi'),(431,'Sukabumi'),(432,'Sukamara'),(433,'Sukoharjo'),(434,'Sumba Barat'),(435,'Sumba Barat Daya'),(436,'Sumba Tengah'),(437,'Sumba Timur'),(438,'Sumbawa'),(439,'Sumbawa Barat'),(440,'Sumedang'),(441,'Sumenep'),(442,'Sungaipenuh'),(443,'Supiori'),(444,'Surabaya'),(445,'Surakarta (Solo)'),(446,'Tabalong'),(447,'Tabanan'),(448,'Takalar'),(449,'Tambrauw'),(450,'Tana Tidung'),(451,'Tana Toraja'),(452,'Tanah Bumbu'),(453,'Tanah Datar'),(454,'Tanah Laut'),(455,'Tangerang'),(456,'Tangerang'),(457,'Tangerang Selatan'),(458,'Tanggamus'),(459,'Tanjung Balai'),(460,'Tanjung Jabung Barat'),(461,'Tanjung Jabung Timur'),(462,'Tanjung Pinang'),(463,'Tapanuli Selatan'),(464,'Tapanuli Tengah'),(465,'Tapanuli Utara'),(466,'Tapin'),(467,'Tarakan'),(468,'Tasikmalaya'),(469,'Tasikmalaya'),(470,'Tebing Tinggi'),(471,'Tebo'),(472,'Tegal'),(473,'Tegal'),(474,'Teluk Bintuni'),(475,'Teluk Wondama'),(476,'Temanggung'),(477,'Ternate'),(478,'Tidore Kepulauan'),(479,'Timor Tengah Selatan'),(480,'Timor Tengah Utara'),(481,'Toba Samosir'),(482,'Tojo Una-Una'),(483,'Toli-Toli'),(484,'Tolikara'),(485,'Tomohon'),(486,'Toraja Utara'),(487,'Trenggalek'),(488,'Tual'),(489,'Tuban'),(490,'Tulang Bawang'),(491,'Tulang Bawang Barat'),(492,'Tulungagung'),(493,'Wajo'),(494,'Wakatobi'),(495,'Waropen'),(496,'Way Kanan'),(497,'Wonogiri'),(498,'Wonosobo'),(499,'Yahukimo'),(500,'Yalimo'),(501,'Yogyakarta');
/*!40000 ALTER TABLE `kota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengiriman`
--

DROP TABLE IF EXISTS `pengiriman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengiriman` (
  `idpengiriman` int NOT NULL AUTO_INCREMENT,
  `idusers` int NOT NULL,
  `iddata` int NOT NULL,
  `idstatus` int NOT NULL DEFAULT '1',
  `resi` varchar(45) NOT NULL,
  PRIMARY KEY (`idpengiriman`),
  KEY `fk_iduser_idx` (`idusers`),
  KEY `fk_idstatus_idx` (`idstatus`),
  CONSTRAINT `fk_idstatus` FOREIGN KEY (`idstatus`) REFERENCES `status` (`idstatus`),
  CONSTRAINT `fk_iduser` FOREIGN KEY (`idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengiriman`
--

LOCK TABLES `pengiriman` WRITE;
/*!40000 ALTER TABLE `pengiriman` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengiriman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `idrole` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'courir'),(3,'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `desc_status` varchar(45) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Paket diproses'),(2,'Paket telah sampai di Gateway'),(3,'Paket akan dikirimkan ke Gateway'),(4,'Paket telah sampai di Gateway'),(5,'Paket akan dirkirim ke alamat penerima'),(6,'Paket telah diterima oleh');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_pengiriman`
--

DROP TABLE IF EXISTS `status_pengiriman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_pengiriman` (
  `idstatus_pengiriman` int NOT NULL AUTO_INCREMENT,
  `iddata` int NOT NULL,
  `idstatus` int NOT NULL,
  PRIMARY KEY (`idstatus_pengiriman`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_pengiriman`
--

LOCK TABLES `status_pengiriman` WRITE;
/*!40000 ALTER TABLE `status_pengiriman` DISABLE KEYS */;
INSERT INTO `status_pengiriman` VALUES (13,38,1);
/*!40000 ALTER TABLE `status_pengiriman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_user`
--

DROP TABLE IF EXISTS `status_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_user` (
  `idstatus_user` int NOT NULL AUTO_INCREMENT,
  `status_user` varchar(45) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`idstatus_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_user`
--

LOCK TABLES `status_user` WRITE;
/*!40000 ALTER TABLE `status_user` DISABLE KEYS */;
INSERT INTO `status_user` VALUES (1,'Active'),(2,'Non-Active');
/*!40000 ALTER TABLE `status_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimoni`
--

DROP TABLE IF EXISTS `testimoni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimoni` (
  `idtestimoni` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `testmoni` varchar(150) NOT NULL,
  PRIMARY KEY (`idtestimoni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimoni`
--

LOCK TABLES `testimoni` WRITE;
/*!40000 ALTER TABLE `testimoni` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimoni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `telp` varchar(45) NOT NULL,
  `idrole` int NOT NULL DEFAULT '1',
  `idstatus_user` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idusers`),
  KEY `fk_idstatus_user_idx` (`idstatus_user`),
  CONSTRAINT `` FOREIGN KEY (`idstatus_user`) REFERENCES `status_user` (`idstatus_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mrakhalf','Mochamad Rakha','mrakhalf@apeloe.com','q1r58sv4','08112264420',1,1),(2,'dadangs','Dadang Purwa','dadang@gmail.com','q1r58sv4','081233124141',2,1),(3,'ssafina','Sulthana Safina','safina@mail.com','abc123','081908144055',1,1),(4,'jarwoo','Sopo Jarwo','jarwo@mail.com','abc123','08119887767',2,1),(5,'mamang','Mamang','mamang@mail.com','abc123','085754546221',2,1),(6,'nana','Nana','nana@mail.com','abc123','081908144044',3,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-27 12:15:16
