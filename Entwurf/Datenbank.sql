SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Gruppe`;
DROP TABLE IF EXISTS `Termin`;
DROP TABLE IF EXISTS `Buchung`;
DROP TABLE IF EXISTS `Reservierung`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Gruppe` (
    `GruppenNummer` INTEGER NOT NULL,
    PRIMARY KEY (`GruppenNummer`)
);

CREATE TABLE `Termin` (
    `Datum` DATE NOT NULL,
    `Zustand` CHAR(11) NOT NULL,
    `Startzeit` TIME NOT NULL,
    `Endzeit` TIME NOT NULL,
    `Bemerkung` VARCHAR(128),
    PRIMARY KEY (`Datum`),
    UNIQUE (`Datum`)
);

CREATE TABLE `Buchung` (
    `Gruppe` INTEGER NOT NULL,
    `Startzeit` TIME NOT NULL,
    `Endzeit` TIME,
    `Raum` CHAR(15),
    `Termin` DATE NOT NULL,
    PRIMARY KEY (`Termin`)
);

CREATE TABLE `Reservierung` (
    `Gruppe` INTERGER NOT NULL,
    `Termin` DATE NOT NULL,
    PRIMARY KEY (`Gruppe`),
    UNIQUE (`Gruppe`, `Termin`)
);

ALTER TABLE `Buchung` ADD FOREIGN KEY (`Gruppe`) REFERENCES `Gruppe`(`GruppenNummer`);
ALTER TABLE `Buchung` ADD FOREIGN KEY (`Termin`) REFERENCES `Termin`(`Datum`);
ALTER TABLE `Reservierung` ADD FOREIGN KEY (`Gruppe`) REFERENCES `Gruppe`(`GruppenNummer`);
ALTER TABLE `Reservierung` ADD FOREIGN KEY (`Termin`) REFERENCES `Termin`(`Datum`);