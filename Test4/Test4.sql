/* Question 1
A company wants to store employee information.
Create the following table.
Employee
| Column Name | Data Type |
|------------ |------------ |
| EmployeeID | INT |
| EmployeeName | VARCHAR(100) |
| Department | VARCHAR(50) |
| Salary
| INT
| JoiningDate | DATE

Tasks
1. Create the table.
2. Make 'EmployeeID' the Primary Key.*/

CREATE DATABASE Test4;
USE Test4;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATE
);

/* Question 2
Consider the following table.
Student
| StudentID | Name | Course | Marks |
|--------- |----- |------ |----- |
| 101    | Rahul | Python | 80 |
| 102    | Priya | Java | 75 |
| 103    | Aman | Python | 90 |
| 104    | Neha | SQL | 70 |
Write SQL queries to:
1. Display all student records.
2. Display only Name and Marks.
3. Display only the Course column.*/

Select * from Student;
Select Name, Marks from Student;
Select Course from Student;

/*Question 3
Consider the following table.
Product
| ProductID | ProductName | Category | Price |
| --------- | ----------- | ----------- | ----- |
| 1 | Mouse | Electronics | 800 |
| 2 | Laptop | Electronics | 65000 |
| 3 | Chair | Furniture | 4500 |
| 4 | Keyboard | Electronics | 1200 |
Write SQL queries to:
1. Display products costing more than ₹1000.
2. Display all Electronics products.
3. Display the Laptop record.*/

Select * from Product where Price > 1000;
Select * from Product where Category = 'Electronics';
Select * from Product where ProductName = 'Laptop';

/*Question 4
Create the following table.
Customer
| Column | Data Type |
|------------ |------------ |
| CustomerID | INT |
| CustomerName | VARCHAR(100) |
| City | VARCHAR(50) |
| Mobile | VARCHAR(15) |
Tasks
1. Create the table.
2. Make CustomerID the Primary Key.
3. Explain why Primary Keys are important.*/

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Mobile VARCHAR(15)
);
/* Primary Keys are important because they uniquely identify each record in a row and prevent duplicate entries. */

/*Question 5
Consider the following tables.
Employee
| EmployeeID | Name | DepartmentID |
| ---------- | ----- | ------------ |
| 1 | Rahul | 101 |
| 2 | Priya | 102 |
| 3 | Aman | 101 |
Department
| DepartmentID | DepartmentName |
| ------------ | -------------- |
| 101 | IT |
| 102 | HR |
Write an SQL query to display
* Employee Name
* Department Name
using an INNER JOIN.*/

SELECT Employee.Name, Department.DepartmentName
From Employee
INNER JOIN Department ON Employee.DepartmentID = Department.DepartmentID;

/* Question 6
Consider the following tables.
Student
| StudentID | Name | CourseID |
| --------- | ----- | -------- |
| 1 | Rahul | 201 |
| 2 | Neha | 202 |
| 3 | Aman | NULL |
Course
| CourseID | CourseName |
| -------- | ---------- |
| 201 | Python |
| 202 | SQL |
Write an SQL query to display all students along with their course names
using a LEFT JOIN.*/

SELECT Student.Name, Course.CourseName
FROM Student
LEFT JOIN Course ON Student.CourseID = Course.CourseID;

/* Question 7
Consider the following table.
Employee
| EmployeeID | Name | Department | Salary |
| ---------- | ----- | ---------- | ------ |
| 1 | Rahul | IT | 65000 |
| 2 | Priya | HR | 45000 |
| 3 | Aman | IT | 70000 |
Create a view named `HighSalaryEmployees` that displays employees earning
more than ₹60,000. */

CREATE VIEW HighSalaryEmployees AS
SELECT * FROM Employee WHERE Salary > 60000;

/* Question 8
Consider the following table.
Orders
| OrderID | CustomerName | OrderDate | Amount |
| ------- | ------------ | --------- | ------ |
Tasks
1. Create an index on OrderID.
2. Explain one benefit of creating an index. */

CREATE INDEX idx_OrderID ON Orders(OrderID);
/* Creating an index is used has a lookup table where the database will match the rows index in a table instead of seeing every row in the tables.
*/

/*Question 9
Consider the following table.
Book
| BookID | BookName | Author | Price |
| ------ | ------------- | ------ | ----- |
| 1 | Python Basics | John | 500 |
| 2 | Learning SQL | David | 700 |
Write a stored procedure named 'GetBooks' that displays all records from the
Book table. */

CREATE PROCEDURE GetBooks()
BEGIN
    SELECT * FROM Book;
END 

CALL GetBooks();

/* Question 10
Consider the following tables.
Student
| StudentID | Name | CourseID |
| --------- | ----- | -------- |
| 1 | Rahul | 101 |
| 2 | Neha | 102 |
| 3 | Aman | 101 |
Course
| CourseID | CourseName |
| -------- | ---------- |
| 101 | Python |
| 102 | Java |
Write SQL queries to:
1. Display Student Name and Course Name using an INNER JOIN.
2. Display only students enrolled in the Python course using the WHERE
clause.
3. Create a view named 'PythonStudents' for students enrolled in the Python
course. */


SELECT Student.Name, Course.CourseName
FROM Student
INNER JOIN Course
ON Student.CourseID = Course.CourseID;

SELECT Student.Name, Course.CourseName
FROM Student
INNER JOIN Course
ON Student.CourseID = Course.CourseID
WHERE Course.CourseName = 'Python';

CREATE VIEW PythonStudents AS
SELECT Student.Name, Course.CourseName
FROM Student
INNER JOIN Course
ON Student.CourseID = Course.CourseID
WHERE Course.CourseName = 'Python';