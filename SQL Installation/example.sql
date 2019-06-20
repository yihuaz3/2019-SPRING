DROP DATABASE IF EXISTS cs122a_spring18;
CREATE DATABASE  cs122a_spring18;
USE cs122a_spring18;


--
-- Table structure for table Boats
--

CREATE TABLE Boats (
  bid INTEGER(11) NOT NULL,
  bname VARCHAR(45),
  color VARCHAR(15),
  PRIMARY KEY (bid)
);


--
-- Table structure for table Sailors
--

CREATE TABLE Sailors (
  sid int(11) NOT NULL,
  sname VARCHAR(45) NOT NULL,
  rating INTEGER(11),
  age DECIMAL(5,1),
  PRIMARY KEY (sid)
);


--
-- Table structure for table Reserves
--
CREATE TABLE Reserves (
  sid INTEGER(11),
  bid INTEGER(11),
  date DATE,
 PRIMARY KEY(sid,bid,date),
  FOREIGN KEY (sid) REFERENCES Sailors (sid),
  FOREIGN KEY (bid) REFERENCES Boats (bid)
); 

INSERT INTO Boats VALUES (101,'Interlake','blue'),(102,'Interlake','red'),(103,'Clipper','green'),(104,'Marine','red');
INSERT INTO Sailors VALUES (22,'Dustin',7,45.0),(29,'Brutus',1,33.0),(31,'Lubber',8,55.5),(32,'Andy',8,25.5),(58,'Rusty',10,35.0),(64,'Horatio',7,35.0),(71,'Zorba',10,16.0),(74,'Horatio',9,35.0),(85,'Art',4,25.5),(95,'Bob',3,63.5),(101,'Joan',3,NULL),(107,'Johannes',NULL,35.0); 
INSERT INTO Reserves VALUES (22,101,'1998-10-10'),(22,102,'1998-10-10'),(22,103,'1998-10-08'),(22,104,'1998-10-07'),(31,102,'1998-11-10'),(31,103,'1998-11-06'),(31,104,'1998-11-12'),(64,101,'1998-09-05'),(64,102,'1998-09-08'),(74,103,'1998-09-08'),(95,103,'1998-09-09'),(85,103,'2001-01-11'),(85,103,'2002-02-02');

