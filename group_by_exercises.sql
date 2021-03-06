
# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
select distinct title
from titles;

# Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY
select last_name
from employees
where last_name like 'e%e'
group by last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
select first_name ,last_name
from employees
where last_name like 'e%e' group by last_name,first_name;

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
select last_name
from employees where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

#   Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
select last_name, count(last_name)
from employees where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by count(last_name) desc;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:

select count(*),gender
from employees
where first_name in ('Irena','Vidya','Maya')
group by gender;