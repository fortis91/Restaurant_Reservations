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
    (name, phone_number, email, unique_id)
        VALUES('Nigel', 1111111, 'test@email.com', 2);
INSERT INTO reservation
    (name, phone_number, email, unique_id)
        VALUES('Daniel', 222222, 'test@email.com', 3);
INSERT INTO reservation
    (name, phone_number, email, unique_id)
        VALUES('Justin', 3333333, 'test@email.com', 1);
INSERT INTO reservation
    (name, phone_number, email, unique_id)
        VALUES('Chris', 4444444, 'test@email.com', 3);

use restaurant;
CREATE TABLE `waitlist` (
  `waitlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone_number` int(10) NOT NULL,
  PRIMARY KEY (`waitlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;