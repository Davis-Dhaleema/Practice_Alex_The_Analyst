# JOINS ----- inner, left, right, self



# inner join or join 

 select *
 from parks_and_recreation.employee_demographics as dem
 inner join parks_and_recreation.employee_salary as sal
  on dem.employee_id = sal.employee_id
 ;
 
 select dem.employee_id, age, occupation, salary
 from parks_and_recreation.employee_demographics as dem
 join parks_and_recreation.employee_salary as sal
  on dem.employee_id = sal.employee_id
 ;
 
 
 # outer joins - left and right
 
 # left join / left outer join
 
 select dem.employee_id, 
 dem.first_name, 
 age, occupation,
 salary
 from parks_and_recreation.employee_demographics as dem
 left join parks_and_recreation.employee_salary as sal
  on dem.employee_id = sal.employee_id
 ;
 
 
 # right join/ rught outer join
 
 select dem.employee_id, 
 dem.first_name, 
 age, occupation,
 salary
 from parks_and_recreation.employee_demographics as dem
 right join parks_and_recreation.employee_salary as sal
  on dem.employee_id = sal.employee_id
 ;
 
 
 # self join
 
 select *
 from parks_and_recreation.employee_demographics as emp1
 join parks_and_recreation.employee_demographics as emp2
  on emp1.employee_id = emp2.employee_id
 ;
 
 # secret santa
 
 select emp_santa.employee_id,
 emp_santa.first_name as santa_firstname,
 emp_santa.last_name as santa_lastname,
 emp2.first_name as emp_firstname,
 emp2.last_name as emp_lastname
 from parks_and_recreation.employee_salary as emp_santa
 join parks_and_recreation.employee_salary as emp2
  on emp_santa.employee_id + 1 = emp2.employee_id
 ;
 
 
 # Joining multiple tables together
 
 select *
 from parks_and_recreation.parks_departments;
 
  select *
 from parks_and_recreation.employee_demographics as dem
 right join parks_and_recreation.employee_salary as sal
  on dem.employee_id = sal.employee_id
  left join parks_and_recreation.parks_departments as pd
  on sal.dept_id = pd.department_id
 ;


 select sal.employee_id,
 sal.first_name, sal.last_name,
 age, gender, birth_date,
 occupation, salary,
 sal.dept_id,department_name
 from parks_and_recreation.employee_demographics as dem
 right join parks_and_recreation.employee_salary as sal
  on dem.employee_id = sal.employee_id
  left join parks_and_recreation.parks_departments as pd
  on sal.dept_id = pd.department_id
 ;