DROP TABLE IF EXISTS Booking;
DROP TABLE IF EXISTS Reservation;
DROP TABLE IF EXISTS Groups;
DROP TABLE IF EXISTS Appointment;

CREATE TABLE Groups (
    GroupNumber INTEGER NOT NULL,
    PRIMARY KEY (GroupNumber)
);

CREATE TABLE Appointment (
    Date DATE NOT NULL,
    Activated BIT NOT NULL,
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
    Groups INTEGER NOT NULL,
    Appointment DATE NOT NULL,
    PRIMARY KEY (Groups)
);

ALTER TABLE Booking ADD FOREIGN KEY (Reservation) REFERENCES Reservation(Groups) ON DELETE CASCADE;
ALTER TABLE Reservation ADD FOREIGN KEY (Groups) REFERENCES Groups(GroupNumber) ON DELETE CASCADE;
ALTER TABLE Reservation ADD FOREIGN KEY (Appointment) REFERENCES Appointment(Date) ON DELETE CASCADE;
