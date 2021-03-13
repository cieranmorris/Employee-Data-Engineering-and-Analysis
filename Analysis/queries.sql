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

--List the manager of each department incorporating department number, department name, the manager's employee number, last name, first name
SELECT departments.dept_no AS "Department Number",
departments.dept_name AS "Department Name",
dept_manager.emp_no AS "Manager Employee Number",
employees.last_name AS "Last Name",
employees.first_name AS "First Name"
FROM dept_manager
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no;

--List the department of each employee incorporating employee number, last name, first name, and department name
SELECT departments.dept_name AS "Department Name",
dept_emp.emp_no AS "Employee Number",
employees.last_name AS "Last Name",
employees.first_name AS "First Name"
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;
