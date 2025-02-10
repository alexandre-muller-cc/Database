CREATE TABLE Locations (
    Name VARCHAR(50), 
    type ENUM('Head','Branch') NOT NULL,
    Address VARCHAR(50),
    City VARCHAR(50),
    Province VARCHAR(50),
    Postal_Code VARCHAR(6),
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
    Postal_Code VARCHAR(6),
    email VARCHAR(50),
    Role ENUM('General Manager','Captain','Treasurer','Coach') NOT NULL
    Mandate ENUM('Salaried','Volunteer') NOT NULL,
    Locations VARCHAR(50),
    `Start of operation` DATE NOT NULL ,
    `End of operation` DATE,
    
    
);
