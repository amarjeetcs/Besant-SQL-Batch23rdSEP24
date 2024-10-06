Practical Guide for SQL Server Commands:
Create a new database:


CREATE DATABASE asr_training1;
This command creates a new database named asr_training1.
List all databases:


SELECT name FROM sys.databases;
This command retrieves the names of all databases present in the SQL Server instance.
Switch to a specific database:


USE asr_new_databasename;
This command sets asr_new_databasename as the active database, meaning subsequent queries will run against this database.
Check the list of tables in the current database:


SELECT name FROM sys.tables;
This command lists all the table names in the currently active database.
Create a new table:


CREATE TABLE student (
    id INT,
    name VARCHAR(20),
    city VARCHAR(20)
);
This creates a table called student with three columns: id, name, and city.
Describe the table structure:


EXEC sp_help 'student';
This stored procedure provides detailed information about the student table, including column names, data types, constraints, and indexes.
Insert data into the table:


INSERT INTO student(id, name, city) VALUES(101, 'amarjeet kumar singh', 'bangalore');
This inserts a row of data into the student table.
Fetch all data from the table:


SELECT * FROM student;
This retrieves all rows and columns from the student table.
Drop (delete) a database:


DROP DATABASE asr_training;
This command deletes the asr_training database. Warning: Dropping a database will remove all data and tables inside it.
Rename the database:


ALTER DATABASE asr_training MODIFY NAME = asr_new_databasename;
This command renames the database asr_training to asr_new_databasename.
Additional Useful Commands for SQL Server:
Check the current database:


SELECT DB_NAME();
This retrieves the name of the currently active database.
List all the columns of a table:


SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'student';
This command lists all columns in the student table.
View the current user logged into SQL Server:


SELECT SYSTEM_USER;
This shows the current user account logged in to SQL Server.
View current database size:

sql
Copy code
EXEC sp_spaceused;
This provides information about the total size and available space in the current database.
Drop a table:

sql
Copy code
DROP TABLE student;
This deletes the student table from the current database.
Add a new column to a table:


ALTER TABLE student
ADD age INT;
This adds a new age column to the student table.
Modify a column's datatype:


ALTER TABLE student
ALTER COLUMN name VARCHAR(50);
This changes the datatype of the name column from VARCHAR(20) to VARCHAR(50).
Delete specific records from a table:


DELETE FROM student WHERE id = 101;
This removes the row where id = 101 from the student table.
Update a record in the table:


UPDATE student
SET city = 'Hyderabad'
WHERE id = 101;
This updates the city of the student with id = 101 to 'Hyderabad'.
With these commands, you can perform a wide variety of SQL operations, from database creation to modification and data handling in SQL Server.








