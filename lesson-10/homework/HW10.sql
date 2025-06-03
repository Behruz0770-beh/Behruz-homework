1.   select name,salary from employees inner join departments on employees.departmentid=departments.departmentid
   where salary>50000;

2.select firstname,orderdate,year(orderdate)as years from customers inner join orders on customers.customerid=orders.customerid
where year(orderdate)=2023;

3.   select name,departmentname from employees left join departments on employees.departmentid=departments.departmentid;

4.   select suppliername,productname from products right join suppliers on products.supplierid =suppliers.supplierid;

5.   select orderid,orderdate,paymentdate,amount from orders 
   full join payments on orders.orderid=payments.orderid;

6.  select emp1.name as employeename,emp2.name as manegername from employees as emp1 inner  join employees as emp2 
   on emp1.employeeid=emp2.managerid;

7.   select name,coursename from students inner join enrollments on students.studentid=enrollments.studentid
                                        inner join courses on enrollments.courseid=courses.courseid
    where coursename like 'Math 101';

8.   select firstname,lastname,quantity from customers inner join orders on customers.customerid=orders.customerid
   where quantity>3;

9.   select name,departmentname from employees inner join departments on employees.departmentid=departments.departmentid
   where departmentname like 'Human Resources' ;

10.  select departmentname,count(name) as employeecount from employees inner join departments on 
   employees.departmentid=departments.departmentid
   group by departmentname 
   having count(name)>5;

11. select productname,saleamount from products left join sales on products.productid=sales.productid
   where saleamount is null;

12.   select firstname,lastname,totalamount ,quantity from customers inner join orders on customers.customerid=orders.customerid
   where quantity>=1;

13.SELECT 
    e.EmployeeName, 
    d.DepartmentName
FROM 
    Employees e
INNER JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID;

14.SELECT 
    e1.EmployeeName AS Employee1,
    e2.EmployeeName AS Employee2,
    e1.ManagerID
FROM 
    Employees e1
JOIN 
    Employees e2 ON e1.ManagerID = e2.ManagerID 
                AND e1.EmployeeID < e2.EmployeeID
WHERE 
    e1.ManagerID IS NOT NULL;
15.SELECT 
    o.OrderID,
    o.OrderDate,
    c.FirstName,
    c.LastName
FROM 
    Orders o
INNER JOIN 
    Customers c ON o.CustomerID = c.CustomerID
WHERE 
    YEAR(o.OrderDate) = 2022;

16.SELECT 
    e.EmployeeName,
    e.Salary,
    d.DepartmentName
FROM 
    Employees e
INNER JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName = 'Sales'
    AND e.Salary > 60000;

17.SELECT 
    o.OrderID,
    o.OrderDate,
    p.PaymentDate,
    p.Amount
FROM 
    Orders o
INNER JOIN 
    Payments p ON o.OrderID = p.OrderID;

18.SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
WHERE od.OrderID IS NULL;

19.   select name,salary,departmentname 
   from employees inner join departments on employees.departmentid=departments.departmentid
  
   where salary>(select avg(salary)as avg_salary from employees);

20.   select productid,orderdate,amount from orders full join payments on orders.orderid=payments.orderid
   where orderdate<'2020' and amount is null;

21.SELECT ProductID, ProductName
FROM Products
WHERE CategoryID NOT IN (
    SELECT CategoryID FROM Categories
);
22.SELECT 
    e1.EmployeeName AS Employee1,
    e2.EmployeeName AS Employee2,
    e1.ManagerID,
    e1.Salary
FROM Employees e1
JOIN Employees e2 ON 
    e1.ManagerID = e2.ManagerID AND 
    e1.EmployeeID <> e2.EmployeeID
WHERE 
    e1.Salary > 60000 AND 
    e2.Salary > 60000;
23.SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName LIKE 'M%';
24.SELECT s.SaleID, p.ProductName, s.SaleAmount
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
WHERE s.SaleAmount > 500;
25.SELECT s.StudentID, s.StudentName
FROM Students s
WHERE s.StudentID NOT IN (
    SELECT e.StudentID
    FROM Enrollments e
    JOIN Courses c ON e.CourseID = c.CourseID
    WHERE c.CourseName = 'Math 101'
);

26.SELECT o.OrderID, o.OrderDate, p.PaymentID
FROM Orders o
LEFT JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentID IS NULL;
27.SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IN ('Electronics', 'Furniture');








































