# SQL Homework - Employee Database: A Mystery in Two Parts



## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Engineering

3. Data Analysis

Note: You may hear the term "Data Modeling" in place of "Data Engineering," but they are the same terms. Data Engineering is the more modern wording instead of Data Modeling.

### Before You Begin

1. Repository for this project is named  `sql-challenge`. 


#### Data Modeling
Database Entity-Relationship model is located under EmployeeSQL folder, with the name 'SQL Challenge ER diagram.png'

Data definition is in QuickDBD-SQL Challenge file


#### Data Engineering

SQL File to create tables is EmployeeSQL/TableSchema.sql. The following tables are created:

-Employee: containing all basic employee data (employee id, birth date, first name, last name, gender, hire date).

- Salaries: employee's salary in a certain period of time (employee id, salary, from date, to date)

- Titles: employee's titles in a certain period of time (employee id, title, from date, to date)

- Departments: a catalog of all departments in the company (Pewlett Hackard)

Also 'bridge' tables are created to establish a relationship between different tables:

- Dept_emp: establishes a relationship between employees and the department they belong to in a certain period of time (employee id, department id, from date, to date)

- Dept_manager: establishes a relationship between managers (employees table, as they're also employees) and the department they manage in a certain period of time (employee id, department id, from date, to date)

#### Data Analysis

Inside 'EmployeeSQL/Queries.sql' file, there's the list of queries built to get the following information:

1. List details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Jupyter Notebook


1. Import the SQL database into Pandas.

When connecting to PostgreSQL for the first time, please do:

a. Add to $PATH variable, path where pg_config file is located. You may use:

	export PATH=$PATH:/Library/PostgreSQL/11/bin

b. Install psycopg2 (preferable using binary file)
	
	pip install psycopg2-binary	

c. Create db config file ('Pandas/db_config.py') to add database connection data containing: username, password, host,  and database name


2. Create engine using database connection using sqlaclhemy:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://username:password@localhost:port/db_name')
   connection = engine.connect()
   ```

Add config file to .gitignore file to prevent uploading your db info

## Data Visualization

Pandas Dataframe is used to show charts using Jupyter Notebook 'Pandas/EmployeeSQL.ipynb'

Histogram to visualize the most common salary ranges for employees.

Bar chart of average salary by title.
 	Query to get this Pandas Dataframe is in mytest.sql file

## Epilogue

 "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

Results from search sql is in mytest.sql file. 

Unfortunately, all exercise was a joke from the boss! :(


