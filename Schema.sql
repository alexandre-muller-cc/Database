CREATE TABLE Locations (
    Name VARCHAR(50), 
    type ENUM('Head','Branch') NOT NULL,
    Address VARCHAR(50),
    City VARCHAR(50),
    Province VARCHAR(50),
    Postal_Code VARCHAR(7),
    Maximum_Cap INT,
    Phone_Number VARCHAR(12),
    Web_Address VARCHAR(50),
    PRIMARY KEY (Name)
    
);

CREATE TABLE Personnel (
    `First Name` VARCHAR(50), 
    `Last Name` VARCHAR(50), 
    `Date of Birth` DATE,
    SIN VARCHAR(50) NOT NULL,
    `MEDICAR CART NUMBER` VARCHAR(50),
    Phone_Number VARCHAR(12),
    Address VARCHAR(50),
    City VARCHAR(50),
    Province VARCHAR(50),
    Postal_Code VARCHAR(7),
    email VARCHAR(50),
    Role ENUM('General Manager','Captain','Treasurer','Coach') NOT NULL,
    Mandate ENUM('Salaried','Volunteer') NOT NULL,
    Locations VARCHAR(50),
    `Start of operation` DATE NOT NULL ,
    `End of operation` DATE,
    PRIMARY KEY(`MEDICAR CART NUMBER`)
);


CREATE TABLE Family_Member (
    `First Name` VARCHAR(50), 
    `Last Name` VARCHAR(50), 
    `Date of Birth` DATE,
    SIN VARCHAR(50) NOT NULL,
    `MEDICAR CART NUMBER` VARCHAR(50),
    Phone_Number VARCHAR(12),
    Address VARCHAR(50),
    City VARCHAR(50),
    Province VARCHAR(50),
    Postal_Code VARCHAR(7),
    email VARCHAR(50),
    Locations VARCHAR(50),
    `Start of operation` DATE NOT NULL ,
    `End of operation` DATE,
    Relationship ENUM('Father','Mother','Friend','Partner','Grandfather','Grandmother','Tutor'),
    PRIMARY KEY(`MEDICAR CART NUMBER`)
);

CREATE TABLE ClubMember(
    MemberId INT AUTO_INCREMENT, 
    `Age of registrtion` INT,
    `First Name` VARCHAR(50), 
    `Last Name` VARCHAR(50), 
    `Date of Birth` DATE,
    Height INT, 
    Weight INT, 
    SIN VARCHAR(50) NOT NULL,
    `MEDICAR CART NUMBER` VARCHAR(50),
    Phone_Number VARCHAR(12),
    Address VARCHAR(50),
    City VARCHAR(50),
    Province VARCHAR(50),
    Postal_Code VARCHAR(7),
    `Family member SIN` VARCHAR(50) NOT NULL, 
    `Membership Status` ENUM('Active','Inactive'),
    PRIMARY KEY(MemberId)
);

CREATE TABLE Payment(
    `Membership fee` INT DEFAULT 100,
    MemberId INT,
    `Payment Date` DATE,
    `Amount of payment` INT, 
    `Method of payment` ENUM('Cash','Debit','MasterCard'),
    `Payment Deadline` DATE,
    PRIMARY KEY(MemberId)
);



INSERT INTO Locations (Name, type, Address, City, Province, Postal_Code, Maximum_Cap, Phone_Number, Web_Address)
VALUES 
('Montreal Soccer Club', 'Head', '123 Stadium St.', 'Montreal', 'QC', 'H3A 1B2', 5000, '514-555-1234', 'www.montrealsoccer.ca'),
('Toronto United FC', 'Branch', '456 Queen St. W', 'Toronto', 'ON', 'M5V 2B6', 6000, '416-555-4567', 'www.torontounitedfc.ca'),
('Vancouver Strikers', 'Branch', '789 Beach Ave.', 'Vancouver', 'BC', 'V6Z 1C5', 4500, '604-555-7890', 'www.vancouverstrikers.ca'),
('Ottawa Fury FC', 'Branch', '101 Bank St.', 'Ottawa', 'ON', 'K1P 1J1', 4000, '613-555-1010', 'www.ottawafuryfc.ca'),
('Quebec City Warriors', 'Branch', '212 Grande Allée E', 'Quebec City', 'QC', 'G1R 2H4', 3500, '418-555-2121', 'www.qcwarriors.ca'),
('Edmonton Chargers', 'Branch', '345 Jasper Ave.', 'Edmonton', 'AB', 'T5J 1Y7', 5000, '780-555-3456', 'www.edmontonchargers.ca'),
('Halifax Highlanders', 'Branch', '678 Spring Garden Rd.', 'Halifax', 'NS', 'B3J 3R4', 3000, '902-555-6789', 'www.halifaxhighlanders.ca'),
('Calgary Rovers', 'Branch', '901 Stephen Ave.', 'Calgary', 'AB', 'T2P 0X3', 4500, '403-555-9012', 'www.calgaryrovers.ca'),
('Winnipeg Warriors', 'Branch', '111 Portage Ave.', 'Winnipeg', 'MB', 'R3B 2A7', 4000, '204-555-1113', 'www.winnipegwarriors.ca'),
('Victoria Vikings', 'Branch', '123 Douglas St.', 'Victoria', 'BC', 'V8V 2N6', 2500, '250-555-1234', 'www.victoriavikings.ca');


SELECT * FROM Locations;







