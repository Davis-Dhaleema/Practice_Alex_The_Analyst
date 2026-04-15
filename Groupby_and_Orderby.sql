# Group by

select  gender
from parks_and_recreation.employee_demographics
group by gender;

# if we are not using aggregate function, we need to write the "select" and "groupby" by the same attribute.

select  gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender;


select  occupation, salary
from parks_and_recreation.employee_salary
group by occupation, salary;

select  gender, avg(age), min(age), max(age), count(age)
from parks_and_recreation.employee_demographics
group by gender;



# ------  Order by ------

select  *
from parks_and_recreation.employee_demographics
order by age;

select  *
from parks_and_recreation.employee_demographics
order by first_name desc;

select  *
from parks_and_recreation.employee_demographics
order by first_name asc;

select  *
from parks_and_recreation.employee_demographics
order by gender, age desc;

