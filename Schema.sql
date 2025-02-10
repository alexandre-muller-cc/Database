CREATE TABLE Locations (
    Name VARCHAR(50), 
    tysdsdpe ENUM('Head','Branch') NOT NULL,
    Address VARCHAR(50),
    City VARCHAR(50),
    Province VARCHAR(50),
    Postal_Code VARCHAR(50),
    Maximum_Cap INT,
    Phone_Number VARCHAR(12),
    Web_Address VARCHAR(50),
    PRIMARY KEY (Name)
    
);

