/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

CREATE VIEW "90-95" AS
SELECT * from employees as e
   Where EXTRACT (year from e.hire_date) ::INT between 1990 and 1995
   Order by e.emp_no;

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

CREATE VIEW "bigbucks" AS
SELECT e.emp_no, s.salary
FROM employees as e
JOIN salaries as s USING(emp_no)
WHERE s.salary > 80000
ORDER BY s.salary;

