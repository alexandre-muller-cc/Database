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
    PRIMARY KEY(MemberId)
);

CREATE TABLE Payment(
    `Membership fee` INT DEFAULT 100,
    MemberId INT,
    `Payment Date` DATE,
    `Amount of payment` INT, 
    `Method of payment` ENUM('Cash','Debit','MasterCard'),
    `Payment Deadline` DATE
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

INSERT INTO Personnel 
(`First Name`, `Last Name`, `Date of Birth`, SIN, `MEDICAR CART NUMBER`, Phone_Number, Address, City, Province, Postal_Code, email, Role, Mandate, Locations, `Start of operation`, `End of operation`)
VALUES 
('John', 'Smith', '1985-03-21', '123456789', 'QC1234567890', '514-555-1111', '111 Maple St.', 'Montreal', 'QC', 'H3A 1B2', 'john.smith@gmail.com', 'General Manager', 'Salaried', 'Montreal Soccer Club', '2021-01-10', NULL),
('Sarah', 'Lee', '1992-07-15', '987654321', 'ON9876543211', '416-555-2222', '456 Park Ave.', 'Toronto', 'ON', 'M5V 2B6', 'sarah.lee@yahoo.com', 'Captain', 'Salaried', 'Winnipeg Warriors', '2022-06-01', NULL),
('Pierre', 'Dupont', '1990-09-10', '234567891', 'QC2345678912', '418-555-3333', '789 Laurier Blvd.', 'Quebec City', 'QC', 'G1R 2H4', 'pierre.dupont@hotmail.fr', 'Treasurer', 'Salaried', 'Montreal Soccer Club', '2023-04-15', NULL),
('Emily', 'Wong', '1988-11-25', '345678912', 'BC3456789123', '604-555-4444', '222 Main St.', 'Vancouver', 'BC', 'V6Z 1C5', 'emily.wong@outlook.com', 'Coach', 'Salaried', 'Toronto United FC', '2020-09-12', '2024-12-31'),
('Ahmed', 'Khan', '1995-02-05', '456789123', 'NS4567891234', '902-555-5555', '678 Spring St.', 'Halifax', 'NS', 'B3J 3R4', 'ahmed.khan@gmail.com', 'Captain', 'Volunteer', 'Vancouver Strikers', '2023-01-10', NULL),
('Jessica', 'Brown', '1983-05-14', '567891234', 'AB5678912345', '403-555-6666', '123 Calgary Ave.', 'Calgary', 'AB', 'T2P 0X3', 'jessica.brown@live.ca', 'Captain', 'Volunteer', 'Ottawa Fury FC', '2021-05-01', NULL),
('Michael', 'Green', '1998-08-08', '678912345', 'MB6789123456', '204-555-7777', '345 Portage Rd.', 'Winnipeg', 'MB', 'R3B 2A7', 'michael.green@gmail.com', 'Captain', 'Salaried', 'Quebec City Warriors', '2022-11-15', NULL),
('Sophie', 'Tremblay', '1987-04-12', '789123456', 'QC7891234567', '514-555-8888', '987 Crescent St.', 'Montreal', 'QC', 'H3A 1B2', 'sophie.tremblay@gmail.ca', 'Coach', 'Salaried', 'Edmonton Chargers', '2021-10-01', NULL),
('Olivier', 'Marchand', '1991-12-30', '890123456', 'ON8901234568', '613-555-9999', '123 Rideau St.', 'Ottawa', 'ON', 'K1P 1J1', 'olivier.marchand@bell.net', 'Coach', 'Salaried', 'Halifax Highlanders', '2023-02-10', NULL),
('Olivier', 'Marchand', '1991-12-30', '890123412', 'ON89012345AS', '613-555-9999', '123 Rideau St.', 'Ottawa', 'ON', 'K1P 1J1', 'olivier.ALLO@bell.net', 'Coach', 'Salaried', 'Victoria Vikings', '2023-02-10', NULL),
('Chloe', 'Dubois', '1993-06-22', '901234567', 'BC9012345679', '250-555-0000', '654 Douglas St.', 'Victoria', 'BC', 'V8V 2N6', 'chloe.dubois@gmail.com', 'Coach', 'Salaried', 'Calgary Rovers', '2020-12-12', '2024-05-31');


INSERT INTO Family_Member 
(`First Name`, `Last Name`, `Date of Birth`, SIN, `MEDICAR CART NUMBER`, Phone_Number, Address, City, Province, Postal_Code, email, Locations, `Start of operation`, `End of operation`, Relationship)
VALUES 
('Noah', 'Sullivan', '1985-03-21', '123456789', 'QC1234567890', '514-555-1111', '111 Maple St.', 'Montreal', 'QC', 'H3A 1B2', 'noah.sullivan@email.com', 'Montreal Soccer Club', '2021-01-10', NULL, 'Father'),
('Ava', 'Peterson', '1992-07-15', '987654321', 'ON9876543211', '416-555-2222', '456 Park Ave.', 'Toronto', 'ON', 'M5V 2B6', 'ava.peterson@mailbox.ca', 'Toronto United FC', '2022-06-01', NULL, 'Mother'),
('Liam', 'Fletcher', '1990-09-10', '234567891', 'QC2345678912', '418-555-3333', '789 Laurier Blvd.', 'Quebec City', 'QC', 'G1R 2H4', 'liam.fletcher@webmail.ca', 'Vancouver Strikers', '2023-04-15', NULL, 'Friend'),
('Mia', 'Henderson', '1988-11-25', '345678912', 'BC3456789123', '604-555-4444', '222 Main St.', 'Vancouver', 'BC', 'V6Z 1C5', 'mia.henderson@canmail.net', 'Ottawa Fury FC', '2020-09-12', '2024-12-31', 'Partner'),
('Benjamin', 'Wallace', '1995-02-05', '456789123', 'NS4567891234', '902-555-5555', '678 Spring St.', 'Halifax', 'NS', 'B3J 3R4', 'ben.wallace@outlook.com', 'Quebec City Warriors', '2023-01-10', NULL, 'Grandfather'),
('Lily', 'Harrington', '1983-05-14', '567891234', 'AB5678912345', '403-555-6666', '123 Calgary Ave.', 'Calgary', 'AB', 'T2P 0X3', 'lily.harrington@email.org', 'Edmonton Chargers', '2021-05-01', NULL, 'Tutor'),
('Elijah', 'Chambers', '1998-08-08', '678912345', 'MB6789123456', '204-555-7777', '345 Portage Rd.', 'Winnipeg', 'MB', 'R3B 2A7', 'elijah.chambers@domain.ca', 'Halifax Highlanders', '2022-11-15', NULL, 'Grandmother'),
('Grace', 'Dawson', '1987-04-12', '789123456', 'QC7891234567', '514-555-8888', '987 Crescent St.', 'Montreal', 'QC', 'H3A 1B2', 'grace.dawson@fastmail.com', 'Calgary Rovers', '2021-10-01', NULL, 'Mother'),
('Daniel', 'Caldwell', '1991-12-30', '890123456', 'ON8901234568', '613-555-9999', '123 Rideau St.', 'Ottawa', 'ON', 'K1P 1J1', 'daniel.caldwell@post.ca', 'Winnipeg Warriors', '2023-02-10', NULL, 'Father'),
('Hannah', 'Middleton', '1993-06-22', '901234567', 'BC9012345679', '250-555-0000', '654 Douglas St.', 'Victoria', 'BC', 'V8V 2N6', 'hannah.middleton@netmail.ca', 'Victoria Vikings', '2024-01-05', NULL, 'Friend');


INSERT INTO ClubMember 
(`Age of registrtion`, `First Name`, `Last Name`, `Date of Birth`, Height, Weight, SIN, `MEDICAR CART NUMBER`, Phone_Number, Address, City, Province, Postal_Code, `Family member SIN`)
VALUES 
(11, 'Ethan', 'Cooper', '1996-05-03', 180, 75, '233232324', 'QC0000000001', '514-555-9876', '100 Pine St.', 'Montreal', 'QC', 'H3A 1B2', '123456789'),
(12, 'Amelia', 'Scott', '1994-08-19', 170, 60, '234335343', 'ON1111111111', '416-555-1234', '456 Elm Ave.', 'Toronto', 'ON', 'M5V 2B6', '987654321'),
(13, 'Lucas', 'Bennett', '1990-02-15', 175, 80, '343245643', 'QC2222222222', '418-555-5678', '789 Laurier Blvd.', 'Quebec City', 'QC', 'G1R 2H4', '234567891'),
(14, 'Chloe', 'Foster', '1988-11-30', 165, 58, '125723232', 'BC3333333333', '604-555-8765', '333 Main St.', 'Vancouver', 'BC', 'V6Z 1C5', '345678912'),
(11, 'William', 'Hayes', '1995-06-12', 182, 82, '124546545', 'NS4444444444', '902-555-0987', '678 Spring St.', 'Halifax', 'NS', 'B3J 3R4', '456789123'),
(17, 'Olivia', 'Mitchell', '1992-03-27', 160, 54, '357454364', 'AB5555555555', '403-555-6543', '123 Calgary Ave.', 'Calgary', 'AB', 'T2P 0X3', '567891234'),
(14, 'James', 'Reynolds', '1997-10-04', 178, 70, '988986787', 'MB6666666666', '204-555-4321', '345 Portage Rd.', 'Winnipeg', 'MB', 'R3B 2A7', '678912345'),
(13, 'Emma', 'Carter', '1989-01-12', 168, 62, '879456865', 'QC7777777777', '514-555-9870', '987 Crescent St.', 'Montreal', 'QC', 'H3A 1B2', '789123456'),
(12, 'Alexander', 'Brooks', '1990-12-20', 183, 85, '989554324', 'ON8888888888', '613-555-3456', '123 Rideau St.', 'Ottawa', 'ON', 'K1P 1J1', '890123456'),
(12, 'Timmy', 'Brooks', '1992-12-20', 183, 85, '989554324', 'ON8888888888', '613-555-3456', '123 Rideau St.', 'Ottawa', 'ON', 'K1P 1J1', '890123456'),
(11, 'Sophie', 'Parker', '1993-06-22', 164, 56, '345678905', 'BC9999999999', '250-555-6789', '654 Douglas St.', 'Victoria', 'BC', 'V8V 2N6', '901234567');

INSERT INTO Payment 
(MemberId, `Payment Date`, `Amount of payment`, `Method of payment`, `Payment Deadline`)
VALUES
(1, '2025-01-05', 100, 'MasterCard', '2025-12-31'),
(2, '2025-01-08', 100, 'Debit', '2025-12-31'),
(3, '2025-01-12', 100, 'MasterCard', '2025-12-31'),
(4, '2025-01-15', 100, 'MasterCard', '2025-12-31'),
(5, '2025-01-18', 100, 'Cash', '2025-12-31'),
(6, '2025-01-21', 100, 'MasterCard', '2025-12-31'),
(7, '2025-01-25', 100, 'MasterCard', '2025-12-31'),
(8, '2025-01-28', 100, 'Debit', '2025-12-31'),
(9, '2025-02-01', 100, 'MasterCard', '2025-12-31'),
(10, '2025-02-04', 50, 'Cash', '2025-12-31'),
(11, '2025-02-06', 50, 'Cash', '2025-12-31'),
(10, '2025-02-28', 50, 'Cash', '2025-12-31');

-- Add the membership status on the clubmember databse based on the age 

ALTER TABLE ClubMember
ADD COLUMN `Membership Status` ENUM('Active', 'Inactive') 
GENERATED ALWAYS AS (
    CASE 
        WHEN `Age of registrtion` BETWEEN 11 AND 18 THEN 'Active'
        ELSE 'Inactive'
    END
) STORED;




/*Get complete details for every location in the system. Details include address, city,
province, postal code, phone number, web address, type (Head, Branch), capacity,
general manager name, number of personnel, and the number of club members
associated with that location. The results should be displayed sorted in ascending
order by Province, then by city.

General manager Name ? 


Create a table Table 1 about the number of personnel per club */


WITH TABLE1 AS (
  SELECT Locations,
  COUNT(*) AS NUMBER_OF_PERSONNEL
  FROM Personnel
  GROUP BY Locations
),

-- Since the member table do not indique the club, we use the Family table to link it with the location 

TABLE2 AS (
SELECT SUBQUERY.locations AS Locations, COUNT(*) AS NUMBER_MEMBER
FROM(
SELECT ClubMember.`First Name`, Family_Member.locations
FROM Family_Member, ClubMember
WHERE Family_Member.SIN = ClubMember.`Family member SIN`) AS SUBQUERY
GROUP BY SUBQUERY.locations),

TABLE3 AS (
SELECT Locations,
CONCAT(`First Name`, ' ', `Last Name`) AS `GENERAL MANAGER FULLNAME`
FROM Personnel
WHERE role = 'General Manager'


)
SELECT Locations.Name,Locations.City,Locations.Postal_Code,Locations.Province,Locations.Phone_Number,Locations.Web_Address,Locations.type,
TABLE1.NUMBER_OF_PERSONNEL,TABLE2.NUMBER_MEMBER,TABLE3.`GENERAL MANAGER FULLNAME`
FROM Locations
LEFT JOIN TABLE1 ON Locations.Name = TABLE1.Locations
LEFT JOIN TABLE2 ON Locations.Name = TABLE2.Locations
LEFT JOIN TABLE3 ON Locations.Name = TABLE3.Locations
ORDER BY Province,City;


-- For a given location, provide a report that lists for every family member who is
-- currently registered in the location, the number of related active club members.
-- Information includes family members’ first name, last name, and the number of
-- active club members that are associated with the family member.

 -- Get active and Non active member per club
 
WITH TABLE5 AS(
 
 SELECT MemberId, 
 SUM(`Amount of payment`) AS TOTAL_PAYMENT,
 CASE 
      WHEN SUM(`Amount of payment`)>=100 THEN 'ACTIVE' 
      ELSE 'INACTIVE'
  END AS STATUS 
 FROM Payment
  WHERE `Payment Date`<`Payment Deadline`
 GROUP BY MemberId),

TABLE6 AS (

SELECT `Family member SIN`, `Membership Status`, STATUS
FROM ClubMember
LEFT JOIN TABLE5 ON ClubMember.MemberId = TABLE5.MemberId)


SELECT Family_Member.Locations,Family_Member.`First Name`, Family_Member.`Last Name`, count(STATUS) as `ACTIVE CLUB MEMBER`
from Family_Member
LEFT JOIN TABLE6 ON Family_Member.SIN = TABLE6.`Family member SIN`
GROUP BY Locations,Family_Member.`First Name`, Family_Member.`Last Name`;



 
 











-- Create a table with the number of member 

-- TABLE2 AS (
-- SELECT Locations,
-- COUNT(*) AS NUMBER_OF_Member
-- FROM ClubMember
-- GROUP BY Locations
-- );
