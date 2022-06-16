
-- 1.Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
-- 2.Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
)

insert into employees(employee_name)
values 	('Asher Wright'),
	 	('West Gonzales'),
		('Cesar Thomas'),
		('Omar Richardson'),
		('Irving Powell'),
		('Stanley Adams'),
		('Dante Sanchez'),
		('Filip Butler'),
		('Turner Bell'),
		('Nikko Williams'),
		('Calvin Cook'),
		('Eric Washington'),
		('Atticus Thomas'),
		('Lukas Ross'),
		('Xanthus Baker'),
		('Clark Gonzalez'),
		('Kendrick Bell'),
		('Yoshiyuki Ramirez'),
		('Lionel Jones'),
		('Erik Baker'),
		('Harry Watson'),
		('Salem Brooks'),
		('Rocco Johnson'),
		('Kye Perry'),
		('Dominic Perry'),
		('Zaid Morris'),
		('Presleigh Phillips'),
		('McKinley Bailey'),
		('Hayes Jackson'),
		('Nick Lewis'),
		('Benson Henderson'),
		('Will Hernandez'),
		('Hugh Lewis'),
		('Vito Williams'),
		('Matteo Gray'),
		('Odette Powell'),
		('Davina Torres'),
		('Quenby Moore'),
		('Gemma Scott'),
		('Juliana Parker'),
		('Serena Washington'),
		('Gracen Jones'),
		('Wendy Collins'),
		('Izabella Wright'),
		('Urith Bailey'),
		('Elsie Thomas'),
		('Breanna Lewis'),
		('Margot Long'),
		('Diana Lee'),
		('Cora Wilson'),
		('Farah Martin'),
		('Elisa Thomas'),
		('Josie Collins'),
		('Leia Lee'),
		('Iva Jones'),
		('Jacqueline Watson'),
		('Gia Young'),
		('Lucille Peterson'),
		('Julissa Baker'),
		('Braelyn Campbell'),
		('Patience Diaz'),
		('Qeleigh Rogers'),
		('Octavie Hall'),
		('Undine King'),
		('Winona Hernandez'),
		('Kyleigh Gonzales'),
		('Sandra Kelly'),
		('Isabella King'),
		('Myla Wilson'),
		('Kamari Brown');


-- 3.Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
-- 4.Наполнить таблицу salary 15 строками

create table salary(
	id serial primary key,
	monthly_salary int null
)

insert into salary(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

-- 5.Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
-- 6.Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id Int unique not null,
	salary_id Int not null
)

insert into employee_salary(employee_id, salary_id)
values 	(3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(31, 1),
		(2, 4),
		(38, 10),
		(4, 3),
		(58, 8),
		(6, 11),
		(25, 16),
		(77, 10),
		(36, 5),
		(89, 16),
		(56, 1),
		(45, 13),
		(29, 2),
		(74, 7),
		(81, 4),
		(32, 15),
		(76, 1),
		(91, 4),
		(78, 1),
		(99, 7),
		(72, 16),
		(88, 1),
		(55, 14),
		(67, 8),
		(48, 6),
		(20, 9),
		(37, 15),
		(64, 1),
		(39, 4),
		(49, 7);
		
-- 7.Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. varchar(30), not null, unique
-- 8.Наполнить таблицу roles 20 строками:
			
create table roles(
	id serial primary key,
	role_name varchar (30) unique not null
)

insert into roles(role_name)
values ('QA_manual_junior'),
       ('QA_manual_middle'),
       ('QA_manual_senior'),
       ('QA_automation_junior'),
       ('QA_automation_middle'),
       ('QA_automation_senior'),
       ('Java_developer_juiorl'),
       ('Java_developer_middle'),
       ('Java_developer_senior'),
       ('Junior_Python_developer'),
       ('Middle_Python_developer'),
       ('Senior_Python_developer'),
       ('Junior_JavaScript _developer'),
       ('Middle_JavaScript _developer'),
       ('Senior_JavaScript _developer'),
       ('Project_Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales_manager');   
	   
	   
-- 9.Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- 10.Наполнить таблицу roles_employee 40 строками:

create	table   roles_employee(
	id serial primary key,
	employee_id Int not null unique,
	role_id Int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
)

insert into roles_employee(employee_id, role_id)
values (3, 7),
		(1, 4),
		(5, 20),
		(40, 1),
		(23, 4),
		(11, 2),
		(52, 18),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 17),
		(31, 1),
		(2, 14),
		(38, 10),
		(4, 3),
		(58, 8),
		(6, 11),
		(25, 16),
		(63, 10),
		(36, 15),
		(65, 16),
		(56, 11),
		(45, 13),
		(29, 2),
		(14, 7),
		(41, 20),
		(32, 15),
		(66, 14),
		(18, 4),
		(51, 1),
		(9, 17),
		(12, 16),
		(46, 1),
		(55, 14),
		(67, 18),
		(48, 6),
		(20, 19),
		(37, 15),
		(64, 1),
		(39, 20),
		(49, 7);
		

select * from roles;
select * from salary;
select * from employees;
select * from employee_salary;
select * from roles_employee
