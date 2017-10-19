//Display unique rows
SELECT DISTINCT column1, column2, ...
FROM table_name;

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
//To display even numbers.
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
SELECT column_name(s)
FROM table1
INNER JOIN table2 
    ON table1.column_name = table2.column_name;   
  
//Right Join:
//Right join is used to retrieve rows which are common between the tables and all rows of Right hand
//side table. It returns all the rows from the right hand side table even though there are no matches 
//in the left hand side table.
SELECT column_name(s)
FROM table1
RIGHT JOIN table2 
    ON table1.column_name = table2.column_name;

//Left Join:
//Left join is used to retrieve rows which are common between the tables and all rows of Left hand
//side table. It returns all the rows from the Left hand side table even though there are no matches 
//in the right hand side table.
SELECT column_name(s)
FROM table1
LEFT JOIN table2 
    ON table1.column_name = table2.column_name;

//Full join return rows when there are matching rows in any one of the tables. This means, it returns 
//all the rows from the left hand side table and all the rows from the right hand side table.
SELECT table1.column1, table2.column2...
FROM table1
FULL JOIN table2
    ON table1.common_field = table2.common_field;

//create table
CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20), species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);

//delete tables
drop table if exists table1;

//Alter add row
ALTER TABLE table_name
ADD column_name datatype; 

//alter delete row
ALTER TABLE table_name
DROP COLUMN column_name; 

//Alter modify row
ALTER TABLE table_name
MODIFY COLUMN column_name datatype; 

//create primary id
CREATE TABLE animals (
     id MEDIUMINT NOT NULL AUTO_INCREMENT,
     name CHAR(30) NOT NULL,
     PRIMARY KEY (id)
);

//create foreign key
CREATE TABLE parent (
    id INT NOT NULL,
    PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE child (
    id INT,
    parent_id INT,
    INDEX par_ind (parent_id),
    FOREIGN KEY (parent_id)
        REFERENCES parent(id)
        ON DELETE CASCADE
) ENGINE=INNODB;
