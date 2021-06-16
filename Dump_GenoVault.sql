 MySQL dump 10.13  Distrib 8.0.24, for Linux (x86_64)
--
-- Host: localhost    Database: genovaultdb
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accesstype` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES (1,'Public'),(2,'Private'),(3,'Group');
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assaytype`
--

DROP TABLE IF EXISTS `assaytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assaytype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `assaytype` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`assaytype`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assaytype`
--

LOCK TABLES `assaytype` WRITE;
/*!40000 ALTER TABLE `assaytype` DISABLE KEYS */;
INSERT INTO `assaytype` VALUES (1,'AMPLICON'),(2,'ATAC-seq'),(3,'Bisulfite-Seq'),(4,'ChIP-Seq'),(5,'DNase-Hypersensitivity'),(6,'Hi-C'),(7,'miRNA-Seq'),(8,'ncRNA-Seq'),(9,'CLONEEND'),(10,'RIP-Seq'),(11,'RNA-Seq'),(12,'Targeted-Capture'),(13,'WGA'),(14,'WGS'),(15,'WXS'),(16,'FAIRE-seq'),(17,'MBD-Seq'),(18,'MeDIP-Seq'),(19,'WCS'),(20,'POOLCLONE'),(21,'CLONE'),(22,'MNase-Seq'),(23,'MRE-Seq'),(24,'FINISHING'),(25,'Tn-Seq'),(26,'FL-cDNA'),(27,'OTHER');
/*!40000 ALTER TABLE `assaytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloudconfig`
--

DROP TABLE IF EXISTS `cloudconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cloudconfig` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(45) NOT NULL,
  `protocol` varchar(45) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `port` varchar(45) NOT NULL,
  `version` varchar(45) NOT NULL,
  `identity` varchar(45) NOT NULL,
  `credential` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloudconfig`
--

LOCK TABLES `cloudconfig` WRITE;
/*!40000 ALTER TABLE `cloudconfig` DISABLE KEYS */;
INSERT INTO `cloudconfig` VALUES (1,'openstack-swift','http','kilocontroller.pune.cdac.in','5000','v2.0','demo:demo','cdac123');
/*!40000 ALTER TABLE `cloudconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databasetype`
--

DROP TABLE IF EXISTS `databasetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `databasenumber` int NOT NULL,
  `databasename` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `databasenumber_UNIQUE` (`databasenumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasetype`
--

LOCK TABLES `databasetype` WRITE;
/*!40000 ALTER TABLE `databasetype` DISABLE KEYS */;
INSERT INTO `databasetype` VALUES (1,52,'genome');
/*!40000 ALTER TABLE `databasetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filetypes`
--

DROP TABLE IF EXISTS `filetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filetypes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filetypes`
--

LOCK TABLES `filetypes` WRITE;
/*!40000 ALTER TABLE `filetypes` DISABLE KEYS */;
INSERT INTO `filetypes` VALUES (1,'fastq'),(2,'sra'),(3,'bam'),(4,'vcf'),(5,'bed'),(6,'cram'),(7,'other');
/*!40000 ALTER TABLE `filetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gendertype` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`gendertype`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female'),(3,'Transgender'),(4,'No Gender');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geno_login`
--

DROP TABLE IF EXISTS `geno_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geno_login` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `user_active` int DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geno_login`
--

LOCK TABLES `geno_login` WRITE;
/*!40000 ALTER TABLE `geno_login` DISABLE KEYS */;
INSERT INTO `geno_login` VALUES (1,'admin','f69128b7232d72a66674d921d17b3d44',0),(2,'user','21232f297a57a5a743894a0e4a801fc3',0);
/*!40000 ALTER TABLE `geno_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geno_user`
--

DROP TABLE IF EXISTS `geno_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geno_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_first` varchar(45) NOT NULL,
  `user_last` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_dob` date NOT NULL,
  `user_org` varchar(45) NOT NULL,
  `user_mob` varchar(45) DEFAULT NULL,
  `user_address` varchar(45) DEFAULT NULL,
  `user_city` varchar(45) DEFAULT NULL,
  `user_state` varchar(45) DEFAULT NULL,
  `user_pincode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geno_user`
--

LOCK TABLES `geno_user` WRITE;
/*!40000 ALTER TABLE `geno_user` DISABLE KEYS */;
INSERT INTO `geno_user` VALUES (1,'Admin','admin','admin@gmail.com','2019-05-06','admin','12341567890','Innovation','XXYZ','XXXYY','411007'),(2,'user','user','user@gmail.com','2019-05-06','XXXX','45631171789','Innovation','ZZZZ','YYYYYYY','411007');
/*!40000 ALTER TABLE `geno_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarylayout`
--

DROP TABLE IF EXISTS `librarylayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarylayout` (
  `id` int NOT NULL AUTO_INCREMENT,
  `librarylayout` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`librarylayout`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarylayout`
--

LOCK TABLES `librarylayout` WRITE;
/*!40000 ALTER TABLE `librarylayout` DISABLE KEYS */;
INSERT INTO `librarylayout` VALUES (1,'SINGLE'),(2,'PAIRED');
/*!40000 ALTER TABLE `librarylayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libraryselection`
--

DROP TABLE IF EXISTS `libraryselection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libraryselection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `librarytype` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`librarytype`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libraryselection`
--

LOCK TABLES `libraryselection` WRITE;
/*!40000 ALTER TABLE `libraryselection` DISABLE KEYS */;
INSERT INTO `libraryselection` VALUES (1,'PCR'),(2,'Inverse rRNA'),(3,'PolyA'),(4,'RANDOM'),(5,'Oligo-dT'),(6,'cDNA'),(7,'unspecified'),(8,'Hybrid Selection'),(9,'size fractionation'),(10,'RANDOM PCR'),(11,'RT-PCR'),(12,'MDA'),(13,'ChIP'),(14,'DNase'),(15,'HMPR'),(16,'Reduced Representation'),(17,'CAGE'),(18,'MBD2 protein methyl-CpG binding domain'),(19,'5-methylcytidine antibody'),(20,'padlock probes capture method'),(21,'Restriction Digest'),(22,'RACE'),(23,'MNase'),(24,'OTHER');
/*!40000 ALTER TABLE `libraryselection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarysource`
--

DROP TABLE IF EXISTS `librarysource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarysource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `librarysource` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`librarysource`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarysource`
--

LOCK TABLES `librarysource` WRITE;
/*!40000 ALTER TABLE `librarysource` DISABLE KEYS */;
INSERT INTO `librarysource` VALUES (1,'GENOMIC'),(2,'TRANSCRIPTOMIC'),(3,'SYNTHETIC'),(4,'METAGENOMIC'),(5,'VIRAL RNA'),(6,'METATRANSCRIPTOMIC'),(7,'OTHER');
/*!40000 ALTER TABLE `librarysource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeltype`
--

DROP TABLE IF EXISTS `modeltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modeltype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeltype`
--

LOCK TABLES `modeltype` WRITE;
/*!40000 ALTER TABLE `modeltype` DISABLE KEYS */;
INSERT INTO `modeltype` VALUES (1,'NextSeq 500'),(2,'Illumina HiSeq 2500'),(3,'HiSeq X Ten'),(4,'Illumina HiSeq 4000'),(5,'Ion Torrent PGM'),(6,'Illumina HiSeq 2000'),(7,'Illumina HiSeq 3000'),(8,'Illumina HiSeq 1000'),(9,'Illumina MiSeq'),(10,'Ion Torrent Proton'),(11,'Illumina HiSeq 1500'),(12,'BGISEQ-500'),(13,'Illumina HiScanSQ'),(14,'AB SOLiD 4 System'),(15,'Illumina Genome Analyzer'),(16,'Illumina Genome Analyzer II'),(17,'Illumina Genome Analyzer IIx'),(18,'454 GS FLX Titanium'),(19,'MinION'),(20,'454 GS FLX+'),(21,'Helicos HeliScope'),(22,'NextSeq 550'),(23,'AB 5500xl Genetic Analyzer'),(24,'PacBio RS II'),(25,'Complete Genomics'),(26,'AB SOLiD 3 Plus System'),(27,'454 GS Junior'),(28,'PacBio RS'),(29,'454 GS FLX'),(30,'AB SOLiD System'),(31,'unspecified'),(32,'454 GS'),(33,'AB SOLiD System 3.0'),(34,'AB 3730xL Genetic Analyzer'),(35,'454 GS 20'),(36,'AB SOLiD System 2.0'),(37,'AB 5500 Genetic Analyzer'),(38,'OTHER');
/*!40000 ALTER TABLE `modeltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platform` (
  `id` int NOT NULL AUTO_INCREMENT,
  `platformtype` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`platformtype`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform`
--

LOCK TABLES `platform` WRITE;
/*!40000 ALTER TABLE `platform` DISABLE KEYS */;
INSERT INTO `platform` VALUES (1,'ILLUMINA'),(2,'ION_TORRENT'),(3,'BGISEQ'),(4,'ABI_SOLID'),(5,'LS454'),(6,'OXFORD_NANOPORE'),(7,'HELICOS'),(8,'PACBIO_SMRT'),(9,'COMPLETE_GENOMICS'),(10,'CAPILLARY'),(11,'OTHER');
/*!40000 ALTER TABLE `platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recentsearch`
--

DROP TABLE IF EXISTS `recentsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recentsearch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(155) NOT NULL,
  `access` varchar(45) NOT NULL,
  `organismname` varchar(45) NOT NULL,
  `accessionid` varchar(55) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recentsearch`
--

LOCK TABLES `recentsearch` WRITE;
/*!40000 ALTER TABLE `recentsearch` DISABLE KEYS */;
INSERT INTO `recentsearch` VALUES (1,'NA20847.GIH.low_coverage.cram','Public','Human','GVA20200108020720120'),(2,'BlastProgramAndDB.tar.gz','Private','Human','GVA2020010905190717'),(3,'NA21090.GIH.low_coverage.cram','Public','Human','GVA20200109050259159');
/*!40000 ALTER TABLE `recentsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_def`
--

DROP TABLE IF EXISTS `role_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_def` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_def`
--

LOCK TABLES `role_def` WRITE;
/*!40000 ALTER TABLE `role_def` DISABLE KEYS */;
INSERT INTO `role_def` VALUES (1,'admin'),(2,'user'),(3,'guest');
/*!40000 ALTER TABLE `role_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_list`
--

DROP TABLE IF EXISTS `server_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_list` (
  `server_id` int NOT NULL AUTO_INCREMENT,
  `server_name` varchar(45) NOT NULL,
  `server_ip` varchar(45) NOT NULL,
  `server_dir` varchar(45) NOT NULL,
  PRIMARY KEY (`server_id`),
  UNIQUE KEY `idserver_UNIQUE` (`server_id`),
  UNIQUE KEY `server_ip_UNIQUE` (`server_ip`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_list`
--

LOCK TABLES `server_list` WRITE;
/*!40000 ALTER TABLE `server_list` DISABLE KEYS */;
INSERT INTO `server_list` VALUES (1,'Admin','admin.com','/home/admin/genovault');
/*!40000 ALTER TABLE `server_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_server`
--

DROP TABLE IF EXISTS `user_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_server` (
  `user_id` int NOT NULL,
  `server_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_server`
--

LOCK TABLES `user_server` WRITE;
/*!40000 ALTER TABLE `user_server` DISABLE KEYS */;
INSERT INTO `user_server` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `user_server` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-07 17:10:35
