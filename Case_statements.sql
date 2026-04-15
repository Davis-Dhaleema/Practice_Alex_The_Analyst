#  -----  Case Statement -----

# case.....when.....then....end

select *
from parks_and_recreation.employee_demographics;

select first_name, last_name, age,
case
 when age <= 30 then 'Young'
 when age <= 50 then "Old"
 when age > 50 then " Too Old"
end as age_category
from parks_and_recreation.employee_demographics;



# Bonus calculation

 # salary < 50000 ---> 5%
 # salary > 50000 ---> 7%
 # finance depart.---> 10%
 
 
select first_name, last_name, salary,
case 
 when salary < 50000 then salary + (salary * 0.05)
 when salary > 50000 then salary + (salary * 0.07)
end as new_salary,
case
 when dept_id = 6 then (salary * 0.10)
end as bonus
from parks_and_recreation.employee_salary;


select distinct department_id, department_name
from parks_and_recreation.parks_departments;
