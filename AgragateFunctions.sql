select *   from [W3Resource].[Inventory].[Orders]

---1. From the following table, write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.
select sum(purch_amt) from [W3Resource].[Inventory].[Orders] as tpa 

---2. From the following table, write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount. 
select avg(purch_amt) from [W3Resource].[Inventory].[Orders] as apa 

---3. From the following table, write a SQL query that counts the number of unique salespeople. Return number of salespeople.  
select count ( distinct salesman_id) from  [W3Resource].[Inventory].[Orders] 

---4. From the following table, write a SQL query to count the number of customers. Return number of customers.
select count(customer_id) from [W3Resource].[Inventory].[Customer]

---5. From the following table, write a SQL query to determine the number of customers who received at least one grade for their activity.  
select COUNT(grade) from  [W3Resource].[Inventory].[Customer]

---6. From the following table, write a SQL query to find the maximum purchase amount.  
select MAX(purch_amt) from [W3Resource].[Inventory].[Orders]

---7. From the following table, write a SQL query to find the minimum purchase amount. 
select MIN(purch_amt)  from [W3Resource].[Inventory].[Orders]

---8. From the following table, write a SQL query to find the highest grade of the customers in each city. Return city, maximum grade. 
select MAX ( grade)  as highestGrade , city  from  [W3Resource].[Inventory].[Customer] 
group by city 

--- 9. From the following table, write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount. 
select MAX (purch_amt)  as highestPurch , customer_id   from [W3Resource].[Inventory].[Orders]
group by customer_id

---10. From the following table, write a SQL query to find the highest purchase amount ordered by each customer on a particular date. Return, order date and highest purchase amount.
select MAX (purch_amt)  as highestPurch , customer_id, ord_date  from [W3Resource].[Inventory].[Orders]
group by customer_id, ord_date

---11. From the following table, write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'. Return salesperson ID, purchase amount 
select MAX (purch_amt)  as highestPurch , salesman_id, ord_date  from [W3Resource].[Inventory].[Orders]
where ord_date = '2012-08-17'
group by salesman_id, ord_date

---12. From the following table, write a SQL query to find the highest order (purchase) amount by each customer on a particular order date.
---Filter the result by highest order (purchase) amount above 2000.00. Return customer id, order date and maximum purchase amount.
select MAX (purch_amt)  as highestPurch , customer_id, ord_date  from [W3Resource].[Inventory].[Orders]
group by customer_id, ord_date, purch_amt
having purch_amt > 2000



---12. From the following table, write a SQL query to find the highest order (purchase) amount by each customer on a particular order date.
---Filter the result by highest order (purchase) amount above 2000.00. Return customer id, order date and maximum purchase amount.
select MAX (purch_amt)  as highestPurch , customer_id, ord_date  from [W3Resource].[Inventory].[Orders]
group by customer_id, ord_date, purch_amt
having purch_amt > 2000




---13. From the following table, write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 
--(Begin and end values are included.) by combination of each customer and order date. Return customer id, order date and maximum purchase amount.

select customer_id, ord_date, max(purch_amt) as 'max_purch'  from [W3Resource].[Inventory].[Orders] 
where purch_amt between 2000 and 6000 
group by customer_id , ord_date , purch_amt 
order by max(purch_amt) asc 
select * from [W3Resource].[Inventory].[Orders]


---15. From the following table, write a SQL query to determine the maximum order amount for each customer.
---The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Return customer id and maximum purchase amount.
select  customer_id, MAX(purch_amt) as 'max' from [W3Resource].[Inventory].[Orders]
where customer_id between 3002 and 3007 
group by customer_id 


---16. From the following table, write a SQL query to find the maximum order (purchase) amount for each customer. 
----The customer ID should be in the range 3002 and 3007(Begin and end values are included.).
---Filter the rows for maximum order (purchase) amount is higher than 1000. Return customer id and maximum purchase amount.

select  customer_id, MAX(purch_amt) as 'max'  from [W3Resource].[Inventory].[Orders]
where customer_id between 3002 and 3007 
group by customer_id 
having  MAX(purch_amt) >1000



----17. From the following table, write a SQL query to determine the maximum order (purchase) amount generated by each salesperson.
---Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). Return salesperson id and maximum purchase amount.

select salesman_id, MAX(purch_amt) as max 
    from [W3Resource].[Inventory].[Orders]
	group by salesman_id 
	having salesman_id between 5003 and 5008


----18. From the following table, write a SQL query to count all the orders generated on '2012-08-17'. Return number of orders.
 select count(purch_amt) as ord_num from [W3Resource].[Inventory].[Orders]
 where ord_date = '2012-08-17'


 ----19. From the following table, write a SQL query to count the number of salespeople in a city. Return number of salespeople.
 
 select city, COUNT(salesman_id) as SP  from [W3Resource].[Inventory].[salesman]
 group by city 


 ----20. From the following table, write a SQL query to count the number of orders based on the combination of each order date and salesperson. 
 --Return order date, salesperson id.
 select  salesman_id, ord_date, count(purch_amt) from [W3Resource].[Inventory].[orders]
 group by salesman_id , ord_date 



 ----- 21. From the following table, write a SQL query to calculate the average product price. Return average product price.
 select AVG(pro_price) as mid from [W3Resource].[dbo].[item_mast]


 ----22. From the following table, write a SQL query to count the number of products whose price are higher than or equal to 350. Return number of products.
 select COUNT(pro_price ) as num from  [W3Resource].[dbo].[item_mast]

 where  pro_price >= 350

 ----23. From the following table, write a SQL query to compute the average price for unique companies. Return average price and company id.

  select pro_name,  pro_id, avg(pro_price ) as avg from  [W3Resource].[dbo].[item_mast]
  group by pro_name, pro_id 


  ----24. From the following table, write a SQL query to compute the sum of the allotment amount of all departments. Return sum of the allotment amount.

  select * from [W3Resource].[dbo].[Emp_department]   ----- could not find the table 


  ----25. From the following table, write a SQL query to count the number of employees in each department. Return department code and number of employees.

    select emp_dept, COUNT(emp_idno) as number_of_emp from [W3Resource].[dbo].[emp_details] 
	group by emp_dept 
