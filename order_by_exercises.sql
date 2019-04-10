use employees;

select * from employees;



select * from employees
where first_name
in ('Irena','Vidya','Maya')
order by last_name, first_name desc ;


select * from employees
where last_name like 'e%'
order by emp_no desc ;




select * from employees
where birth_date
  like '%-12-25'
  and (hire_date between '1990-01-01' and '1999-12-31')
order by hire_date desc ,birth_date;






