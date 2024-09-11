
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
SELECT e.emp_no,COUNT(t.title) AS "Amount" FROM employees as e
JOIn titles as t USING (emp_no)
WHERE EXTRACT(YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
HAVING COUNT(t.title) > 2
ORDER BY e.emp_no ;



/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
SELECT e.emp_no,COUNT(s.salary) AS "changes" from employees as e
JOIN salaries as s USING (emp_no)
JOIN dept_emp as de USING (emp_no)
WHERE de.dept_no='d005'
GROUP BY e.emp_no
HAVING COUNT(s.salary) > 15
ORDER BY e.emp_no;


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
SELECT e.emp_no, count(de.dept_no) as "worked for # departments"
FROM employees as e
JOIN dept_emp AS de USING(emp_no)
GROUP BY e.emp_no
HAVING count(de.dept_no) > 1
ORDER BY e.emp_no;
