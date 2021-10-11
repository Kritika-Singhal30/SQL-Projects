show databases;
use kritika;


#Assignment 3 SQL 


select * from sql_practice_assignment ;

select * from sql_practice_assignment where Job_title="Programmer";

#Request 1
select first_name , last_name, employee_no from sql_practice_assignment where Job_title="Programmer" and Hire_Date <="1991-05-21" order by last_name ;

#Request 2 
select Department_No , last_name, Annual_Salary from sql_practice_assignment where Hire_Date between "1987-09-16" and "1996-05-12" order by last_name asc , Department_No asc;

#Request 3
select * from sql_practice_assignment group by Job_title having (avg(Annual_Salary)>15000) order by avg(Annual_Salary)desc;

select avg(Annual_Salary), employee_no from sql_practice_assignment group by Job_Title;

#Request 4
select first_name , last_name,Job_ID ,(commission_percent*annual_salary) as commission from sql_practice_assignment order by first_name ;

#Request 5
select job_title from sql_practice_assignment where Department_name in("IT", "Sales");

#Request 6 #Round upto 2
select last_name, round(Annual_Salary/12,2) as monthly_salary from sql_practice_assignment where Department_No in("10", "40") order by last_name asc;


#Request 7 #No decimals 
select round(annual_Salary,0) from sql_practice_assignment ;

#Request 8 
select count(*) from sql_practice_assignment ;

#Request 9 
select Department_No, Department_Name, count(*) from sql_practice_assignment group by Department_Name having count(Department_Name)>2;

select count(Department_name) from sql_practice_assignment spa group by Department_Name ;

#Request 10
select Department_No, Department_Name , count(*) from sql_practice_assignment group by Department_Name order by count(*) desc limit 1;

#Request 11
select Department_No , Department_Name from sql_practice_assignment where Job_title not in("Programmer");

#Request 12
update sql_practice_assignment 
set Annual_salary=Annual_salary+1000;

select * from sql_practice_assignment spa ;

#Request 13
select * from sql_practice_assignment order by Job_ID asc;

#Request 14 
delete  from sql_practice_assignment where Employee_No=102 ;

#Request 15 #error
update sql_practice_assignment 
set Percentage raise=case 
where Department_No=20 and Department_No= 10 then "5%"
else "No rise"

#Request 16 
create view Manager_Details as select Employee_No, First_name , Last_name from sql_practice_assignment;
select * from Manager_Details;

#Request 17 
select * from Manager_Details order by Employee_No;

