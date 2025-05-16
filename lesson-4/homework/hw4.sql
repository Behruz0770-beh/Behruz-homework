1. select top 5 *from Employees

2. select *from products
 select distinct  category
 from products

3.select * from products
where price >100

4.select * from customers
where firstname like 'a%'

5.select *from products
order by price asc

6.select*from employees
where Salary >= 60000 and Departmentname = 'HR'

7.select isnull(email,'noemail@example.com') 
from Employees

select*from employees

8.
select*from products
where price between 50 and 100

9.
select distinct category,productname
from products

10.select distinct category,productname
from products
order by productname desc

11.select*from products
select top 10 productname from products as umumy
order by price desc

12.select * from employees
select coalesce(firstname,lastname) as employeename
from employees

13.select  distinct category ,price 
from products

14.select*from employees
where age  between 30 and 40 and departmentname='marketing'

15.select *from employees
order by salary desc
offset 10 rows
fetch next 10 rows only;

16.select *from products
where price<=1000 and stockquantity>50
 order by stockquantity asc 


17.select*from products
where productname like '%e%'

18.  



























