SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

DROP TABLE retirement_info;

-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Check the table
SELECT * FROM retirement_info;

-- Joining departments and dept_manager tables
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
	retirement_info.last_name,
    dept_emp.to_date
From retirement_info 
inner join dept_emp
on retirement_info.emp_no = dept_emp.emp_no;


SELECT retirement_info.emp_no,
    retirement_info.first_name,
	retirement_info.last_name,
    dept_emp.to_date
into current_emp
from retirement_info
left join dept_emp
on retirement_info.emp_no = dept_emp.emp_no
where dept_emp.to_date = ('9999-01-01');

-- Employee count by department number
SELECT COUNT(current_emp.emp_no), dept_emp.dept_no
into count_retire_emps
FROM current_emp
LEFT JOIN dept_emp
ON current_emp.emp_no = dept_emp.emp_no
GROUP BY dept_emp.dept_no
order by dept_emp.dept_no

-- Employee Info 

select employees.emp_no,
		employees.last_name,
		employees.first_name,
		employees.gender,
		salaries.salary,
		dept_emp.to_date
into emp_info		
from employees
inner join salaries
on employees.emp_no = salaries.emp_no
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (employees.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	 AND (dept_emp.to_date = '9999-01-01');
	 
-- List of Managers 

-- List of managers per department
SELECT  dept_manager.dept_no,
        departments.dept_name,
        dept_manager.emp_no,
        current_emp.last_name,
        current_emp.first_name,
        dept_manager.from_date,
        dept_manager.to_date
INTO manager_info
FROM dept_manager
    INNER JOIN departments
        ON (dept_manager.dept_no = departments.dept_no)
    INNER JOIN current_emp
        ON (dept_manager.emp_no = current_emp.emp_no);
		
-- Department Retires 

SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name

-- INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);