select * 
from parks_and_recreation.employee_demographics;

select employee_id, age, age + 10,
(age + 10) *10
from parks_and_recreation.employee_demographics;

# PEMDAS = parathensis, exponent, multiplication, addition, subtraction



# select distinct means only takes the unique values
select distinct gender, first_name
from parks_and_recreation.employee_demographics