        
		
		
		
		declare @fullname1 varchar(100) = 'Adam John Smith'
 declare @firstname1 varchar(30) = 'Adam' 
 declare @middlename varchar(30) ='John' 
 declare @lastname1 varchar(30) = 'Smith' 
                    select SUBSTRING(@fullname1, 1, charindex(' ', @fullname1)) as 'first_name',
                           SUBSTRING(@fullname1, charindex(' ', @fullname1), LEN(@middlename) + 1) AS 'middle_name',
						   SUBSTRING(@fullname1, LEN(@firstname1) + LEN(@middlename) + 2, LEN(@lastname1) + 1 ) as 'last_name'
