SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS Group;
DROP TABLE IF EXISTS Appointment;
DROP TABLE IF EXISTS Booking;
DROP TABLE IF EXISTS Reservation;
DROP TABLE IF EXISTS State;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Group (
    GroupNumber INTEGER NOT NULL,
    PRIMARY KEY (GroupNumber)
);

CREATE TABLE Appointment (
    Date DATE NOT NULL,
    State INTEGER NOT NULL,
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

CREATE TABLE State (
    Number INTEGER NOT NULL,
    Name CHAR(12) NOT NULL,
    PRIMARY KEY (Number)
);

ALTER TABLE Appointment ADD FOREIGN KEY (State) REFERENCES State(Number);
ALTER TABLE Booking ADD FOREIGN KEY (Reservation) REFERENCES Reservation(Group);
ALTER TABLE Reservation ADD FOREIGN KEY (Group) REFERENCES Group(GroupNumber);
ALTER TABLE Reservation ADD FOREIGN KEY (Appointment) REFERENCES Appointment(Date);