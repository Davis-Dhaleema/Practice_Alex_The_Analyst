#     --------- Substrings --------


 
select length('sky');                # length
select upper('sky');                 # capital letters
select lower('SKY');                 # small letters
select trim('         skywheels         ');  # removing white spaces
select rtrim('         skywheels         '); # removing white spaces, right
select ltrim('         skywheels         '); # removing white spaces, left


# checking the lengtn
select first_name, length(first_name) as len
 from parks_and_recreation.employee_salary ; 
 
 
# transforming to uppercase 
select first_name, upper(first_name) as capital
from parks_and_recreation.employee_salary ; 

# transforming to lowercase
select first_name, lower(first_name) as small
from parks_and_recreation.employee_salary ; 

# left letters 
 select first_name, left(first_name, 3) 
 from parks_and_recreation.employee_salary ; 
 
 # right letters
 select first_name, upper(right(first_name, 3))
 from parks_and_recreation.employee_salary ; 
 
 
 # limit
 select first_name, substring(first_name, 1,3)
 from parks_and_recreation.employee_salary ; 
 
 
 # identifying the birth month
 select first_name, last_name, substring(birth_date, 6,2) as birth_month
 from parks_and_recreation.employee_demographics; 
 
 # replacing letters
 select first_name, replace(first_name, 'a', 'e') as modified
 from parks_and_recreation.employee_salary ; 
 
 
 # locating the position of the letters
 select first_name, locate('i', first_name) as position
 from parks_and_recreation.employee_salary ; 
 
 # concating the values
 
select first_name, last_name, concat(first_name,'  ', last_name) as full_name
from parks_and_recreation.employee_salary ; 