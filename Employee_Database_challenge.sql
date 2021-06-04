-- Retirement title Table


select employees.emp_no,
		employees.last_name,
		employees.first_name,
		title.title,
		title.from_date,
		title.to_date
into retirement_titles		
from employees
inner join title
on employees.emp_no = title.emp_no

WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by employees.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date desc;


-- Count number of employees by title 

SELECT COUNT(title), title
into retiring_tables
from unique_titles
GROUP BY (title)
order by count(title) desc

select * from retiring_tables;

-- Membership Eligibility Table 

select Distinct on (employees.emp_no) employees.emp_no,
		employees.last_name,
		employees.first_name,
		employees.birth_date,
		dept_emp.from_date,
		dept_emp.to_date,
		title.title
into Membership_Eligibility		
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join title
on employees.emp_no = title.emp_no

WHERE (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
and dept_emp.to_date = ('9999-01-01')
order by employees.emp_no;

select * from Membership_eligibility;

SELECT COUNT(title), title
--into retiring_tables
from Membership_eligibility
GROUP BY (title)
order by count(title) desc

--New Hires last year

select Distinct on (employees.emp_no) employees.emp_no,
		employees.last_name,
		employees.first_name,
		employees.birth_date,
		dept_emp.from_date,
		dept_emp.to_date,
		title.title
into new_hires		
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join title
on employees.emp_no = title.emp_no


where (dept_emp.from_date BETWEEN '2002-01-01' AND '2002-12-31')
and dept_emp.to_date = ('9999-01-01')
order by employees.emp_no;


-- Count New hires last year per title 

SELECT COUNT(title), title
--into retiring_tables
from new_hires
GROUP BY (title)
order by count(title) desc

Select count(employees.hire_date), employees.hire_date
from employees 
group by (employees.hire_date)
order by employees.hire_date desc;
