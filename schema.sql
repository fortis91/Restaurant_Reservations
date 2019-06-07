DROP DATABASE IF EXISTS restaurant;
CREATE DATABASE restaurant;

use restaurant;
CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `email` varchar (50),
  `unique_id` int(5) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO reservation
    (name, phone_number, email)
        VALUES('Nigel', 1111111, 'test@email.com');
INSERT INTO reservation
    (name, phone_number, email)
        VALUES('Daniel', 222222, 'test@email.com');
INSERT INTO reservation
    (name, phone_number, email)
        VALUES('Justin', 3333333, 'test@email.com');
INSERT INTO reservation
    (name, phone_number, email)
        VALUES('Chris', 4444444, 'test@email.com');

use restaurant;
CREATE TABLE `waitlist` (
  `waitlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone_number` int(10) NOT NULL,
  PRIMARY KEY (`waitlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;