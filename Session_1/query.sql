-- G3_23BCS10258_Mohd_Shahid

CREATE TABLE Employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC(10,2)
);

INSERT INTO Employee (name, department, salary) VALUES
('Aditya', 'HR', 45000.00),
('Aman', 'Finance', 60000.00),
('Nikhil', 'IT', 75000.00),
('Rahul', 'Marketing', 52000.00);

CREATE VIEW Employee_View AS
SELECT id, name, department, salary
FROM Employee;

CREATE ROLE Analyst;

GRANT SELECT ON Employee_View TO Analyst;

SELECT * FROM Employee_view
