-- Create a table with all major constraints

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,                            -- PRIMARY KEY
    emp_name VARCHAR(50) NOT NULL,                     -- NOT NULL constraint
    email VARCHAR(100) UNIQUE,                         -- UNIQUE constraint
    age INT CHECK (age >= 18 AND age <= 65),           -- CHECK constraint
    department_id INT,                                 
    join_date DATE DEFAULT CURRENT_DATE                -- DEFAULT constraint
);

-- Create a second table to demonstrate FOREIGN KEY
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- Alter employees table to add FOREIGN KEY
ALTER TABLE employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);
-- Insert into departments
INSERT INTO departments VALUES (1, 'HR'), (2, 'IT'), (3, 'Finance');

-- Insert into employees
INSERT INTO employees (emp_id, emp_name, email, age, department_id)
VALUES
(101, 'Manju', 'manju@example.com', 25, 2),
(102, 'Ravi', 'ravi@example.com', 30, 1);
