create database exercise3;
create table customer(
customer_id int,
cust_name varchar(30),
city varchar(30),
grade int,
salesman_id int);
desc customer;
select * from customer;
insert into customer values
(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007);
insert into customer(customer_id,cust_name,city,salesman_id)
values (3001,'Brad Guzan','London',5005);
create table salesman(salesman_id int,name varchar(30),
city varchar(30),commision float
);
desc salesman;
insert into salesman values
(5001,'James Hoong','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12);
SELECT
a.cust_name,a.city,a.grade, 
b.name AS "Salesman", b.city 
FROM customer a 
LEFT JOIN salesman b 
ON a.salesman_id=b.salesman_id
WHERE a.grade<100
order by a.customer_id;
select * from customer 
order by customer_id asc;

