-- Creating departments table
create table departments (
	depto_no integer not null,
	dept_name varchar not null,
	primary key(depto_no)
);

-- Creating employees table
create table employee(
	emp_no integer not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	gender char,
	hire_date date not null,
	primary key(emp_no)
);

-- Creating Salaries Table
create table salaries (
	emp_no integer not null,
	salary integer not null,
	from_date date not null,
	to_date date not null,
	primary key(emp_no, salary)
);

-- Creating Titles Table
create table titles (
	emp_no integer not null,
	title varchar not null,
	from_date date not null,
	to_date date not null,
	primary key(emp_no, title)
);

-- Creating dept_emp table
create table dept_emp (
	emp_no integer not null,
	dept_no integer not null,
	from_date date not null,
	to_date date not null,
	primary key(emp_no, dept_no)
);

-- Creating dept_manager table
create table dept_manager (
	dept_no integer not null,
	emp_no integer not null,
	from_date date not null,
	to_date date not null,
	primary key(dept_no, emp_no)
);
