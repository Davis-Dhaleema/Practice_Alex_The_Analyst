# where clause - to filter records or rows of data
# select -  to filter columns

select *
from parks_and_recreation.employee_demographics
where first_name = "Leslie";

select *
from parks_and_recreation.employee_demographics
where gender = "Female";

select *
from parks_and_recreation.employee_salary
where salary >= 70000;

select  *
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'Male';

select  *
from employee_demographics
where age = 44
or gender = 'Female';


# Like statement -- to filter similar things

# firstname starting with JER

select  *
from parks_and_recreation.employee_demographics
where first_name like "Jer%";

select  *
from parks_and_recreation.employee_demographics
where first_name like "L%";