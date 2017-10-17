//delete duplicate records in Ssql
//A really easy way to do this is to add a UNIQUE index on the 3 columns. 
//When you write the ALTER statement, include the IGNORE keyword. Like so:

ALTER IGNORE TABLE jobs
ADD UNIQUE INDEX idx_name (site_id, title, company);
//This will drop all the duplicate rows. As an added benefit, 
//future INSERTs that are duplicates will error out. As always, 
//you may want to take a backup before running something like this...

//How to fetch alternate records from a table?
//Records can be fetched for both Odd and Even row numbers -.
//To display even numbers-.
Select studentId from (Select rowno, studentId from student) where mod(rowno,2)=0

//to display odd numbers
Select studentId from (Select rowno, studentId from student) where mod(rowno,2)=1

//What is the command used to fetch first 5 characters of the string? 
Select SUBSTRING(StudentName,1,5) as studentname from student

//Write an SQL query to get third maximum salary of an employee from a table named employee_table.
SELECT TOP 1 salary   
FROM (  
    SELECT TOP 3 salary  
    FROM employee_table  
    ORDER BY salary DESC ) AS emp  
ORDER BY salary ASC;   

//Inner join:
//Inner join returns rows when there is at least one match of rows between the tables.

//Right Join:
//Right join is used to retrieve rows which are common between the tables and all rows of Right hand
//side table. It returns all the rows from the right hand side table even though there are no matches 
//in the left hand side table.

//Right Join:
//Right join is used to retrieve rows which are common between the tables and all rows of Right hand
//side table. It returns all the rows from the right hand side table even though there are no matches 
//in the left hand side table.

//Left Join:
//Left join is used to retrieve rows which are common between the tables and all rows of Left hand
//side table. It returns all the rows from the Left hand side table even though there are no matches 
//in the right hand side table.

//Full join return rows when there are matching rows in any one of the tables. This means, it returns 
//all the rows from the left hand side table and all the rows from the right hand side table.
