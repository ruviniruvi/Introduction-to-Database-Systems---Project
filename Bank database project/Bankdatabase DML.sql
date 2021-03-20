

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------DML----------------------------------------------------------------------------------------------------------------------------------------------------

Inserting Values for Bankers table
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO bankers(banker_eid ,first_name , last_name, email)
VALUES(00001,'Raj','Kumarage','raj12345@gmail.com');

INSERT INTO bankers(banker_eid ,first_name , last_name, email)
VALUES(00002,'Ruvi','Senevirathna','ruvi123@gmail.com');

INSERT INTO bankers(banker_eid ,first_name , last_name, email)
VALUES(00003, 'Sam','Gopal','samgopal78@yahoo.com');

INSERT INTO bankers(banker_eid ,first_name , last_name, email)
VALUES(00004,'Donna','Anderson','anderson7812@gmail.com');

INSERT INTO bankers(banker_eid ,first_name , last_name, email)
 VALUES(00005,'Calvin','Barnes','calvinb90@gmail.com');

INSERT INTO bankers(banker_eid ,first_name , last_name, email)
 VALUES(00006,'Fallen','Andrea','fallenandrea95@yahoo.com');

INSERT INTO bankers(banker_eid ,first_name , last_name, email)
VALUES(00007,'John','Adam','john147825@gmail.com');


Inserting Values for Customers table
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO customers(customer_socialsec_number, customer_id,customer_first_name, customer_last_name, phone_number,customer_dateof_birth ,customer_address, customer_zipcode)
VALUES('123-11-1234','123 567 890','Rosi','Thomson',' 347-222-5050','10.12.1988','25,St.George Place,Staten Island,NY',10301);


INSERT INTO customers(customer_socialsec_number, customer_id,customer_first_name, customer_last_name, phone_number,customer_dateof_birth ,customer_address, customer_zipcode)
VALUES('234-22-2678 ',' 256 789 667 ','Marry','Jason ',' 646-598-1423 ','01.05.1975','100,Victory Blvd,NY',10005);



INSERT INTO customers(customer_socialsec_number, customer_id,customer_first_name, customer_last_name, phone_number,customer_dateof_birth ,customer_address, customer_zipcode)
VALUES('358-28-3850','612 537 860','Tyler','Anderson',' 646-265-5514','10.25.1995','100,St.Gegary Place,Staten Island,NY',10314);


INSERT INTO customers(customer_socialsec_number, customer_id,customer_first_name, customer_last_name, phone_number,customer_dateof_birth ,customer_address, customer_zipcode)
VALUES('217-26-3350','512 259 952','Anusha','Siriwardena',' 646-299-7754','04.03.1990','14,APT 6G,Victory Blvd, Place,Staten Island,NY',10314);

INSERT INTO customers(customer_socialsec_number, customer_id,customer_first_name, customer_last_name, phone_number,customer_dateof_birth ,customer_address, customer_zipcode)
VALUES('315-78-1234','338 656 760','Benitha','Hills',' 917-555-2915','05.28.1985','53A,St.Richmand Place,Staten Island,NY',10301);



Inserting Values for Accounts table
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO accounts(account_number, catogary,current_balance,opening_date,customer_socialsec_number,banker_eid)
VALUES('000 413 874 567','Savings',1500.25,'06.21.2017','123-11-1234',0005);

INSERT INTO accounts(account_number, catogary,current_balance,opening_date,customer_socialsec_number,banker_eid)
VALUES('024 714 824 227','Savings',4765.00,'10.01.2019','555-11-1854',0003);

INSERT INTO accounts(account_number, catogary,current_balance,opening_date,customer_socialsec_number,banker_eid)
VALUES('000 954 666 154','Savings',3000.70,'03.01.2020','358-28-3850',0002);

INSERT INTO accounts(account_number, catogary,current_balance,opening_date,customer_socialsec_number,banker_eid)
VALUES('000 111 674 333','Savings',7465.00,'04.20.2018','217-26-3350',0004);

INSERT INTO accounts(account_number, catogary,current_balance,opening_date,customer_socialsec_number,banker_eid)
VALUES('000 397 442 111','Ckecking',1200.00,'11.10.2019','315-78-1234',0006);



Inserting Values for Creditcards table
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO creditcards(credit_card_number,credit_limit,credit_balance,expire_date,customer_socialsec_number,banker_eid)
VALUES('2000 0000 1156 0121',5000.00,2000.00,'04.30.2022','123-11-1234',0004);

INSERT INTO creditcards(credit_card_number,credit_limit,credit_balance,expire_date,customer_socialsec_number,banker_eid)
VALUES('2000 000 1222 9741',5000.00,1500.00,'04.30.2022','555-11-1854',0004);

INSERT INTO creditcards(credit_card_number,credit_limit,credit_balance,expire_date,customer_socialsec_number,banker_eid)
VALUES('0000 100 5524 2375',4000.00,1570.00,'01.30.2023','217-26-3350',0005);

INSERT INTO creditcards(credit_card_number,credit_limit,credit_balance,expire_date,customer_socialsec_number,banker_eid)
VALUES('0010 100 6172 2222',6000.00,3525.00,'04.15.2024','315-78-1234',0002);


Changes 
-------------------------------------------------

ALTER TABLE customers
ADD banker_id INT;

ALTER TABLE customers
ADD CONSTRAINT fk_banker_id FOREIGN KEY (banker_id)  REFERENCES bankers(banker_eid);



UPDATE customers
SET banker_id = 00001
WHERE customer_first_name = 'Marry';


UPDATE customers
SET banker_id = 00002
WHERE customer_first_name = 'Tyler';

UPDATE customers
SET banker_id = 00003
WHERE customer_first_name = 'Ann';

UPDATE customers
SET banker_id = 00004
WHERE customer_first_name = 'Anusha';


UPDATE customers
SET banker_id = 00005
WHERE customer_first_name = 'Benitha';



UPDATE customers
SET banker_id = 00006
WHERE customer_first_name = 'Rosi';







