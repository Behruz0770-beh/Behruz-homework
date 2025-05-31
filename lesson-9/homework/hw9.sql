1.SELECT products.productname, suppliers.suppliername
FROM products 
CROSS JOIN suppliers;

2.select*from departments,employees;

3.select suppliername,productname from products inner join suppliers on products.supplierid=suppliers.supplierid;

4.select concat(firstname ,' ', lastname) as customer_name,orderID
from orders inner join customers on Orders.customerId=Customers.customerid;

5.
