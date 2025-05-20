1.select productname as name from products

2. select*from customers as cliant


3. select productname from products
 union 
 select productname from products_discounted

4.select *from products
intersect
select*from products_discounted

5.select distinct firstname,country from customers

6.select*,case when price > 1000 then'high'
	         when Price <= 1000 then 'low'
			 else ' '
    end as conditional 
	from products


7.select*, iif(stockquantity > 100,'yes','no')as status  from Products_Discounted


8.select productname from products
union
select productname from products_discounted

9.select*from products
except
select*from products_discounted

10.select*,iif(price>1000,'expensive','affordable') as conditional from products

11.select *from employees
where age<25 and salary>60000

12.update employees
set salary=salary *1.10
where employeeid=5

13.select*,case when saleamount>500 then 'top tier'
when saleamount between 200 and 500 then 'mid tier'
else 'lown tier'
end as status from sales


14.select customerid from orders
except
select customerid from sales

15.select 
        customerid,
        quantity,
       case when quantity=1 then '3%'
      when quantity>1 and quantity<=3  then '5%'
       else '7%'
       end as discountpercentage
from orders;























