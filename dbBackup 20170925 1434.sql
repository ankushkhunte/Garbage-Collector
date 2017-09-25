-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.24a-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema test
--

CREATE DATABASE IF NOT EXISTS test;
USE test;

--
-- Definition of table `test`.`adminlogin`
--

DROP TABLE IF EXISTS `test`.`adminlogin`;
CREATE TABLE  `test`.`adminlogin` (
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) default NULL,
  PRIMARY KEY  (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`.`adminlogin`
--

/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;


--
-- Definition of table `test`.`appointment`
--

DROP TABLE IF EXISTS `test`.`appointment`;
CREATE TABLE  `test`.`appointment` (
  `APPID` int(11) NOT NULL,
  `USERNAME` varchar(255) default NULL,
  `FULLNAME` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `MOBNO` varchar(255) default NULL,
  `VENDORNAME` varchar(255) default NULL,
  `ITEMNAME` varchar(255) default NULL,
  `PRICE` varchar(255) default NULL,
  `QTYRANGE` varchar(255) default NULL,
  `BDATE` varchar(255) default NULL,
  `TIME` varchar(255) default NULL,
  `ADDRESS` varchar(255) default NULL,
  `VEMAIL` varchar(255) default NULL,
  `VMOBNO` varchar(255) default NULL,
  PRIMARY KEY  (`APPID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`.`appointment`
--

/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `test`.`appointment` (`APPID`,`USERNAME`,`FULLNAME`,`EMAIL`,`MOBNO`,`VENDORNAME`,`ITEMNAME`,`PRICE`,`QTYRANGE`,`BDATE`,`TIME`,`ADDRESS`,`VEMAIL`,`VMOBNO`) VALUES 
 (1,'Ankush','Ankush Khunte','ankushkhunte25@gmail.com','9975984615','Ramlal','Paper','22','Unlimited','2017-09-21','08:02','Near Kakde City,Flat No 7 Karve nagar,Pune.','ramlal@gmail.com','9562354185'),
 (2,'Ankush','Ankush Khunte','ankushkhunte25@gmail.com','9975984615','Babulal','ElectronicWastages','50','100 - 200','2017-09-21','11:00','Near Kakde City,Flat No 7 karve nagar, Pune.','babu@gmail.com','9123456523'),
 (3,'Ankush','Ankush Khunte','ankushkhunte25@gmail.com','9975984615','Babulal','Books_andExamPapers','12','Unlimited','2017-09-21','12:00','Near Kakde City,Flat No 7 karve nagar, Pune.','babu@gmail.com','9123456523'),
 (4,'Prashant','Prashant Mane','born2fly@gmail.com','9028577702','Ramlal','Paper','22','Unlimited','2017-09-22','12:00','Near Cummins College,Yashshree park,Flat No 10 karve nagar, Pune.','ramlal@gmail.com','9562354185');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;


--
-- Definition of table `test`.`feedback`
--

DROP TABLE IF EXISTS `test`.`feedback`;
CREATE TABLE  `test`.`feedback` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(255) default NULL,
  `VENDORNAME` varchar(255) default NULL,
  `FEEDBACK` varchar(255) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `test`.`feedback` (`ID`,`USERNAME`,`VENDORNAME`,`FEEDBACK`,`DESCRIPTION`) VALUES 
 (1,'Ankush','Ramlal','Very Good','Good Service .'),
 (2,'Ankush','Babulal','Very Good','Overall Good Service But they take more time to come doorstep. '),
 (3,'Prashant','Ramlal','Very Good','Good Service.I really impressed from their Service.');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `test`.`item`
--

DROP TABLE IF EXISTS `test`.`item`;
CREATE TABLE  `test`.`item` (
  `ITEMID` int(11) NOT NULL,
  `VENDORNAME` varchar(255) default NULL,
  `ITEMNAME` varchar(255) default NULL,
  `ITEMPRICE` varchar(255) default NULL,
  `ITEMQUANTITY` varchar(255) default NULL,
  `AREA` varchar(255) default NULL,
  PRIMARY KEY  (`ITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`.`item`
--

/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `test`.`item` (`ITEMID`,`VENDORNAME`,`ITEMNAME`,`ITEMPRICE`,`ITEMQUANTITY`,`AREA`) VALUES 
 (1,'Babulal','Paper','20','Unlimited','Karve road'),
 (2,'Babulal','ElectronicWastages','50','100 - 200','Karve road'),
 (3,'Babulal','Books_andExamPapers','12','Unlimited','Karve road'),
 (4,'Razak','Paper','18','Unlimited','Karve road'),
 (5,'Razak','ElectronicWastages','45','Unlimited','Karve road'),
 (6,'Razak','Books_andExamPapers','10','Unlimited','Karve road'),
 (7,'Ramlal','Paper','22','Unlimited','Karve road'),
 (8,'Ramlal','ElectronicWastages','48','Unlimited','Karve road');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


--
-- Definition of table `test`.`registration`
--

DROP TABLE IF EXISTS `test`.`registration`;
CREATE TABLE  `test`.`registration` (
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `MOBNO` varchar(255) default NULL,
  `CITY` varchar(255) default NULL,
  `PINCODE` int(11) default NULL,
  PRIMARY KEY  (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`.`registration`
--

/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `test`.`registration` (`USERNAME`,`PASSWORD`,`EMAIL`,`MOBNO`,`CITY`,`PINCODE`) VALUES 
 ('Ankush','ak47','ankushkhunte25@gmail.com','9975984615','Pune',411052),
 ('Prashant','prashant','born2fly@gmail.com','9028577702','Pune',411052);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;


--
-- Definition of table `test`.`vendorregisrtration`
--

DROP TABLE IF EXISTS `test`.`vendorregisrtration`;
CREATE TABLE  `test`.`vendorregisrtration` (
  `VENDORNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `MOBNO` varchar(255) default NULL,
  `CITY` varchar(255) default NULL,
  `ZIPCODE` int(11) default NULL,
  PRIMARY KEY  (`VENDORNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`.`vendorregisrtration`
--

/*!40000 ALTER TABLE `vendorregisrtration` DISABLE KEYS */;
INSERT INTO `test`.`vendorregisrtration` (`VENDORNAME`,`PASSWORD`,`EMAIL`,`MOBNO`,`CITY`,`ZIPCODE`) VALUES 
 ('Babulal','babulal','babu@gmail.com','9123456523','Pune',411030),
 ('Ramlal','ramlal','ramlal@gmail.com','9562354185','Pune',411055),
 ('Razak','razak','rajak@gmail.com','9852634175','Pune',411052);
/*!40000 ALTER TABLE `vendorregisrtration` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
