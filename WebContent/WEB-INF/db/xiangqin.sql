
DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `user_id` varchar(15) NOT NULL,
  `email` varchar(80) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `password` char(41) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




LOCK TABLES `Users` WRITE;

INSERT INTO `Users` VALUES ('MG1332004','cgao886@163.com','Angelo','admin');

UNLOCK TABLES;



DROP TABLE IF EXISTS `UsersExtra`;

CREATE TABLE `UsersExtra` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `address` varchar(80) NOT NULL,
  `city` varchar(30) NOT NULL,
  `province` char(2) NOT NULL,
  `signature` text,
  PRIMARY KEY (`user_id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




LOCK TABLES `UsersExtra` WRITE;
INSERT INTO `UsersExtra` VALUES ('MG1332004','高','超','盐城','南京','江苏','hello');

UNLOCK TABLES;



CREATE TABLE `userinfo` (
  `studentcard` varchar(45) NOT NULL,
  `studentname` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `signuature` varchar(45) NOT NULL,
  PRIMARY KEY (`studentcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




LOCK TABLES `userinfo` WRITE;

UNLOCK TABLES;