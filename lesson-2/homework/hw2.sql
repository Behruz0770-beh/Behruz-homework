1.Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).
CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Salary DECIMAL(10,2))

SELECT * FROM Employees
2.Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).
INSERT INTO Employees(EMPID ,NAme,Salary ) values (1,'behruzz',11000.99)

insert into Employees(EMPID ,NAme,Salary ) values (2,'shexroz',12000),(3,'begzod',13000.5),(4,'jovoxir',14000)

3.Update the Salary of an employee to 7000 where EmpID = 1.
Update Employees
set Salary=7000 
where EmpID = 1

4.Delete a record from the Employees table where EmpID = 2.

delete Employees
where EmpID = 2

5.Give a brief definition for difference between DELETE, TRUNCATE, and DROP.
DELETE
Nima qiladi?
Jadvaldagi muayyan (tanlangan) qatorlarni o‘chiradi.

Qachon ishlatiladi?
Agar siz faqat ba’zi ma’lumotlarni o‘chirmoqchi bo‘lsangiz, masalan: WHERE shartidan foydalangan holda.

Qaytarib bo‘ladimi?
Ha, agar TRANSACTION ishlatilsa (ROLLBACK bilan).
TRUNCATE
Nima qiladi?
Jadvaldagi barcha qatorlarni tozalaydi, lekin jadvalning o‘zi saqlanib qoladi.

Qachon ishlatiladi?
Agar siz jadvaldagi barcha ma’lumotlarni tezda va samarali o‘chirmoqchi bo‘lsangiz.

Qaytarib bo‘ladimi?
Odatda yo‘q (ba’zi SQL serverlarda ROLLBACK yordamida mumkin, lekin har doim emas).
DROP
Nima qiladi?
Jadvalni butunlay o‘chiradi — ma’lumotlari ham, tuzilmasi ham yo‘qoladi.

Qachon ishlatiladi?
Endi bu jadval kerak bo‘lmasa, yoki yangisini yaratmoqchi bo‘lsangiz.

Qaytarib bo‘ladimi?
Yo‘q. Jadval o‘chiriladi va qayta tiklash uchun backup kerak bo‘ladi.

6.Modify the Name column in the Employees table to VARCHAR(100).


ALTER TABLE employees
ALTER COLUMN NAME VARCHAR(100)

7.Add a new column Department (VARCHAR(50)) to the Employees table.
ALTER TABLE Employees
ADD Department VARCHAR(50)

8.Change the data type of the Salary column to FLOAT.
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;

9.Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).
CREATE TABLE Departments (
    DepartmentID INT,
    DepartmentName VARCHAR(50),
    PRIMARY KEY (DepartmentID)           
);

10.Remove all records from the Employees table without deleting its structure.

TRUNCATE TABLE employees

