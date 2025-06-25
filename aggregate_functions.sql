
--  1. COUNT() – Count total rows
SELECT COUNT(*) AS total_students FROM students;

-- Count how many employees are in IT department
SELECT COUNT(*) AS it_employees FROM employees WHERE department = 'IT';


--  2. SUM() – Total of numeric column
-- Total salary of all employees
SELECT SUM(salary) AS total_salary FROM employees;

-- Total salary of Admin department employees
SELECT SUM(salary) AS admin_salary FROM employees WHERE department = 'Admin';


--  3. AVG() – Average value
-- Average age of students
SELECT AVG(age) AS average_age FROM students;

-- Average salary in the Finance department
SELECT AVG(salary) AS avg_finance_salary FROM employees WHERE department = 'Finance';


--  4. MIN() and MAX() – Smallest / Largest
-- Youngest and oldest student
SELECT MIN(age) AS youngest, MAX(age) AS oldest FROM students;

-- Lowest and highest salary
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM employees;
