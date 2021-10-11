#Assignment 2 

show databases;
use kritikasinghal;
show tables;

create table Employee(
id int not null,
name varchar(250),
lastname varchar(250),
department int);

insert into Employee
values ('123234877','Michael','Rogers',14),
('152934485','Anand','Manikutty',14),
('222364883','Carol','Smith',37),
('326587417','Joe','Stevens',37),
('332154719','Mary-Anne','Foster',14),
('332569843','George','O''Donnell',77),
('546523478','John','Doe',59),
('631231482','David','Smith',77),
('654873219','Zacary','Efron',59),
('745685214','Eric','Goldsmith',59),
('845657245','Elizabeth','Doe',14),
('845657246','Kumar','Swamy',14);


select * from Employee;
show tables;
create table Department(
code int not null,
name varchar(100),
budget int);

insert into Department
values(14,'IT',65000),
(37,'Accounting',15000),
(59,'Human Resources',240000),
(77,'Research',55000);

select * from Department;

update Department set budget=6500 where name="IT";

#Solutions to Questions

#Query 1
select distinct(lastname) from Employee;

#Query 2
select * from Employee where lastname="Smith";

#Query 3
select * from Employee where lastname in("Smith","Doe");

#Query 4
select * from Employee where Department=14;

#Query 5
select * from Employee where Department in(37 , 77);

#Query 6
select * from Employee where lastname like "S%";

#Query 7
select sum(budget) from Department;

#Query 8
select count(name), Department from Employee group by Department;

#Query 9
select * from Employee E join Department D on E.Department=D.code;

#Query 10
select E.name as first_name,E.lastname,D.name as Dept_name ,D.budget from Employee E join Department D on E.Department=D.code;

#Query 11
select E.name,E.lastname,D.budget,E.Department from Employee E join Department D on E.Department=D.Code where budget>60000;
#or 
select * from Employee where Department in(select code from Department where Budget>60000);

#Query 12
select avg(budget)from Department ; #Average budget of all dept is 79125.
select name from Department where budget>(select avg(budget) from Department);

#Query 13
select D.name,count(E.Department),D.code from Employee E join Department D on E.Department=D.code group by department having count(E.Department)>2;
#or 
select name from Department where code in(select distinct(department) from Employee group by department having count(E.Department)>2;


#Query 14 #Error 
select E.name,E.lastname,D.name,D.budget from Employee E join Department D on E.Department=D.code order by budget desc limit 1;
#or
select e.name,e.last_name from employee e join emp_department ed
on e.department = ed.code 
order by ed.budget limit 2,3;


#Query 15
insert into Department 
values(11,"Quality Assurance",40000);
select * from Department;

#Query 16 
insert into employee 
values(847219811, "Mary","Moore",11);
select * from Employee;

#Query 17 
update Department 
set Budget= Budget-(Budget*10/100);
select * from Department;

#Query 18 
update employee 
set Department=14 where Department=77;
select * from Employee;

#Query 19
delete from Employee where Department=14;

#Query 20
delete from Employee where Department in(select code (budget>=60000) from Department);
select * from employee;

#Query 21
delete from employee;
select * from Employee;

