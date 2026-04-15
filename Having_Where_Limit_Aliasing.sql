#  ----   Having and Where  ---- #

select  gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 40;


select  occupation, avg(salary)
from parks_and_recreation.employee_salary
where occupation like '%manager%'                  # -------> where
group by occupation
having avg(salary) > 60000;

# ----- Limit and Aliasing -----  #

select  *
from parks_and_recreation.employee_demographics
order by age
limit 5;

select  *
from parks_and_recreation.employee_demographics
order by age
limit 1, 5;

select  *
from parks_and_recreation.employee_demographics
order by age
limit 3, 2;

# Aliasing

select  gender, avg(age) as avg_age
from parks_and_recreation.employee_demographics
group by gender
having avg_age > 40;

select  occupation, avg(salary) as avg_salary
from parks_and_recreation.employee_salary
group by occupation
having avg_salary > 70000;

