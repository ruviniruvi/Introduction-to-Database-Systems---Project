-------DDL-------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE bankers(
 banker_eid INT NOT NULL PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name  VARCHAR(50) NOT NULL,
 email VARCHAR(150));

CREATE TABLE customers(
 customer_socialsec_number VARCHAR(15)NOT NULL PRIMARY KEY,
 customer_id VARCHAR(15)NOT NULL,
 customer_first_name VARCHAR (50) NOT NULL,
 customer_last_name VARCHAR (50) NOT NULL,
 phone_number VARCHAR(15),
 customer_dateof_birth DATE,
 customer_address VARCHAR(150),
 customer_zipcode INT);

CREATE TABLE accounts(
 account_number VARCHAR(30) NOT NULL PRIMARY KEY,
 catogary VARCHAR(30),
 current_balance NUMERIC(8,2),
 opening_date DATE,
 customer_socialsec_number VARCHAR(15) REFERENCES customers(customer_socialsec_number),
 banker_eid INT REFERENCES bankers(banker_eid));

CREATE TABLE creditcards(
 credit_card_number VARCHAR(30) NOT NULL PRIMARY KEY,
 credit_limit NUMERIC(8,2) NOT NULL,
 credit_balance NUMERIC(8,2),
 expire_date DATE,
 customer_socialsec_number VARCHAR(15) REFERENCES customers(customer_socialsec_number),
 banker_eid INT REFERENCES bankers(banker_eid));







