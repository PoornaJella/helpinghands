/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - orphanage
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `orphanage`;

USE `orphanage`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `food_requests` */

DROP TABLE IF EXISTS `food_requests`;

CREATE TABLE `food_requests` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `timing` varchar(100) DEFAULT NULL,
  `oemail` varchar(100) DEFAULT NULL,
  `stz` varchar(100) DEFAULT 'New',
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `orphanage` */

DROP TABLE IF EXISTS `orphanage`;

CREATE TABLE `orphanage` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `orphange_food_details` */

DROP TABLE IF EXISTS `orphange_food_details`;

CREATE TABLE `orphange_food_details` (
  `email` varchar(500) NOT NULL,
  `date` varchar(100) NOT NULL,
  `timing` varchar(100) NOT NULL,
  `stz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`,`date`,`timing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `other_requests` */

DROP TABLE IF EXISTS `other_requests`;

CREATE TABLE `other_requests` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `oemail` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `stz` varchar(100) DEFAULT 'New',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `v1` varchar(100) DEFAULT NULL,
  `v2` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `today_request` */

DROP TABLE IF EXISTS `today_request`;

CREATE TABLE `today_request` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `timing` varchar(100) DEFAULT NULL,
  `oemail` varchar(100) DEFAULT NULL,
  `stz` varchar(100) DEFAULT 'New',
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
