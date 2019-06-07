DROP DATABASE IF EXISTS restaurant;
CREATE DATABASE restaurant;

use reservation;
CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `email` int(50),
  `unique_id` int(5) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;