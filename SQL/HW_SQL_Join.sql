HomeWork_2_SQL_Joins

 1. Вывести всех работников чьи зарплаты есть в базе, вместе 
	с зарплатами.
	select * from employee_salary
	join salary on salary_id = salary.id
	join employees on employee_id = employees.id
=========================================================================
 2. Вывести всех работников у которых ЗП меньше 2000.
	select * from employee_salary
	join employees on employee_id = employees.id
	join salary on salary_id = salary.id
	where monthly_salary <= 2000
=========================================================================
 3. Вывести все зарплатные позиции, но работник по ним не 
	назначен. (ЗП есть, но не понятно кто её получает.)
	select  distinct s.id, s.monthly_salary 
	from employees e
	right outer join employee_salary es  on e.id  = es.employee_id 
	right outer join salary s  on es.salary_id  = s.id
	where e.id is null
	order by s.id
========================================================================
 4. Вывести все зарплатные позиции  меньше 2000 но работник 
	по ним не назначен. (ЗП есть, но не понятно кто её получает.)
	select  distinct s.id, s.monthly_salary 
	from employees e
	right outer join employee_salary es  on e.id  = es.employee_id 
	right outer join salary s  on es.salary_id  = s.id
	where s.monthly_salary  
========================================================================
 5. Найти всех работников кому не начислена ЗП.
	select e.employee_name 
	from salary s 
	right outer join employee_salary es on s.id  = es.salary_id 
	right outer join employees e on es.employee_id = e.id
	where monthly_salary is null
========================================================================
 6. Вывести всех работников с названиями их должности.
	select * from roles_employee
	join employees on employee_id = employees.id
	join roles on role_id = roles.id
========================================================================
 7. Вывести имена и должность только Java разработчиков.
	select * from roles_employee
	join employees on employee_id = employees.id
	join roles on role_id = roles.id
	where role_name like 'Java_developer%'
========================================================================
 8. Вывести имена и должность только Python разработчиков.
	select * from roles_employee
	join employees on employee_id = employees.id
	join roles on role_id = roles.id
	where role_name like '%Python_developer%'
========================================================================
 9. Вывести имена и должность всех QA инженеров.
	select employee_name, role_name from roles_employee
	join employees on employee_id = employees.id
	join roles on role_id = roles.id
	where role_name like '%QA_at%'
=======================================================================
 10. Вывести имена и должность ручных QA инженеров.
	select employee_name, role_name from roles_employee
	join employees on employee_id = employees.id
	join roles on role_id = roles.id
	where role_name like '%QA_ma%'
=======================================================================	
 11. Вывести имена и должность автоматизаторов QA	
	select employee_name, role_name from roles_employee
	join employees on employee_id = employees.id
	join roles on role_id = roles.id
	where role_name like '%QA_at%'
===============================================================================
 12. Вывести имена и зарплаты Junior специалистов
	select employee_name, role_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%junior%'
===============================================================================
 13. Вывести имена и зарплаты Middle специалистов
	select employee_name, role_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%iddle%' 
================================================================================
 14. Вывести имена и зарплаты Senior специалистов
	select employee_name, role_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%enior%' 
=================================================================================
 15. Вывести зарплаты Java разработчиков
	select monthly_salary, role_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%Java_developer%'  
==================================================================================
 16. Вывести зарплаты Python разработчиков
	select monthly_salary from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%Python%'
===================================================================================
 17. Вывести имена и зарплаты Junior Python разработчиков
	select monthly_salary, employee_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%Junior_Python%'
====================================================================================
 18. Вывести имена и зарплаты Middle JS разработчиков
	select monthly_salary, employee_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%Middle_JavaScript_developer%'
===================================================================================
 19. Вывести имена и зарплаты Senior Java разработчиков
	select monthly_salary, employee_name, roles.role_name 
	from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%Java_developer_s%' 
===================================================================================
 20. Вывести зарплаты Junior QA инженеров
	select monthly_salary, roles.role_name 
	from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like 'QA%j%' 
=====================================================================================
 21. Вывести среднюю зарплату всех Junior специалистов
	select avg(monthly_salary) from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%j%'
=====================================================================================
 22. Вывести сумму зарплат JS разработчиков
	select sum(monthly_salary)	from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%JavaScript%'
===================================================================================== 
 23. Вывести минимальную ЗП QA инженеров
	select min(monthly_salary)	from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%QA%' 
=====================================================================================
 24. Вывести максимальную ЗП QA инженеров
	select max(monthly_salary)	from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%QA%' 
=====================================================================================
 25. Вывести количество QA инженеров
	select count(roles.id)
	from roles_employee 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%QA%'
====================================================================================
 26. Вывести количество Middle специалистов.
	select count(roles.id)
	from roles_employee 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%iddle%'
======================================================================================	
 27. Вывести количество разработчиков
	select count(roles.id)
	from roles_employee 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%developer%'
======================================================================================
 28. Вывести фонд (сумму) зарплаты разработчиков.
	select sum(monthly_salary) from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where role_name like '%developer%'
======================================================================================
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
	select employee_name, monthly_salary, role_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	order by monthly_salary asc 
======================================================================================
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у 
     специалистов у которых ЗП от 1700 до 2300
	select employee_name, monthly_salary, role_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where monthly_salary between 1700 and 2300
	order by monthly_salary asc
=======================================================================================
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у 
     специалистов у которых ЗП меньше 2300
	select employee_name, monthly_salary, role_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where monthly_salary <= 2300
	order by monthly_salary asc
=======================================================================================	
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у 
     которых ЗП равна 1100, 1500, 2000
	select employee_name, monthly_salary, role_name from salary
	inner join employee_salary on salary.id = salary_id 
	inner join employees on employee_salary.employee_id = employees.id
	inner join roles_employee on employees.id = roles_employee.employee_id 
	inner join roles on roles_employee.role_id = roles.id
	where monthly_salary in (1100, 1500, 2000)
	order by monthly_salary asc 
======================================================================================





