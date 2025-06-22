
-- Step 1: Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    status VARCHAR(10) DEFAULT 'Active',
    age INT CHECK (age >= 18)
);

-- Step 2: Insert sample data into employees table
INSERT INTO employees (emp_id, first_name, last_name, department, salary, hire_date, age)
VALUES
(101, 'Anil', 'Sharma', 'HR', 35000.00, '2020-01-15', 28),
(102, 'Sneha', 'Reddy', 'IT', 55000.50, '2019-08-10', 24),
(103, 'Kiran', 'M', 'Finance', 47000.00, '2021-03-22', 30),
(104, 'Deepika', 'Iyer', 'IT', 62000.75, '2018-11-03', 29),
(105, 'Vijay', 'Kumar', 'Admin', 30000.00, '2022-07-19', 33);

-- Step 3: Sample SELECT queries
-- View all employees
SELECT * FROM employees;

-- View only IT department employees
SELECT first_name, department, salary FROM employees WHERE department = 'IT';

-- View employees with salary above 40,000
SELECT first_name, salary FROM employees WHERE salary > 40000;

-- Step 4: Describe structure (MySQL)
-- DESCRIBE employees;
