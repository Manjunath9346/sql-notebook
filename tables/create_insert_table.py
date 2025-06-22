-- Creating the students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT CHECK (age >= 0),
    city VARCHAR(50)
);



INSERT INTO students (id, name, age, city)
VALUES (1, 'Manjunath', 20, 'Madanapalle');

INSERT INTO students (id, name, age, city)
VALUES 
(2, 'Ravi', 22, 'Hyderabad'),
(3, 'Anjali', 18, 'Chennai');

-- Example SELECT query
SELECT * FROM students WHERE age > 18;
