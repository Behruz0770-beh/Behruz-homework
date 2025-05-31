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







