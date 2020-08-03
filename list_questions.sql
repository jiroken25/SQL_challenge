-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select "Employees".emp_no, "Employees".last_name, "Employees".First_name, "Employees".sex,"Salaries".salary 
from "Employees" join "Salaries" on "Employees".emp_no = "Salaries".emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select emp_no, last_name, First_name, hire_date 
from "Employees" where hire_date > '1985-12-31' and hire_date < '1987-01-01';


-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name
select "Dept_Manager".dept_no, "Departments".dept_name, "Dept_Manager".emp_no, "Employees".last_name, "Employees".first_name
from "Dept_Manager" join "Departments" on "Dept_Manager".dept_no = "Departments".dept_no
join "Employees" on "Dept_Manager".emp_no = "Employees".emp_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" 
-- and last names begin with "B."
select last_name, first_name, sex 
from "Employees" where first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
select "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
from "Dept_emp" join "Employees" on "Dept_emp".emp_no = "Employees".emp_no
join "Departments" on "Dept_emp".dept_no = "Departments".dept_no where "Departments".dept_name = 'Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
select "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
from "Dept_emp" join "Employees" on "Dept_emp".emp_no = "Employees".emp_no
join "Departments" on "Dept_emp".dept_no = "Departments".dept_no where "Departments".dept_name = 'Sales' or "Departments".dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name, count(last_name) from "Employees" group by last_name order by count(last_name) desc;
