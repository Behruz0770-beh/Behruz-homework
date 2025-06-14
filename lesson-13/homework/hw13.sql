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


9.SELECT
    FullName,
    LEFT(FullName, CHARINDEX(' ', FullName) - 1) AS FirstName,
    
    -- Extract MiddleName
    SUBSTRING(
        FullName,
        CHARINDEX(' ', FullName) + 1,
        CHARINDEX(' ', FullName, CHARINDEX(' ', FullName) + 1) - CHARINDEX(' ', FullName) - 1
    ) AS MiddleName,
    
    -- Extract LastName
    RIGHT(FullName, LEN(FullName) - CHARINDEX(' ', FullName, CHARINDEX(' ', FullName) + 1)) AS LastName
FROM Students;




10.select*from orders
where deliverystate='ca' and customerid in (
          select customerid from orders
           where deliverystate='tx'
);

11.
select*from Dmltable
select concat(sequenceNumber,'-',string)as full_ from dmltable 

select string_agg(concat(sequenceNumber,'-',string),',')as nmadur from dmltable ;

12.FROM employees
WHERE 
    LEN(CONCAT(first_name, last_name)) - LEN(REPLACE(LOWER(CONCAT(first_name, last_name)), 'a', '')) >= 3;

13.SELECT 
    department_id,
    COUNT(*) AS total_employees,
    SUM(CASE 
            WHEN DATEDIFF(YEAR, hire_date, GETDATE()) > 3 THEN 1 
            ELSE 0 
        END) AS employees_over_3_years,
    CAST(SUM(CASE 
                WHEN DATEDIFF(YEAR, hire_date, GETDATE()) > 3 THEN 1 
                ELSE 0 
             END) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS percent_over_3_years
FROM employees
GROUP BY department_id;

14.WITH Ranked AS (
    SELECT 
        spacemanid,
        jobdescription,
		missioncount,
      
        RANK() OVER (PARTITION BY jobdescription ORDER BY missioncount DESC) AS most_exp_rank,
        RANK() OVER (PARTITION BY jobdescription ORDER BY missioncount ASC) AS least_exp_rank
    FROM Personal
)

SELECT 
    jobdescription,
    MAX(CASE WHEN most_exp_rank = 1 THEN spacemanid END) AS most_experienced_spaceman,
    MAX(CASE WHEN least_exp_rank = 1 THEN spacemanid END) AS least_experienced_spaceman
FROM Ranked
GROUP BY jobdescription;

























