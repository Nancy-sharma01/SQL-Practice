CREATE DATABASE temp1;
create database temp2;

CREATE DATABASE college;

DROP DATABASE temp1;
drop database temp2;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL);

INSERT INTO student VALUES(1,"Aman",26);
INSERT INTO student VALUES(2,"Raj",28);

SELECT * FROM student;
    
DROP DATABASE IF EXISTS company;

SHOW DATABASES;
SHOW TABLES;

DROP TABLE student;

CREATE TABLE student(
	roll_no INT PRIMARY KEY, 
    name VARCHAR(50)
);

SELECT * FROM student;

INSERT INTO student (roll_no, name)
VALUES 
(101,"Karan"),
(102,"Arjun");
INSERT INTO student VALUES (103, "Ram");