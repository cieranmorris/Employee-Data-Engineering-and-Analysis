-- List the following details of each employee: employee number, last name, first name, sex, and salary
-- join employees table and salary table on emp_no
SELECT employees.emp_no AS "Employee Number",
employees.last_name AS "Last Name",
employees.first_name AS "First Name",
employees.sex AS "Sex",
salaries.salary AS "Salary"
FROM employees
LEFT JOIN salaries on 
employees.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT employees.first_name AS "First Name",
employees.last_name AS "Last Name",
employees.hire_date AS "Hire Date"
FROM employees
WHERE hire_date >= '01/01/1986' AND hire_date < '12/31/1986';