show databases;
use task;
Create table Department
(
id int primary key auto_increment,
name varchar(30) not null,
Number_of_employees int
);
insert into Department values (1,'Development',10);
insert into Department (name,Number_of_employees) values ('Technical',5),('HR',5),('Testing',10),('Business',3);
select * from Department;
Create table Employee
(
id int primary key auto_increment,
name varchar(20) not null,
contact varchar(10),
email varchar(30),
experience int,
salary int,
address varchar(20),
dept_id int,
foreign key(dept_id) references Department(id)
);
show tables;
desc employee;
insert into employee values (1,'Dinesh','7569602407','sangarajudinesh@gmail.com',0,0,'Btm_Layout',1);
insert into employee (name,contact,email,experience,salary,address,dept_id) values ('Mahesh','7569607654','maheshJepiti@gmail.com',1,35000,'Btm_Layout',2),('Suresh','9876543210','sureshPulicherla@gmail.com',1,30000,'HSR_Layout',4),('Afzal','8765432190','SmdAfzal@gmail.com',2,40000,'btm_layout',4);
select * from employee;
select Number_of_employees from department
where id=3;
select * from Department
order by Number_of_Employees;
Create table Emp_Tracker
(
number_of_Emps int
);
select * from emp_tracker;
insert into emp_tracker values (4);
delimiter //
create procedure insert1 (in a varchar(20),b varchar(10), c varchar(30), d int, e int, f varchar(20), g int)
begin 
insert into employee (name,contact,email,experience,salary,address,dept_id) values (a,b,c,d,e,f,g);
end 
//
call insert1('Balaji','8679054321','BalajiNaick@gmail.com',1,30000,'White_Field',2);
select * from employee;
drop procedure update1;
delimiter //
create procedure update1 (in a varchar(20),b varchar(30))
begin 
update employee
set name = a,email = b
where id = 3 ; 
 end
//
call update1('Sridhar','sridharReddy@gmail.com');
select * from employee;
delimiter //
create procedure delete1 (in a int)
begin
delete from employee
where id=a;
end
//
call delete1(2);
select * from employee;
create index indexValues on Employee(dept_id);
create view view1 as 
select * from employee
where dept_id=2;
select * from view1;