DROP SCHEMA IF EXISTS `cupcake`;

CREATE SCHEMA IF NOT EXISTS`cupcake`;
USE `cupcake`;

DROP TABLE IF EXISTS `cupcake`.`ordertails`;
DROP TABLE IF EXISTS `cupcake`.`topping`;
DROP TABLE IF EXISTS `cupcake`.`bottom`;
DROP TABLE IF EXISTS `cupcake`.`users`;

CREATE TABLE `users`(
`name` VARCHAR(55),
`password` VARCHAR(60),
`balance` INT,
`email` VARCHAR(200),  
PRIMARY KEY (`email`)
);

CREATE TABLE `bottom`(
`bname` VARCHAR(25),
`Price` INT(25),
PRIMARY KEY (`bname`)
);

CREATE TABLE `topping`(
`tname` VARCHAR(25),
`Price` INT(25),
PRIMARY KEY (`tname`)
);

-- CREATE TABLE `invoices`(
	-- `email` VARCHAR(45),
    -- `id` INT,
    -- `date` DATETIME NOT NULL DEFAULT current_timestamp,
   --  `total` int, 
-- 	FOREIGN KEY (email) REFERENCES Users(email)
-- ); 

CREATE TABLE `ordertails`(
	`id` int,
    `bname` VARCHAR(45),
    `tname` VARCHAR(45),
    `qty` int,
    `total` int,
    `email` VARCHAR(45),
    FOREIGN KEY (email) REFERENCES Users(email)
);