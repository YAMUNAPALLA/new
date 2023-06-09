-- Create a database schema for the "online consultation and therapy website".
CREATE DATABASE OCTW;

CREATE TABLE DOCTOR(
D_ID INT PRIMARY KEY,
D_NAME VARCHAR(30),
SPECIALIZATION VARCHAR(30));
DESC DOCTOR;
INSERT INTO DOCTOR VALUES(101,'BHARGAVI','ORTHOPEDICS'),
(102,'VALI','DERMATOLOGY'),
(103,'YAMUNA','CARDIOLOGY'),
(104,'LAVANYA','ENT'),
(105,'SHIVAJI','GENERAL SURGERY');

CREATE TABLE PATIENT(
P_ID INT PRIMARY KEY,
P_NAME VARCHAR(30),
P_AGE INT,
GENDER CHAR(20));
INSERT INTO PATIENT VALUES(201,'ABC',24,'M'),
(202,'DEF',40,'F'),(203,'GHI',30,'M'),
(204,'JKL',60,'M'),(205,'MNO',75,'F');
CREATE TABLE APPOINTMENTS(
D_ID INT,
P_ID INT,
APPOINTMENT_DATE DATE,
FOREIGN KEY (D_ID) REFERENCES DOCTOR(D_ID), 
FOREIGN KEY (P_ID) REFERENCES PATIENT(P_ID)); 
INSERT INTO APPOINTMENTS VALUES(101,202,'2023-05-08'),
(102,204,'2023-05-09'),
(103,201,'2023-05-10'),
(104,203,'2023-05-11'),
(105,205,'2023-05-12');

CREATE TABLE REVIEWS(
D_ID INT,
P_ID INT,
RATING INT,
REVIEW VARCHAR(30),
FOREIGN KEY (D_ID) REFERENCES DOCTOR(D_ID), 
FOREIGN KEY (P_ID) REFERENCES PATIENT(P_ID)); 
INSERT INTO REVIEWS VALUES(101,202,5,'GOOD'),
(102,204,5,'EXCELLENT'),
(103,201,5,'CARING'),
(104,203,5,'SUPER'),
(105,205,5,'AWESOME');