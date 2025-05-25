1.select count(productname) as total_products from products

2.select category,sum(price)total_price,avg(price)avg_price from products
group by category
having category='electronics';

3.select firstname,country from customers
where country like 'L%';

4.select*from products
where productname like '%er';

5.select*from customers
where country like '%A'

6.select max(price)as highest_price from products;
select *from products
where price=(select max(price) from products);

7.
select *, case  when stockquantity<30 then 'low stock'
             else 'sufficient' 
			 end as status 
			 from products;

8.select country,count(customerid)as total_customers from customers
group by country;

9.select min(quantity) as minimum_quantity,max(quantity) as maximum from orders;

10.

11.select*from products
union all
select*from products_discounted;

12.
select*from products
union 
select*from products_discounted;

13.select year(orderdate) as years,
sum(totalamount) as total,
avg(totalamount) as avg_amount 
     from orders
	 group by year(orderdate);


14.select productname,case when price<100 then 'low'
                        when price>=100 and price <=500 then 'mid'
						else 'high' 
						end as pricegroup from products;


15. select*from 
 (
 select district_name,population,year from City_Population
 ) as source_table
 pivot
 ( sum(population)
 for year in ([2012],[2013])
 )as pivot_table
select*from City_Population;

16.select productid,sum(saleamount) as total from sales
group by productid;


17.select productname from products
where productname like '%oo%';


18.SELECT Year, [Bektemir], [Chilonzor], [Yakkasaroy]
INTO Population_Each_City
FROM (
    SELECT Year, district_name, Population
    FROM City_Population
    WHERE district_name IN ('Bektemir', 'Chilonzor', 'Yakkasaroy')
) AS SourceTable
PIVOT (
    SUM(Population)
    FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS PivotTable;

19.SELECT TOP 3 CustomerID, SUM(Totalamount) AS TotalSpent
FROM Invoices
GROUP BY CustomerID;

20.SELECT Year, district_name, Population
FROM Population_Each_City
UNPIVOT (
    Population FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS UnpivotedData;

21.SELECT p.ProductName, COUNT(s.ProductID) AS TimesSold
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
GROUP BY p.ProductName
ORDER BY TimesSold DESC;

22.SELECT Year, district_name, Population
FROM Population_Each_City
UNPIVOT (
    Population FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS UnpivotedData;










































