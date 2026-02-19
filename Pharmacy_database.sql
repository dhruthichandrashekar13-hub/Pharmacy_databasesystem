CREATE DATABASE PHARMACYDB;
USE PHARMACYDB;
CREATE TABLE PHARMACY(
med_uid VARCHAR(100) PRIMARY KEY,
med_name VARCHAR(50) NOT NULL,
category VARCHAR(50) ,
manu DATE NOT NULL,
expi DATE ,
price DECIMAL
);

CREATE TABLE customer(
cus_id VARCHAR(50) PRIMARY KEY,
cus_name VARCHAR(100),
phno INTEGER ,
email VARCHAR(100),
age INTEGER 
);

CREATE TABLE STAFF(
em_id VARCHAR(50) PRIMARY KEY,
em_name VARCHAR(100),
exper INTEGER,
phno INTEGER ,
salary DECIMAL
);

CREATE TABLE supplier(
sup_id VARCHAR(50) PRIMARY KEY,
sup_name VARCHAR(100),
phno INTEGER,
location VARCHAR(50),
email VARCHAR(100)
);

CREATE TABLE purchases(
pur_id VARCHAR (20) PRIMARY KEY,
med_uid VARCHAR(100),
pur_date DATE,
quantity INTEGER,
FOREIGN KEY (med_uid) REFERENCES PHARMACY(med_uid)
);

CREATE TABLE inventory(
int_id INTEGER PRIMARY KEY,
med_uid VARCHAR(100),
stock INTEGER,
required_stock INTEGER,
last_updated date
);


SELECT CONVERT(phno, CHAR(15)) FROM supplier;
SELECT CONVERT(phno, CHAR(15) ) FROM staff;
SELECT CONVERT(phno, CHAR(15) ) FROM customer;

ALTER TABLE purchases
ADD cus_id VARCHAR(20);
ALTER TABLE purchases
 ADD FOREIGN KEY (cus_id) REFERENCES customer(cus_id);
