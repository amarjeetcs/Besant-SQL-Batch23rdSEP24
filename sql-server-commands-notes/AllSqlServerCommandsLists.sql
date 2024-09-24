create database asr_training; -- for creating dataabse
SELECT name FROM sys.databases; -- for selecting database 
use asr_training;  -- for using database
SELECT name FROM sys.tables;   --for checking list of tables present in database
create table student(id int, name varchar(20), city varchar(20)); --student table created
EXEC sp_help 'student';  --for describing the table information
insert into student(id, name, city) values(101,'amarjeet kumar singh','bangalore'); --inserted the data into table student
select *From student; --feching data from tables



