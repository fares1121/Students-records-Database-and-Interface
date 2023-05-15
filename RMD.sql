CREATE TABLE `Student` (
  `Student_ID` INT,
  `FirstName` VARCHAR(50),
  `LastName` VARCHAR(50),
  `Address` VARCHAR(100),
  `PhoneNumber` VARCHAR(12),
  `Email` VARCHAR(50),
  `DateOfBirth` DATE,
  `Password` VARCHAR(50),
  PRIMARY KEY (`Student_ID`)
);

CREATE TABLE `Department` (
  `Department_ID` INT,
  `DepartmentName` VARCHAR(100),
  PRIMARY KEY (`Department_ID`)
);

CREATE TABLE `Faculty` (
  `Faculty_ID` INT,
  `FirstName` VARCHAR(50),
  `LastName` VARCHAR(50),
  `Address` VARCHAR(100),
  `PhoneNumber` VARCHAR(12),
  `Email` VARCHAR(100),
  `Department_ID` INT,
  `Position` VARCHAR(50),
  PRIMARY KEY (`Faculty_ID`)
);

CREATE TABLE `Grade` (
  `Grade_ID` INT,
  `Student_ID` INT,
  `Course_ID` INT,
  `Grade` VARCHAR(2),
  PRIMARY KEY (`Grade_ID`),
  FOREIGN KEY (`Student_ID`) REFERENCES `Student`(`Student_ID`),
  FOREIGN KEY (`Course_ID`) REFERENCES `Course`(`Course_ID`)
);

CREATE TABLE `Extracurrucular Activity` (
  `Activity_ID` INT,
  `Student_ID` INT,
  `StartTime` TIME,
  `EndTime` TIME,
  `Activity` VARCHAR(50),
  PRIMARY KEY (`Activity_ID`),
  FOREIGN KEY (`Student_ID`) REFERENCES `Student`(`Student_ID`)
);

CREATE TABLE `Course` (
  `Course_ID` INT,
  `CourseName` VARCHAR(50),
  `Faculty_ID` INT,
  `StartTime` TIME,
  `EndTime` TIME,
  `RoomNumber` VARCHAR(50),
  `Department_ID` INT,
  PRIMARY KEY (`Course_ID`),
  FOREIGN KEY (`Faculty_ID`) REFERENCES `Faculty`(`Faculty_ID`),
  FOREIGN KEY (`Department_ID`) REFERENCES `Department`(`Department_ID`)
);

INSERT INTO `rmd`.`student` (`Student_ID`, `FirstName`, `LastName`, `Address`, `PhoneNumber`, `Email`, `DateOfBirth`, `Password`) VALUES ('85', 'Danny', 'Grove', '785 NW 6St', '7458962145', 'Danny@gmail.com', '1888-06-18', 'a8d55s');

INSERT INTO `rmd`.`student` (`Student_ID`, `FirstName`, `LastName`, `Address`, `PhoneNumber`, `Email`, `DateOfBirth`, `Password`) VALUES ('6', 'Sam', 'Mont', '75 NE 6St', '7459142145', 'Sam@gmail.com', '1988-06-17', 'P852');

INSERT INTO `rmd`.`student` (`Student_ID`, `FirstName`, `LastName`, `Address`, `PhoneNumber`, `Email`, `DateOfBirth`, `Password`) VALUES ('11', 'Tom', 'Goby', '400 NW 6St', '7459647145', 'Tom@gmail.com', '1988-12-18', 'Pa85hf');

INSERT INTO `rmd`.`student` (`Student_ID`, `FirstName`, `LastName`, `Address`, `PhoneNumber`, `Email`, `DateOfBirth`, `Password`) VALUES ('25', 'Chris', 'Orch', '1800 SW 11st', '6018962145', 'Chris@gmail.com', '1999-06-18', '5885dffd');

INSERT INTO `rmd`.`student` (`Student_ID`, `FirstName`, `LastName`, `Address`, `PhoneNumber`, `Email`, `DateOfBirth`, `Password`) VALUES ('14', 'Emma', 'Comperi', '600St', '7458968989', 'Emma@gmail.com', '2000-06-18', '85dffdds');

INSERT INTO `rmd`.`student` (`Student_ID`, `FirstName`, `LastName`, `Address`, `PhoneNumber`, `Email`, `DateOfBirth`, `Password`) VALUES ('8', 'Anna', 'Decapri', '800 Montain', '7823762145', 'Anna@gmail.com', '1998-11-18', 'dfvvf555');

SELECT FirstName FROM student;

SELECT Password From student WHERE Student_ID = '85';

SELECT DateOfBirth From student;

SELECT Email From student WHERE FirstName = 'Emma';

SELECT FirstName, LastName From student WHERE Student_ID = '14';

SELECT Student_ID From student WHERE FirstName = 'Anna';

INSERT INTO `rmd`.`student` (`Student_ID`, `FirstName`, `LastName`, `Address`, `PhoneNumber`, `Email`, `DateOfBirth`, `Password`) VALUES ('77', 'Tomas', 'Giad', '800 NW 6St', '7459785145', 'Tomas@gmail.com', '1998-01-18', 'Pa85hf');

UPDATE student SET PhoneNumber = '7459624258' WHERE Student_ID = '77';

DELETE FROM student WHERE Student_ID = '8';
SELECT * FROM rmd.student LIMIT 0, 1000
