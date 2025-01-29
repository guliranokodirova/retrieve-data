                 ---RETRIEVE DATA FROM TABLE---
1.
 ---Write a SQL statement that displays all the information about all salespeople.---

select * FROM [W3Resource].[Inventory].[Salesman]

2. 
---Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution". 
select  'This is SQL Exercise, Practice and Solution'
print  'This is SQL Exercise, Practice and Solution'

3.
---Write a SQL query to display three numbers in three columns.
select 1,2,3

4.
---Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server. 
select  10+15

5. 
---Write an SQL query to display the result of an arithmetic expression. 
select 6787.23454 / 3543547.46 * 333 + 234567

6.
---Write a SQL statement to display specific columns such as names and commissions for all salespeople. 
select name FROM [W3Resource].[Inventory].[Salesman]
select commission FROM [W3Resource].[Inventory].[Salesman]

7. 
---Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.  
select ord_date, salesman_id, ord_no, purch_amt  FROM [W3Resource].[Inventory].[Orders]

8.
---From the following table, write a SQL query to identify the unique salespeople ID. Return salesman_id. 
select distinct  salesman_id From  [W3Resource].[Inventory].[Salesman]
---DISTINCT 

9. 
----From the following table, write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city.
 select name, city From  [W3Resource].[Inventory].[Salesman] 
where city = 'Paris'

10. 
---From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.  
select * From  [W3Resource].[Inventory].[Customer]
where grade = 200

11.
---From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt. 
select ord_date, ord_no, purch_amt  FROM [W3Resource].[Inventory].[Orders]
where salesman_id = 5001

12. 
---From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner. 
select year, subject, winner FROM [W3Resource].[dbo].[nobel_win]
where year = 1970

13. 
---From the following table, write a SQL query to find the Nobel Prize winner in �Literature� for 1971. Return winner. 
select winner  FROM [W3Resource].[dbo].[nobel_win]
where year = 1971 and subject = 'Literature'   

14. 
---From the following table, write a SQL query to locate the Nobel Prize winner FROM [W3Resource].[dbo].[nobel_win]. Return year, subject. 
select year, subject FROM [W3Resource].[dbo].[nobel_win] 
where winner  =  'Dennis Gabor'

15.
---From the following table, write a SQL query to find the Nobel Prize winners in the field of �Physics� since 1950. Return winner. 
select winner FROM [W3Resource].[dbo].[nobel_win]
where subject = 'Physics' and year >= 1950

16. 
---From the following table, write a SQL query to find the Nobel Prize winners in �Chemistry� between the years 1965 and
---1975. Begin and end values are included. Return year, subject, winner, and country.  
select year, subject, winner, country FROM [W3Resource].[dbo].[nobel_win]
where subject = 'Chemistry' and year >= 1965 and year  <= 1975

17. 
---Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.  
select *From  [W3Resource].[dbo].[nobel_win]
where year > 1972 and category ='Prime Minister'

18. 
---From the following table, write a SQL query to retrieve the details of the winners whose
---first names match with the string �Louis�. Return year, subject, winner, country, and category.
select * from  [W3Resource].[dbo].[nobel_win]
where winner like 'Louis %'

19. 
---From the following table, write a SQL query that combines the winners in Physics, 
--1970 and in Economics, 1971. Return year, subject, winner, country, and category. 
select * from  [W3Resource].[dbo].[nobel_win] 
where subject = 'Physics' and year = 1970 
or
 subject = 'Economics' and year = 1971

 20. 
 ---From the following table, write a SQL query to find the Nobel Prize winners in 1970 excluding the 
 ---subjects of Physiology and Economics. Return year, subject, winner, country, and category. 
 select * from  [W3Resource].[dbo].[nobel_win] 
 where year = 1970 and not subject = ' Physiology' and not subject = ' Economics' 
--- or using ' NOT IN'

21. 
---From the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and winners
---in 'Peace' on or after 1974. Return year, subject, winner, country, and category.
 select * from  [W3Resource].[dbo].[nobel_win] 
 where subject = 'Physiology' and year < 1971 
 or
        subject = 'Peace' and year > 1974

22.
---From the following table, write a SQL query to find the details of the Nobel 
---Prize winner 'Johannes Georg Bednorz'. Return year, subject, winner, country, and category. 
select * from  [W3Resource].[dbo].[nobel_win] 
where winner = 'Johannes Georg Bednorz'

23. 
---From the following table, write a SQL query to find Nobel Prize winners for the subject that does not begin with the letter 'P'. Return year, 
---subject, winner, country, and category. Order the result by year, descending and winner in ascending.
select * from  [W3Resource].[dbo].[nobel_win] 
where winner not like 'P%'
order by year asc, winner 

24.
---From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. Order the results by subject, ascending except for
---'Chemistry' and �Economics� which will come at the end of the result set. Return year, subject, winner, country, and category.  
select * from  [W3Resource].[dbo].[nobel_win]
where year = 1970 
order by
case 
 when subject in ('Chemistry' ,'Economics') then 0
                                            else 1
											end asc, winner, subject

25.
---From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 
---to Rs.600. Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com.  
where pro_price between 200 and 600

26.
---From the following table, write a SQL query to calculate the average price for a manufacturer code of 16. Return avg.  
select avg (pro_price) from  [W3Resource].[dbo].[item_mast]
where pro_com = 16

27.
---From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs.'  
select pro_name as 'Item Name', pro_price as 'Price in Rs.' from [W3Resource].[dbo].[item_mast] 

28.
---From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. Order the result by product
---price in descending, then product name in ascending. Return pro_name and pro_price.
select pro_name, pro_price from [W3Resource].[dbo].[item_mast] 
where pro_price >= 250 
order by pro_price desc, pro_name 

29.
---From the following table, write a SQL query to calculate average price of the items for each company. Return average price and company code.
select avg(pro_price) as AvgPrice, pro_com 
from [W3Resource].[dbo].[item_mast]
group by pro_com


30. 
---From the following table, write a SQL query to find the cheapest item(s). Return pro_name and, pro_price.  
select MIN(pro_price) as MinPrice, pro_name, pro_price 
from [W3Resource].[dbo].[item_mast]
group by pro_name, pro_price 
order by pro_price asc

select top 2 pro_price, pro_name
from [W3Resource].[dbo].[item_mast]
order by pro_price asc


31. 
---From the following table, write a SQL query to find the unique last name of all employees. Return emp_lname. 
select distinct emp_lname from [W3Resource].[dbo].[emp_details]


32.
---From the following table, write a SQL query to find the details of employees whose last name is 'Snares'. Return emp_idno, emp_fname, emp_lname, and emp_dept.  
select * from [W3Resource].[dbo].[emp_details]
where emp_lname = 'Snares'

33.
---From the following table, write a SQL query to retrieve the details of the employees who work in the department 57. Return emp_idno, emp_fname, emp_lname and emp_dept. 
select * from [W3Resource].[dbo].[emp_details]
where emp_dept = 57


