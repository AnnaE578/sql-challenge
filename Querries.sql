--List the employee number, last name, first name, sex, and salary of each employee.

SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Salaries".salary
FROM "Employees"
INNER JOIN "Salaries" ON "Employees".emp_no="Salaries".emp_no;

--List the first name, last name, and hire date for the employees who were 
--hired in 1986.

SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the first name, last name, and hire date for the employees who 
--were hired in 1986.

SELECT "Dept_Manager".dept_no, "Departments".dept_name, 
"Employees".emp_no, "Employees".last_name, "Employees".first_name
FROM "Dept_Manager"
INNER JOIN "Departments" ON "Dept_Manager".dept_no = "Departments".dept_no
INNER JOIN "Employees" ON "Dept_Manager".emp_no = "Employees".emp_no;

--List the department number for each employee along with that employee’s
--employee number, last name, first name, and department name.

SELECT "Employees".emp_no, "Employees".last_name,
"Employees".first_name, "Departments".dept_name, "Dept_Emp".dept_no
FROM "Employees"
Inner join "Dept_Emp" on "Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments" ON "Dept_Emp".dept_no = "Departments".dept_no;

--List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their 
--employee number, last name, and first name.

SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, 
"Departments".dept_name
FROM "Employees" 
LEFT JOIN "Dept_Emp" 
ON "Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments" 
ON "Departments".dept_no = "Dept_Emp".dept_no
WHERE "Departments".dept_name = 'Sales';

--List each employee in the Sales and Development departments, including 
--their employee number, last name, first name, and department name.

SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name,
"Departments".dept_name
FROM "Employees" 
LEFT JOIN "Dept_Emp" 
ON "Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments" 
ON "Departments".dept_no = "Dept_Emp".dept_no
WHERE "Departments".dept_name in ('Sales', 'Development')

--List the frequency counts, in descending order, of all the employee last 
--names (that is, how many employees share each last name).

SELECT last_name, COUNT(*) AS freq_count
FROM "Employees"
GROUP BY last_name
ORDER BY freq_count DESC;



