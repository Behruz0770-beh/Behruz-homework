1.SELECT 
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM 
    Person p
LEFT JOIN 
    Address a
ON 
    p.personId = a.personId;

2.select emp1. name as emp_name,emp1.salary ,emp2.name as mng_id ,emp2.salary as mg_salary from employee as emp1 inner join employee
                                         as emp2 on emp1.id=emp2.managerid
										 where emp1.salary>emp2.salary;

3.SELECT 
    email AS Email
FROM 
    Person
GROUP BY 
    email
HAVING 
    COUNT(email) > 1;
4.DELETE p1
FROM Person p1
JOIN Person p2
  ON p1.email = p2.email AND p1.id > p2.id;

5.SELECT DISTINCT g.ParentName
FROM girls g
WHERE g.ParentName NOT IN (
    SELECT DISTINCT b.ParentName FROM boys b
);

6.SELECT 
    customerId,
    SUM(amount) AS total_sales,
    MIN(weight) AS least_weight
FROM 
    Orders
WHERE 
    weight > 50
GROUP BY 
    customerId;
7.SELECT 
    c1.Item AS [Item Cart 1],
    c2.Item AS [Item Cart 2]
FROM 
    Cart1 c1
FULL OUTER JOIN 
    Cart2 c2
ON 
    c1.Item = c2.Item;
8.SELECT name AS Customers
FROM Customers
WHERE id NOT IN (
    SELECT DISTINCT customerId FROM Orders
);
9.SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM 
    Students s
CROSS JOIN 
    Subjects sub
LEFT JOIN 
    Examinations e
ON 
    s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY 
    s.student_id, s.student_name, sub.subject_name
ORDER BY 
    s.student_id, sub.subject_name;

