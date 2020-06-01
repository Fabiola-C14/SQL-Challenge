# SQL-Challenge-Employee Database: A Mystery in Two Parts

## Background 

The purpose of this project is to analyze Pewlett Hackard employees data from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

## Analysis 
In this assignment, tables were created in SQL to hold data in the CSVs files. Once the data was loaded to the dabase, do following tasks were completed:

* A report with the following details of each employee: employee number, last name, first name, sex, and salary.
* A report with first name, last name, and hire date for employees who were hired in 1986.
* A report with the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
* A report with the department of each employee with the following information: employee number, last name, first name, and department name.
* A report with the first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
* A report with all the employees in the Sales department, including their employee number, last name, first name, and department name.
* A report with all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
* A report with the frequency count of employee last names, i.e., how many employees share each last name. Data was sorted in descending order.

## Importing Data to Pandas
Data was imported to Pandas using SQLAlchemy to create a histogram to visualize the most common salary ranges for employees. In addition, 
 a bar chart was created with the average salary by title.
