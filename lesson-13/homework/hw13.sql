1.SELECT CONCAT(employee_id, '-', first_name, ' ', last_name) AS full_info
FROM employees;


2.select replace(phone_number,'124','999') from employees;

3. select len(first_name) as length from employees
   where first_name like '[ajm]%';

4.
select manager_id,sum(salary) from employees
group by manager_id;

5.SELECT 
    Year1,
    GREATEST(Max1, Max2, Max3) AS HighestValue
FROM 
    TestMax;

6.select*from cinema
where id %2=1  and description <> 'boring';

7.select*from singleorder
order by id desc;

8.select*from person
select coalesce(ssn,passportid,itin)as full_ from person;


9.




10.select*from orders
where deliverystate='ca' and customerid in (
          select customerid from orders
           where deliverystate='tx'
);

11.
























