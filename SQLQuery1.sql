---UC1 : Ability to create payroll service database
create database payroll_services;
use payroll_services;

---UC2 : Ability create a employee payroll table in the payroll service database
CREATE TABLE employee_payroll (
	id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(200),
	salary float,
	startDate date
	);

---UC3 : Ability to create employee payroll data service database
INSERT INTO employee_payroll (name,salary,startDate) VALUES ('PWD',8888888.88,'2015-11-11'),('FAHEEM',1414141.141,'2021-12-12');

--UC4 : Ability to retrieve all the employee payroll data 
select * from employee_payroll;

---UC5 : Ability to retrieve salary data for particular employee
select id,name from employee_payroll where name = 'FAHEEM';
select * from employee_payroll where startDate between cast('2020-11-11' as date) and getdate();

---UC6 : Ability to add gender to table and update table
select * from employee_payroll;
ALTER TABLE employee_payroll ADD Gender char(1);
update employee_payroll set Gender='M';
INSERT INTO employee_payroll VALUES ('AASHIMA',44444.44,'2025-10-10','F'),('SHRADHA',666666.6666,'2028-10-10'','F');
update employee_payroll set startDate='2025-10-10' where id=4;
update employee_payroll set startDate='2028-10-10' where id=1 and name='PWD';

---UC7 : Ability to find sum,average,max, min and number of male and female employees
select * from employee_payroll;
select sum(salary) as TotalSalary from employee_payroll;
select max(salary) as Maximum from employee_payroll;
select min(salary) as Minimum from employee_payroll;
select avg(salary) as AverageSalary from employee_payroll;
select count(salary) as NumOfEmployees from employee_payroll;
select count(salary) as NumberOfEmployee,Gender from employee_payroll group by Gender;



