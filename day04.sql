CREATE DATABASE day04;
USE day04;

CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(100),
location VARCHAR(100),
budget DECIMAL(12,2));

CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
department_id INT,
salary DECIMAL(10,2),
hire_date DATE,
job_title VARCHAR(100),
FOREIGN KEY (department_id) REFERENCES departments(department_id));

INSERT INTO departments (department_id, department_name, location, budget) VALUES
(1, 'Human Resources', 'New York', 500000.00),
(2, 'Information Technology', 'San Francisco', 1200000.00),
(3, 'Sales', 'Chicago', 800000.00),
(4, 'Marketing', 'Los Angeles', 600000.00),
(5, 'Finance', 'New York', 750000.00),
(6, 'Operations', 'Dallas', 900000.00),
(7, 'Customer Support', 'Austin', 450000.00);


INSERT INTO employees (employee_id, employee_name, department_id, salary, hire_date, job_title) VALUES
(1, 'Sarah Johnson', 1, 65000.00, '2019-03-15', 'HR Manager'),
(2, 'Michael Chen', 1, 52000.00, '2020-07-22', 'HR Specialist'),
(3, 'Emily Rodriguez', 1, 48000.00, '2021-09-10', 'Recruiter'),
(4, 'David Kim', 2, 95000.00, '2018-01-20', 'Senior Developer'),
(5, 'Jessica Martinez', 2, 88000.00, '2019-05-12', 'Software Engineer'),
(6, 'James Wilson', 2, 92000.00, '2018-11-03', 'DevOps Engineer'),
(7, 'Amanda Brown', 2, 78000.00, '2020-02-28', 'Junior Developer'),
(8, 'Christopher Lee', 2, 105000.00, '2017-06-15', 'IT Director'),
(9, 'Jennifer Garcia', 3, 72000.00, '2019-08-25', 'Sales Manager'),
(10, 'Robert Taylor', 3, 58000.00, '2020-04-10', 'Sales Representative'),
(11, 'Lisa Anderson', 3, 61000.00, '2020-10-05', 'Sales Representative'),
(12, 'Daniel Thomas', 3, 55000.00, '2021-01-18', 'Sales Associate'),
(13, 'Karen White', 3, 68000.00, '2019-12-01', 'Senior Sales Rep'),
(14, 'Matthew Harris', 4, 75000.00, '2018-09-14', 'Marketing Manager'),
(15, 'Ashley Martin', 4, 62000.00, '2020-03-22', 'Marketing Specialist'),
(16, 'Joshua Thompson', 4, 58000.00, '2021-06-30', 'Content Creator'),
(17, 'Michelle Jackson', 4, 54000.00, '2021-11-08', 'Social Media Coordinator'),
(18, 'Andrew Miller', 5, 82000.00, '2017-04-12', 'Finance Manager'),
(19, 'Stephanie Davis', 5, 71000.00, '2019-02-28', 'Financial Analyst'),
(20, 'Kevin Rodriguez', 5, 68000.00, '2020-08-15', 'Accountant'),
(21, 'Nicole Martinez', 5, 73000.00, '2018-10-20', 'Senior Accountant'),
(22, 'Brian Wilson', 6, 79000.00, '2019-01-10', 'Operations Manager'),
(23, 'Rebecca Moore', 6, 64000.00, '2020-05-18', 'Operations Analyst'),
(24, 'Justin Taylor', 6, 61000.00, '2020-09-25', 'Logistics Coordinator'),
(25, 'Samantha Anderson', 6, 67000.00, '2019-07-30', 'Supply Chain Specialist'),
(26, 'Ryan Thomas', 7, 56000.00, '2020-11-12', 'Support Manager'),
(27, 'Lauren Jackson', 7, 45000.00, '2021-03-05', 'Customer Service Rep'),
(28, 'Brandon White', 7, 43000.00, '2021-08-20', 'Customer Service Rep'),
(29, 'Megan Harris', 7, 47000.00, '2020-12-15', 'Technical Support Specialist'),
(30, 'Tyler Martin', 7, 48000.00, '2021-02-28', 'Support Specialist');

#1. List all employees with their department names
SELECT e.employee_name, d.department_name FROM employees AS e 
LEFT JOIN departments AS d ON e.department_id=d.department_id;

SELECT * FROM departments;
SELECT * FROM employees;

#2. Find the employees in the 'IT' department
SELECT e.employee_name, d.department_name
FROM employees AS e LEFT JOIN departments AS d ON e.department_id=d.department_id
WHERE d.department_name ='Information Technology';

#3. Show employee names, job titles, and department locations
SELECT e.employee_name, e.job_title, d.location
FROM employees AS e LEFT JOIN departments AS d ON e.department_id=d.department_id;

#4. Calculate the total salary expense for each department
SELECT SUM(e.salary) AS total_salary, d.department_name
FROM employees AS e LEFT JOIN departments AS d ON e.department_id=d.department_id
GROUP BY d.department_name;

#5. Find all employees hired after 2020 along with their department names
SELECT e.employee_name, e.hire_date, d.department_name FROM employees AS e
LEFT JOIN departments AS d ON e.department_id=d.department_id
WHERE e.hire_date>'2020-01-01'
ORDER BY e.hire_date ASC;

#6. List departments and count how many employees are in each
SELECT d.department_name, COUNT(*) AS total_employees FROM departments AS d
LEFT JOIN employees AS e ON d.department_id=e.department_id
GROUP BY d.department_id;

#7. Show employees earning more than $60,000 with department info.
SELECT e.employee_name, e.salary, d.department_name
FROM employees AS e LEFT JOIN departments AS d ON e.department_id=d.department_id
WHERE e.salary > '60000'
ORDER BY e.salary ASC;

#8. Find the average salary by department
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM employees AS e LEFT JOIN departments AS d ON e.department_id=d.department_id
GROUP BY d.department_name ORDER BY avg_salary DESC;

#9. List all employees in departments located in 'New York'
SELECT e.employee_name, d.location, d.department_name FROM employees AS e 
LEFT JOIN departments AS d ON e.department_id=d.department_id
WHERE d.location ='New York';

#10. Find the highest paid employee in each department
SELECT e.employee_name, e.salary, d.department_name FROM employees AS e
LEFT JOIN departments AS d ON e.department_id=d.department_id
WHERE e.salary = (SELECT MAX(salary) AS max_salary FROM employees
 WHERE department_id=e.department_id);
 
 