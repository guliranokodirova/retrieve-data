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