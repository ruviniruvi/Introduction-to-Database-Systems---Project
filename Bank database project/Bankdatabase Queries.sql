

-------------------------------Queries--------------------------------------------------------------------------------------------------------------------------------------------------


QB1
----------------------------------------
________________________________________


01.Select all the from bankers.

SELECT *	
FROM bankers;	

02.Select all ordering in first name

SELECT *	
FROM bankers	
ORDER BY first_name;	

03.Select all ordering in first name in acending order and last name by decending order.

SELECT banker_eid, first_name, last_name		
FROM bankers		
ORDER BY first_name ASC ,last_name DESC;		

04.Select all the bankers where Id is greater than or equal to 4.

SELECT *	
FROM bankers 	
WHERE banker_eid >=4;	

05.Select bankers first name and last name , the last name which start with letter A

SELECT banker_eid,first_name,last_name		
FROM bankers 		
WHERE last_name LIKE 'A%';		

06.Select banker id, first and last names, the first name which start with letter R and banker id greater than or equal to 3. 

SELECT banker_eid,first_name,last_name		
FROM bankers 		
WHERE first_name LIKE 'R%'		
AND banker_eid <= 3;		


07.Display banker id as BankerId ,first name as BankerFirstName in acending order and last name as BankerLastName in desending order.

SELECT b.banker_eid AS BankerId,		
b.first_name AS BankerFirstName,		
b.last_name AS BankerLastName		
FROM bankers As b		
ORDER BY first_name ASC , last_name DESC;		



QB2
----------------------------------------
________________________________________

01.Select all the customers in order in first name

SELECT *	
FROM  customers	
ORDER BY customer_first_name;	

02.Select customer social security number ,account number and current account balance where joining with customermers.

SELECT accounts.customer_socialsec_number,accounts.account_number,accounts.current_balance			
FROM  accounts			
 JOIN customers ON customers.customer_socialsec_number = accounts.customer_socialsec_number;			

03.Select customer first name last name and customer social sec number where joining with acounts and customers order in first name.

SELECT customers.customer_first_name,customers.customer_last_name,customers.customer_socialsec_number				
FROM  customers				
 JOIN accounts ON customers.customer_socialsec_number = accounts.customer_socialsec_number				
ORDER BY customers.customer_first_name;				

04.Select customer first name , last name ,id amd social security number where customer social security number is equal to 234-22-2678.

SELECT customers.customer_first_name,customers.customer_last_name,customers.customer_socialsec_number,customers.customer_id					
FROM  customers					
 JOIN accounts ON customers.customer_socialsec_number = accounts.customer_socialsec_number					
WHERE accounts.customer_socialsec_number = '234-22-2678';					


05.Select ceredit card number,credit limit and credit balance where credit balance greater than equal to 1000.00.

SELECT creditcards.credit_card_number, creditcards.credit_limit,creditcards.credit_balance				
FROM creditcards				
INNER JOIN accounts ON creditcards.customer_socialsec_number = accounts.customer_socialsec_number				
GROUP BY creditcards.credit_card_number,creditcards.credit_balance				
HAVING (creditcards.credit_balance) >= 1000.00;				
				
06.Select credit card number ,credit limit and credit balance joining with accounts.

SELECT creditcards.credit_card_number, creditcards.credit_limit,creditcards.credit_balance					
FROM creditcards					
INNER JOIN accounts ON creditcards.customer_socialsec_number = accounts.customer_socialsec_number					
UNION					
SELECT creditcards.credit_card_number, creditcards.credit_limit,creditcards.credit_balance					
FROM creditcards					
LEFT OUTER JOIN accounts ON creditcards.customer_socialsec_number = accounts.customer_socialsec_number					
					
07.Select from banker first and last name and banker id where who access with customers to open bank accounts.

SELECT bankers.first_name,bankers.last_name,bankers.banker_eid		
FROM  bankers		
INNER JOIN accounts ON bankers.banker_eid = accounts.banker_eid		
ORDER BY bankers.first_name,bankers.last_name;		


08.Get count of the bankers who have id greter than or equal to 3.

SELECT COUNT(bankers.banker_eid)		
FROM  bankers		
INNER JOIN accounts ON bankers.banker_eid = accounts.banker_eid		
WHERE bankers.banker_eid>=3;		

09.Get sum of credit balance where customer account number equal to 000 123 567 890 or 024 714 824 227.

SELECT SUM(creditcards.credit_balance)				
FROM creditcards				
INNER JOIN accounts ON creditcards.customer_socialsec_number = accounts.customer_socialsec_number				
WHERE accounts.account_number = '000 123 567 890' OR accounts.account_number = '024 714 824 227';				

10.Select customer social security number ,account number, current account balance and creditcrad number where joining with customermers and credit cards.
SELECT accounts.customer_socialsec_number,accounts.account_number,accounts.current_balance,	creditcards.credit_card_number		
FROM  accounts			
INNER JOIN customers ON customers.customer_socialsec_number = accounts.customer_socialsec_number
INNER  JOIN creditcards ON creditcards.customer_socialsec_number = accounts.customer_socialsec_number;

11.Get count of the bankers who have id greter than or equal to 3 from who handle credit cards and accounts.
SELECT COUNT(bankers.banker_eid) AS count		
FROM  bankers		
INNER JOIN accounts ON bankers.banker_eid = accounts.banker_eid	
INNER JOIN creditcards ON bankers.banker_eid = creditcards.banker_eid	
WHERE bankers.banker_eid>=3;	




				

QB3
----------------------------------------
________________________________________

01. Select first name and last name of the bankers.
	
select first_name,last_name	
from bankers;	

02.Count how many bankers work in the branch	
	
select count(banker_eid)	
from bankers;	

03.Count how many customers in the bank system	
	
select count(customer_id)	
from customers;	


04.Count how many accounts in the bank system	
	
select count(account_number)	
from accounts;	

05.Get maximum account balance(current balance) in the account.			
			
select Max(current_balance) as maximum_account_balance			
from accounts;			


06.Get minimum credit limit in of the credit cards which customer has.			
			
select Min(credit_limit) as minimum_credit_limit			
from creditcards;			

07.get the average credit balance from the credit cards		
		
select Avg(credit_balance) as average_credit_balance		
from creditcards;

08.Get the average credit card balance and sum of the accounts current balance in one table								
								
select Avg(creditcards.credit_balance) as average_credit_balance,sum(accounts.current_balance) as sum_current_balance								
from creditcards,accounts;								
								
		

QB4
----------------------------------------
________________________________________

01. Count maximum credit card limit which having credit limit is greater than 5000 dollars.

select credit_card_number,max(credit_limit) 
from creditcards
group by credit_card_number
having (credit_limit) >5000.00 ;

02.Get the sum of the customers current balance.

select accounts.customer_socialsec_number,accounts.account_number,sum(accounts.current_balance) as sum_of_balance			
from  accounts			
 join customers on customers.customer_socialsec_number = accounts.customer_socialsec_number
 group by accounts.customer_socialsec_number,accounts.account_number,accounts.current_balance;			
			

03. Get an average credit balance of the customers which is greater than or equal to 1000.00 dollars.

select creditcards.credit_card_number, creditcards.credit_limit,avg(creditcards.credit_balance) as average_credit_balance			
from creditcards			
inner join accounts on creditcards.customer_socialsec_number = accounts.customer_socialsec_number			
group by creditcards.credit_card_number,creditcards.credit_balance			
having avg(creditcards.credit_balance) >= 1000.00;	

04.Get the minimum current balnce which is less tha 1500.00 dollars.

select account_number,min(current_balance) as minimum_account_balance
from accounts
where current_balance <1500.00
group by account_number,current_balance;

05.Count the employees whose employee id is greater than equal to 3

select count(banker_eid)
from bankers
where banker_eid >=3;

06. Count customers first name with first letter of the name.

 select left(customer_first_name,1) initial,count(*)
from customers
group by customer_first_name;


QB5
----------------------------------------
________________________________________

01. Select account number, catogary and current balance that maximum current balance which are opened on or before 04.20.2018					
					
SELECT account_number,catogary,current_balance					
FROM accounts					
WHERE current_balance >					
(SELECT max(current_balance) FROM accounts					
WHERE opening_date >='04.20.2018');	

02.Find banker first name ,last name and employee id who aproved credit card holding number 5000 0000 2456 0111.					
					
SELECT first_name, last_name,banker_eid					
FROM bankers					
WHERE banker_eid IN 					
(SELECT banker_eid FROM creditcards					
WHERE credit_card_number='5000 0000 2456 0111');					

03.Find banker first name ,last name and employee id who opened accounts for customers who have current balance more than or equal to $5000.00.					
					
SELECT first_name, last_name,banker_eid					
FROM bankers					
WHERE banker_eid IN 					
(SELECT banker_eid FROM accounts					
WHERE current_balance >= 5000.00);					
				
04.Select customer first name ,last name and social security number who have more than or equal $ 5000.00 current balance in account					
and account opening date after 2018-04-20.					
					
SELECT customer_first_name, customer_last_name,customer_socialsec_number					
FROM customers					
WHERE customer_socialsec_number  IN 					
(SELECT customer_socialsec_number FROM accounts					
WHERE current_balance >= 5000.00 AND opening_date < '2018-04-20');					


05.Select credit card number, credit balance and customer social security number who have account number 000 123 567 890.					
					
SELECT credit_card_number,credit_balance,customer_socialsec_number					
FROM creditcards					
WHERE customer_socialsec_number IN 					
(SELECT customer_socialsec_number FROM accounts					
WHERE account_number='000 123 567 890');

06.Select first name , last name and banker eid and count how many accounts who has employee id equals to 1 approved accounts.					
					
SELECT first_name,last_name, banker_eid 					
FROM bankers					
WHERE banker_eid  =					
(SELECT count(banker_eid ) FROM accounts					
WHERE banker_eid =1 );					
					

					


