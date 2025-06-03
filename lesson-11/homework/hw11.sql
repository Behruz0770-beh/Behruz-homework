1.   select orderid,firstname,orderdate from orders inner join customers on orders.customerid=customers.customerid 
  where orderdate >'2022';

2.   select  name,departmentname from employees inner join departments on
     employees.departmentid=departments.departmentid 
	 where departmentname like 'sales' or 
	 departmentname like 'marketing';

3.   select departmentname,max(salary)as Max_salary from employees inner join departments on
     employees.departmentid=departments.departmentid 
	 group by departmentname;

4.SELECT 
    c.customername, 
    o.orderid, 
    o.orderdate
FROM 
    customers c
INNER JOIN 
    orders o ON c.customerid = o.customerid
WHERE 
    c.country = 'USA' 
    AND YEAR ( o.orderdate) = 2023;
5.SELECT 
    c.customername, 
    COUNT(o.orderid) AS totalorders
FROM 
    customers c
LEFT JOIN 
    orders o ON c.customerid = o.customerid
GROUP BY 
    c.customername;
6.SELECT 
    p.productname, 
    s.suppliername
FROM 
    products p
INNER JOIN 
    suppliers s ON p.supplierid = s.supplierid
WHERE 
    s.suppliername IN ('Gadget Supplies', 'Clothing Mart');
7.SELECT 
    c.customername, 
    MAX(o.orderdate) AS mostrecentorderdate
FROM 
    customers c
LEFT JOIN 
    orders o ON c.customerid = o.customerid
GROUP BY 
    c.customername;

8.   select firstname,totalamount from orders inner join customers on orders.customerid=customers.customerid
   where totalamount>500;

9. select productname,saledate,saleamount from products inner join sales on products.productid=sales.productid
   where year(saledate) ='2022' or
   saleamount <400;

