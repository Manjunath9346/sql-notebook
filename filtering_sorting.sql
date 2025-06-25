

--  1. WHERE Clause
-- Students older than 20
SELECT * FROM students WHERE age > 20;

-- Employees with salary above 50,000
SELECT * FROM employees WHERE salary > 50000;


--  2. ORDER BY Clause
-- Students ordered by age ascending
SELECT * FROM students ORDER BY age ASC;

-- Employees ordered by salary descending
SELECT * FROM employees ORDER BY salary DESC;


--  3. BETWEEN Clause
-- Employees with salary between 30000 and 60000
SELECT first_name, salary FROM employees 
WHERE salary BETWEEN 30000 AND 60000;


--  4. IN Clause
-- Students from specific cities
SELECT name, city FROM students 
WHERE city IN ('Hyderabad', 'Chennai');


--  5. LIKE Clause
-- Employees whose name starts with 'S'
SELECT first_name FROM employees 
WHERE first_name LIKE 'S%';

-- Students whose name ends with 'i'
SELECT name FROM students 
WHERE name LIKE '%i';


--  6. IS NULL and IS NOT NULL
-- Let's assume we allowed NULLs in city (modify students table if needed)
-- Find students whose city is not filled in
SELECT * FROM students WHERE city IS NULL;

-- Students who have city info
SELECT * FROM students WHERE city IS NOT NULL;
