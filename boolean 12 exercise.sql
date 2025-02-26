                                                -----BOOLEAN----


1. ----From the following table, write a SQL query to locate the details of customers with grade values above 100. Return customer_id, cust_name, city, grade, and salesman_id. 
select * FROM [W3Resource].[Inventory].[Customer] 
where grade > 100

2.---From the following table, write a SQL query to find all the customers in �New York� city who have a grade value above 100. Return customer_id, cust_name, city, grade, and salesman_id
  select * FROM [W3Resource].[Inventory].[Customer] 
  where grade > 100 and city = 'New York' 

3. ---From the following table, write a SQL query to find customers who are from the city of New York or
---have a grade of over 100. Return customer_id, cust_name, city, grade, and salesman_id.  
 select * FROM [W3Resource].[Inventory].[Customer] 
  where grade > 100 or city = 'New York'

4. ---From the following table, write a SQL query to find customers who are either from the city 'New York' or who do not have
 ---a grade greater than 100. Return customer_id, cust_name, city, grade, and salesman_id.  
 select * FROM [W3Resource].[Inventory].[Customer] 
  where  not grade > 100 or city = 'New York'

5.  ----From the following table, write a SQL query to identify customers who are not from the city of 'New York' 
  ---and do not have a grade value greater than 100. Return customer_id, cust_name, city, grade, and salesman_id.
 select * FROM [W3Resource].[Inventory].[Customer] 
  where  not (grade > 100 or city = 'New York')

6.---From the following table, write a SQL query to find details of all orders excluding those with ord_date equal to '2012-09-10' 
---and salesman_id higher than 5005 or purch_amt greater than 1000.Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
 select * FROM [W3Resource].[Inventory].[Orders]
 where not ord_date = '2012-09-10'  and salesman_id > 5005 
 or 
 purch_amt > 1000

 7.---From the following table, write a SQL query to find the details of those salespeople whose commissions range from 0.10 to0.12. Return salesman_id, name, city, and commission. 
 select * FROM [W3Resource].[Inventory].[Salesman]
 where commission  > 0.10 and  commission < 0.12 

 8.---From the following table, write a SQL query to find details of all orders with a purchase amount less than 200 or exclude orders with an order date greater than 
 ---or equal to '2012-02-10' and a customer ID less than 3009. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
  select * FROM [W3Resource].[Inventory].[Orders]
  where purch_amt  < 200 or not ord_date >=  '2012-02-10' 
  and
  customer_id < 3009 

  9. ---From the following table, write a SQL query to find all orders that meet the following conditions. Exclude combinations
  ---of order date equal to '2012-08-17' or customer ID greater than 3005 and purchase amount less than 1000.
 select * FROM [W3Resource].[Inventory].[Orders]
 where ord_date = '2012-08-17' or customer_id > 3005 and purch_amt < 1000

 10.---Write a  SQL query that displays order number, purchase amount, 
 ---and the achieved and unachieved percentage (%) for those orders that exceed 50% of the target value of 6000. 
 select ord_no, purch_amt,
                 (100 * purch_amt)/6000 as 'achieved' , 
				 (100 * (6000 - purch_amt))/ 6000 as 'unachieved' 
             FROM [W3Resource].[Inventory].[Orders]
			 where (100 * purch_amt)/6000 > 50 

11. ---From the following table, write a SQL query to find the details of all employees 
---whose last name is �Dosni� or �Mardy�. Return emp_idno, emp_fname, emp_lname, and emp_dept. 
       select * FROM [W3Resource].[dbo].[emp_details]
	   where emp_lname = 'Dosni' or emp_lname = 'Mardy' 

12. --- From the following table, write a SQL query to find the employees who work at depart 47 or 63. Return emp_idno, emp_fname, emp_lname, and emp_dept.
       select * FROM [W3Resource].[dbo].[emp_details]
	   where emp_dept = 47 or emp_dept = 63
      
      
      
  
   

