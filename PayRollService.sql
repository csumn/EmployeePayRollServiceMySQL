create database payroll_service;
use payroll_service;
create table employee_payroll (id int not null auto_increment, name varchar(100) not null, 
salary double not null, start date not null, primary key(id));
desc employee_payroll;
insert into employee_payroll(name, salary, start) values('Jeff','100000','2022-01-01');
select * from employee_payroll;
insert into employee_payroll(name, salary, start) values('Satya','100000','2019-05-01');
select * from employee_payroll;
insert into employee_payroll(name, salary, start) values('Bill Gates','150000','2021-09-08');
select * from employee_payroll;
select salary from employee_payroll where name = 'Bill Gates';
select salary from employee_payroll where name = 'Jeff';
select * from employee_payroll where start between Cast('2018-01-01' as date) and Date(now());
select * from employee_payroll where start between Cast('2021-01-01' as date) and Date(now());
Alter table employee_payroll Add Gender char(1) after name;
desc employee_payroll;
select * from employee_payroll;
update employee_payroll set Gender = 'M' where name = 'Jeff';
select * from employee_payroll;
update employee_payroll set Gender = 'M' where name = 'Satya' or name = 'Bill Gates';
select * from employee_payroll;
insert into employee_payroll(name, Gender, salary, start) values('Terissa ','F','80000','2017-02-18');
select * from employee_payroll;
update employee_payroll set Gender = 'F' where salary = '80000';
select * from employee_payroll;
delete from employee_payroll where id = 4 LIMIT 1;
delete from employee_payroll where id = 5 ;
select * from employee_payroll;
insert into employee_payroll(name, Gender, salary, start) values('Terissa ','F','80000','2017-02-18');
select * from employee_payroll;
select Avg(salary) from employee_payroll where Gender = 'F' group by Gender;
select Avg(salary) from employee_payroll where Gender = 'M' group by Gender;
select Avg(salary) from employee_payroll group by Gender;
select Gender, Avg(salary) from employee_payroll group by Gender;
select Gender, count(name) from employee_payroll group by Gender;
select Gender, sum(salary) from employee_payroll group by Gender;
select Gender, sum(salary) from employee_payroll where Gender = 'M' group by Gender;
select max(salary) from employee_payroll;
select max(salary) from employee_payroll where Gender = 'F' group by Gender;
select min(salary) from employee_payroll where Gender = 'M' group by Gender;
alter table employee_payroll add Phone_Number varchar(100) after name;
desc employee_payroll;
select * from employee_payroll;
alter table employee_payroll add address varchar(100) after Phone_Number;
alter table employee_payroll rename column salary to Basic_Pay;
alter table employee_payroll rename column salary to Basic_Pay;
update employee_payroll set id = '4' where id = '6';
alter table employee_payroll rename column name to Name;
select * from employee_payroll;
alter table employee_payroll add Deduction double not null after Basic_pay;
alter table employee_payroll add Taxable_Pay  double not null after Deduction;
alter table employee_payroll add Income_Tax  double not null after Taxable_Pay;
alter table employee_payroll add Net_Pay double not null after Basic_pay;
insert into employee_payroll(Name, Gender, start, Phone_Number,address,
Department,Basic_Pay,Net_Pay,Deduction,Taxable_pay,Income_Tax)
 values('Mahesh', 'M', '2020-09-25', '9393939393','Hyderabad',
'CS-Operations','120000','105000','80000','2000','5000');
select * from employee_payroll;
update employee_payroll set id = '5' where id = '7';
select * from employee_payroll;
update employee_payroll set Department = 'sales and marketing' where id = '4';
Alter table employee_payroll Alter Address set Default 'ABC';
insert into employee_payroll(id,Name, Gender, start, Phone_Number,address,
Department,Basic_Pay,Net_Pay,Deduction,Taxable_pay,Income_Tax)
 values('6','Mahesh', 'M', '2020-09-25', '9393939393','Hyderabad',
'CS-Operations','120000','105000','80000','2000','5000');
insert into employee_payroll(id,Name, Gender, start, Phone_Number,
Department,Basic_Pay,Net_Pay,Deduction,Taxable_pay,Income_Tax)
 values('7','Tariv', 'M', '2020-09-25', '9393939393',
'CS-Operations','120000','105000','80000','2000','5000');
select * from employee_payroll;
