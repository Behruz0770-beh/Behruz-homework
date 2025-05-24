1. select productname,min(price) as ninimum from products
group by productname

2.select max(salary) from employees

3.select count(customerid) from customers

4.select category, count(category) as umumiy from products
group by category

5.select sum(saleamount) as total_saleamount from sales
group by productid
having productid=7

6.select  avg(age) as avg_age from employees;

7.select departmentname, count(departmentname) as nimadur from employees
group by departmentname

8.select category,min(price)min_price,max(price)max_price from products
group by category

9.select customerid,sum(saleamount)percustomer_totalsaleamount,count(saleid) percustomer_totalsales from sales
group by customerid;

10.select departmentname,count(departmentname) as total_employees from employees
group by departmentname
having count(departmentname)>5

11.select*from sales
SELECT 
    productid,
    SUM(saleamount) AS total_sales,
    AVG(saleamount) AS average_sales
FROM 
    sales
GROUP BY 
    productid;

12.select*from employees
select departmentname,count(departmentname) from employees
group by departmentname
having departmentname= 'HR'

13.select departmentname,
max(salary)max_salary,
min(salary)min_salary 
from employees
group by departmentname

14.
select departmentname,
sum(salary)total_salary,
avg(salary)avg_salary 
from
     employees
group by departmentname

15.select departmentname, count(*)totel_employees,avg(salary)avg_salary from employees
group by departmentname;
select count(*) totel_employees, avg(salary) avg_salary from employees;


16.select category,sum(price)total_price,avg(price)avg_price from products
group by category
having avg(price)>400

17.
select*
from sales
select year(saledate)years, sum(saleamount)total_sale from sales
group by year(saledate)


18.
select*from orders
select customerid,sum(quantity)total_quantity from orders
group by customerid
having sum(quantity)>2

19.select departmentname,
sum(salary)total_salary,
avg(salary)avg_salary 
from
     employees
group by departmentname
having avg(salary)>60000;


20.
























































