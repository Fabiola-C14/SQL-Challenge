---DATA ANALYSIS------
--Create a list with details of each employee: employee number, last name, first name, sex, and salary.
SELECT em.emp_no AS "Employee Number",
	em.first_name AS "First Name",
	em.last_name AS "Last Name", 
	em.sex AS "Gender", 
	sa.salary as "Salary"
FROM employees em 
INNER JOIN salaries sa 
ON em.emp_no=sa.emp_no;

--Create a list with first name, last name, and hire date for employees who were hired in 1986.
SELECT 
	first_name AS "First Name",
	last_name AS "Last Name",
	hire_date AS "Hire Date"
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'

--Create a list with the manager of each department: department number, 
--department name, the manager's employee number, last name, first name.
SELECT em.emp_no AS "Employee Number", 
	em.first_name AS "First Name", 
	em.last_name AS "Last Name",
	dm.dept_no AS "Dept Number",
	dp.dept_name AS "Dept Name"
FROM employees em
INNER JOIN dept_manager dm
ON em.emp_no=dm.emp_no
INNER JOIN departments dp
ON dm.dept_no=dp.dept_no
	
--Create a list with the department of each employee: employee number,
--last name, first name, and department name.
SELECT em.emp_no AS "Employee Number", 
	em.first_name AS "First Name", 
	em.last_name AS "Last Name",
	dp.dept_name AS "Dept Name"
FROM employees em
INNER JOIN dept_emp de
ON em.emp_no=de.emp_no
INNER JOIN departments dp
ON de.dept_no=dp.dept_no

-- Create a list with first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."
SELECT first_name AS "First Name", 
	last_name AS "Last Name",
	sex AS "Gender"
FROM employees
WHERE first_name= 'Hercules' and last_name LIKE 'B%'

--Create a list with all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
SELECT em.emp_no AS "Employee Number", 
	em.first_name AS "First Name", 
	em.last_name AS "Last Name",
	dp.dept_name AS "Dept Name"
FROM employees em
INNER JOIN dept_emp de
ON em.emp_no=de.emp_no
INNER JOIN departments dp
ON de.dept_no=dp.dept_no
WHERE dp.dept_no='d007'

select * from departments
--Create a list with all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT em.emp_no AS "Employee Number", 
	em.first_name AS "First Name", 
	em.last_name AS "Last Name",
	dp.dept_name AS "Dept Name"
FROM employees em
INNER JOIN dept_emp de
ON em.emp_no=de.emp_no
INNER JOIN departments dp
ON de.dept_no=dp.dept_no
WHERE dp.dept_no in('d007','d005')

--Create a list in descending order, with the frequency count of employee last names, i.e.,
--how many employees share each last name.

SELECT last_name AS "Employees Last Name", COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;

