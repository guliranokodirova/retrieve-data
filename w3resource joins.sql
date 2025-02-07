---1. From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.

select * from [W3Resource].[Inventory].[Salesman]
select * from [W3Resource].[Inventory].[Customer]

select name, cust_name, Salesman.city  from [W3Resource].[Inventory].[Salesman]
join [W3Resource].[Inventory].[Customer] on Salesman.city = Customer.city


---2. From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.

select * from [W3Resource].[Inventory].[Salesman]
select * from [W3Resource].[Inventory].[Orders]

select a.ord_no, a.purch_amt, b.name, b.city  
from [W3Resource].[Inventory].[Orders] a, 
 [W3Resource].[Inventory].[Salesman] b where  a.salesman_id = b.salesman_id and purch_amt between 500 and 2000


 ---3. From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.


select * from [W3Resource].[Inventory].[Salesman]
select * from [W3Resource].[Inventory].[Customer]


select a.name, a.city, a.commission, b.cust_name from [W3Resource].[Inventory].[Salesman] as a inner join 
                                                 [W3Resource].[Inventory].[Customer] as b on a.salesman_id = b.salesman_id

----4. From the following tables write a SQL query to find salespeople who received commissions of more 
---than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.

select a.cust_name, a.city, b.name, b.commission from  [W3Resource].[Inventory].[Salesman] as b inner join 
  [W3Resource].[Inventory].[Customer] as a on a.salesman_id = b.salesman_id
  where b.commission > 0.12 
								
----5. From the following tables write a SQL query to locate those salespeople who do not live in the same city where their customers 
---live and have received a commission of more than 12% from the company.
---Return Customer Name, customer city, Salesman, salesman city, commission. 						
select a.cust_name, a.city, b.name, b.commission from [W3Resource].[Inventory].[Customer] as a 
                                           inner join [W3Resource].[Inventory].[Salesman] as b
										   on a.salesman_id = b.salesman_id
										  where a.city <> b.city and b.commission > 0.12 


----6. From the following tables write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission. 
 

select a.ord_no, a.ord_date, a.purch_amt, b.cust_name, b.grade, c.name, c.commission
from [W3Resource].[Inventory].[Orders] as a inner join [W3Resource].[Inventory].[Customer] as b on a.customer_id = b.customer_id
  left join  [W3Resource].[Inventory].[Salesman] as c on b.salesman_id = c.salesman_id

---7. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned. 
select a.ord_no, a.ord_date, a.purch_amt, b.cust_name, b.grade, c.name, c.commission
from [W3Resource].[Inventory].[Orders] as a inner join [W3Resource].[Inventory].[Customer] as b on a.customer_id = b.customer_id
  left join  [W3Resource].[Inventory].[Salesman] as c on b.salesman_id = c.salesman_id


  ----8. From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id. 
  select a.cust_name, a.city, a.grade, b.name, b.city from [W3Resource].[Inventory].[Customer] as a 
                                                      join [W3Resource].[Inventory].[Salesman] as b on a.salesman_id = b.salesman_id
													  order by a.customer_id asc

---9. From the following tables write a SQL query to find those customers with a grade less than 300. Return cust_name, 
---customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.


select a.cust_name, a.city, a.grade, b.name, b.city from [W3Resource].[Inventory].[Customer] as a 
                                     join [W3Resource].[Inventory].[Salesman] as b on a.salesman_id = b.salesman_id
									 where a.grade < 300
									 order by customer_id

----10. Write a SQL statement to make a report with customer name, city, order number, order date,
----and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not.

select a.cust_name, a.city, b.ord_no, b.ord_date, b.purch_amt from  [W3Resource].[Inventory].[Customer] as  a
               join  [W3Resource].[Inventory].[Orders] as b on a.customer_id = b.customer_id
			 order by b.ord_date asc 
									 