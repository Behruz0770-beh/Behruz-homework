1.select distinct col1,col2 from inputtbl;

SELECT DISTINCT
    CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col_min,
    CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col_max
FROM InputTbl;

2.SELECT *
FROM TestMultipleZero
WHERE NOT (ISNULL(A, 0) = 0 AND ISNULL(B, 0) = 0 AND ISNULL(C, 0) = 0 AND ISNULL(D, 0) = 0);

3.select*from	section1
where id %2=1

4.select*from section1
where id=(select min(id)  from section1)

5.
select*from section1
where id=(select min(id) from section1)

6.
select*from section1
where name like 'b%'

7.select*from productcodes
where code like '%/_%' escape '/';
