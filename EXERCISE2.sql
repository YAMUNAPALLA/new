CREATE TABLE CONTACT(
ID INT,EMAIL VARCHAR(40),FNAME VARCHAR(20),LNAME VARCHAR(30),
COMPANY VARCHAR(20),ACTIVE_FLAG INT,OPT_OUT int
);
SELECT * FROM CONTACT;
INSERT INTO CONTACT VALUES(123,'a@a.com','Kian','Seth','ABC',1,1),
(133,'b@a.com','Neha','Seth','ABC',1,0),
(234,'c@c.com','Puru','Malik','CDF',0,0),
(342,'d@d.com','Sid','Maan','TEG',1,0);

-- 1.Select all columns from the contact table where the active flag is 1
SELECT * FROM CONTACT WHERE ACTIVE_FLAG=1;

-- Deactivate contacts who are opted out 
UPDATE CONTACT SET ACTIVE_FLAG=0 WHERE OPT_OUT=1;

-- 3.Delete all the contacts who have the company name as ‘ABC’
DELETE FROM CONTACT WHERE COMPANY='ABC';

-- 4.Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
INSERT INTO CONTACT(ID,EMAIL,LNAME,COMPANY,ACTIVE_FLAG,OPT_OUT) 
VALUES(658,'mili@gmail.com','mili','DGH',1,1);
SELECT * FROM CONTACT;

-- 5.Pull out the unique values of the company column 
SELECT DISTINCT COMPANY FROM CONTACT;

-- 6.Update name “mili” to “niti”.
UPDATE CONTACT SET LNAME='niti' WHERE LNAME='mili';
