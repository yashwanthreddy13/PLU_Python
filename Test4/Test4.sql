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
3. Display only the Course column.
