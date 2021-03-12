-- List the following details of each employee: employee number, last name, first name, sex, and salary
-- join employees table and salary table on emp_no
SELECT employees.emp_no AS "Employee Number",
employees.last_name AS "Last Name",
employees.first_name AS "First Name",
employees.sex AS "Sex",
salaries.salary AS "Salary"
FROM employees
LEFT JOIN salaries on 
employees.emp_no = salaries.emp_no