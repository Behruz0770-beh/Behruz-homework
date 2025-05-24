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

11.













