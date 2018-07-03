SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS Groups;
DROP TABLE IF EXISTS Appointment;
DROP TABLE IF EXISTS Booking;
DROP TABLE IF EXISTS Reservation;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Groups (
    GroupNumber INTEGER NOT NULL,
    PRIMARY KEY (GroupNumber)
);

CREATE TABLE Appointment (
    Date DATE NOT NULL,
    Activated BOOLEAN NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    Note VARCHAR(128),
    PRIMARY KEY (Date)
);

CREATE TABLE Booking (
    Reservation INTEGER NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME,
    Room CHAR(15),
    PRIMARY KEY (Reservation)
);

CREATE TABLE Reservation (
    Group INTEGER NOT NULL,
    Appointment DATE NOT NULL,
    PRIMARY KEY (Group)
);

ALTER TABLE Booking ADD FOREIGN KEY (Reservation) REFERENCES Reservation(Group);
ALTER TABLE Reservation ADD FOREIGN KEY (Group) REFERENCES Groups(GroupNumber);
ALTER TABLE Reservation ADD FOREIGN KEY (Appointment) REFERENCES Appointment(Date);