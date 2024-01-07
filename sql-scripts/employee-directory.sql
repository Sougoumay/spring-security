CREATE DATABASE  IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `employee`
--
SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `employee`;
DROP TABLE IF EXISTS `users_roles`;
DROP TABLE IF EXISTS `roles`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Data for table `employee`
--

INSERT INTO `employee` VALUES 
	(1,'Leslie','Andrews','leslie@net.com'),
	(2,'Emma','Baumgarten','emma@net.com'),
	(3,'Avani','Gupta','avani@net.com'),
	(4,'Yuri','Petrov','yuri@net.com'),
	(5,'Juan','Vega','juan@net.com');


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `username` varchar(50) NOT NULL,
    `password` char(80) NOT NULL,
    `active` tinyint NOT NULL,
    CONSTRAINT users_primary_key_id PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Inserting data for table `users`
--
-- NOTE: The passwords are encrypted using BCrypt
--
-- A generation tool is avail at: https://www.bcryptcalculator.com/
--
-- Default passwords here are: password
--

INSERT INTO `users` (`username`,`password`,`active`)
VALUES
    ('john','$2a$10$F03CPw7NfJKYZlAMWbnkVeo218YKKf15GugIWfaKtMAETH4ZF97sG',1),
    ('mary','$2a$10$F03CPw7NfJKYZlAMWbnkVeo218YKKf15GugIWfaKtMAETH4ZF97sG',1),
    ('susan','$2a$10$F03CPw7NfJKYZlAMWbnkVeo218YKKf15GugIWfaKtMAETH4ZF97sG',1);


--
-- Table structure for table `authorities`
--

CREATE TABLE `roles` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    CONSTRAINT `roles_primary_key_id` PRIMARY KEY (`id`)
);

--
-- Inserting data for table `authorities`
--

INSERT INTO `roles` (name)
VALUES
    ('ROLE_EMPLOYEE'),('ROLE_MANAGER'),('ROLE_ADMIN');


--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
   `user_id` int(11) NOT NULL,
   `role_id` int(11) NOT NULL,

   CONSTRAINT `users_roles_pk_user_id_role_id` PRIMARY KEY (`user_id`,`role_id`),

#    KEY `FK_ROLE_idx` (`role_id`),

   CONSTRAINT `users_fk_user_id` FOREIGN KEY (`user_id`)
       REFERENCES `users` (`id`)
       ON DELETE NO ACTION ON UPDATE NO ACTION,

   CONSTRAINT `roles_fk_role_id` FOREIGN KEY (`role_id`)
       REFERENCES `roles` (`id`)
       ON DELETE NO ACTION ON UPDATE NO ACTION
);

SET FOREIGN_KEY_CHECKS = 1;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (user_id,role_id)
VALUES
    (1, 1),
    (2, 1),
    (2, 2),
    (3, 1),
    (3, 2),
    (3, 3)





