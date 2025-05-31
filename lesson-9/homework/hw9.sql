1.SELECT products.productname, suppliers.suppliername
FROM products 
CROSS JOIN suppliers;

2.select*from departments,employees;

3.select suppliername,productname from products inner join suppliers on products.supplierid=suppliers.supplierid;

4.select concat(firstname ,' ', lastname) as customer_name,orderID
from orders inner join customers on Orders.customerId=Customers.customerid;

5.SELECT * 
FROM students 
CROSS JOIN courses;

6.SELECT Products.ProductName, Orders.OrderID, Orders.Quantity
FROM Products
JOIN Orders
ON Products.ProductID = Orders.ProductID;

7.select name,departmentname from departments inner join employees 
        on departments.DepartmentID=employees.DepartmentID;

8.select name,courseid from Students inner join Enrollments 
 on Students.studentId=Enrollments.studentId;

9.SELECT orders.*
FROM orders
INNER JOIN payments ON orders.OrderID = payments.OrderID;


10.select productname,products.price from products inner join orders 
on products.productid=orders.productid
where products.price>100;

11.select name,departmentname from departments inner join employees  
on departments.departmentId<> employees.departmentId;
select name,departmentname from departments cross join employees 
where departments.departmentId<> employees.departmentId;

12.select productname, products.price from orders inner join products 
on products.productID=orders.productID
where price>stockquantity;

13.select concat(firstname,' ',lastname)as customer_name,productID from Customers 
inner join sales on Customers.customerid= sales.customerid
where saleamount>=500;

14.select name,coursename from Courses inner join Enrollments on  Courses.courseid=Enrollments.courseid
                                    inner join Students on Enrollments.studentid=Students.studentid;

15.select productname,suppliername from products inner join suppliers on products.supplierid= suppliers.supplierid
where suppliername like '%tech%';

16.SELECT Orders.OrderID, Orders.TotalAmount, Payments.PaymentAmount
FROM Orders
INNER JOIN Payments
ON Orders.OrderID = Payments.OrderID
WHERE Payments.PaymentAmount < Orders.TotalAmount;

17.select departmentname,name from departments inner join employees on departments.departmentID=employees.departmentID;

18.SELECT Products.ProductName, Categories.CategoryName
FROM Products
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName IN ('Electronics', 'Furniture');

19.select sales.customerid,firstname,email,phone,address,city,state,country,saleid,saleamount from customers inner join sales on sales.customerid=customers.customerid
where country='USA';

20.select orderid,firstname,city,country from orders inner join customers on orders.customerid=customers.customerid
where country='Germany'and totalamount>100;


21.SELECT 
    e1.Name AS Employee1,
    e2.Name AS Employee2,
    e1.DepartmentID AS Dept1,
    e2.DepartmentID AS Dept2
FROM 
    employees e1
JOIN 
    employees e2 
    ON e1.EmployeeID < e2.EmployeeID  -- Avoid duplicate/reverse pairs and self-pairs
WHERE 
    e1.DepartmentID <> e2.DepartmentID;

22.
23.
24.
25.
















