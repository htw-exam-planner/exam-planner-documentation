SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Group`;
DROP TABLE IF EXISTS `Appointment`;
DROP TABLE IF EXISTS `Booking`;
DROP TABLE IF EXISTS `Reservation`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Group` (
    `GroupNumber` INTEGER NOT NULL,
    PRIMARY KEY (`GroupNumber`)
);

CREATE TABLE `Appointment` (
    `Date` DATE NOT NULL,
    `State` CHAR(11) NOT NULL,
    `StartTime` TIME NOT NULL,
    `EndTime` TIME NOT NULL,
    `Note` VARCHAR(128),
    PRIMARY KEY (`Date`),
    UNIQUE (`Date`)
);

CREATE TABLE `Booking` (
    `Group` INTEGER NOT NULL,
    `StartTime` TIME NOT NULL,
    `EndTime` TIME,
    `Room` CHAR(15),
    `Appoinment` DATE NOT NULL,
    PRIMARY KEY (`Appoinment`)
);

CREATE TABLE `Reservation` (
    `Group` INTERGER NOT NULL,
    `Appointments` DATE NOT NULL,
    PRIMARY KEY (`Group`),
    UNIQUE (`Group`, `Appointments`)
);

ALTER TABLE `Booking` ADD FOREIGN KEY (`Group`) REFERENCES `Group`(`GroupNumber`);
ALTER TABLE `Booking` ADD FOREIGN KEY (`Appoinment`) REFERENCES `Appointment`(`Date`);
ALTER TABLE `Reservation` ADD FOREIGN KEY (`Group`) REFERENCES `Group`(`GroupNumber`);
ALTER TABLE `Reservation` ADD FOREIGN KEY (`Appointments`) REFERENCES `Appointment`(`Date`);