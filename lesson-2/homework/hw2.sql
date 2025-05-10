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

11.Insert five records into the Departments table using INSERT INTO SELECT method(you can write anything you want as data).
insert into Departments(departmentid,departmentname) values (1,'behruz'),(2,'shavkat'),(3,'asad'),(4,'shaex'),(5,'shex')

12.Update the Department of all employees where Salary > 5000 to 'Management'.
UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;

13.Write a query that removes all employees but keeps the table structure intact.
TRUNCATE TABLE Employees;

14.Drop the Department column from the Employees table.
alter table employees
drop column department

15.Rename the Employees table to StaffMembers using SQL commands.
EXEC sp_rename 'Employees', 'StaffMembers';

16.Write a query to completely remove the Departments table from the database.

drop table Departments

17.Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

18.Add a CHECK constraint to ensure Price is always greater than 0.
ALTER TABLE Products
ADD CONSTRAINT chk_price_positive CHECK (Price > 0);


19.Modify the table to add a StockQuantity column with a DEFAULT value of 50.
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;

20.Rename Category to ProductCategory
ALTER TABLE Products
RENAME COLUMN Category TO ProductCategory;

21.Insert 5 records into the Products table using standard INSERT INTO queries.
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (1, 'Wireless Mouse', 'Electronics', 25.99, 100),(2, 'Office Chair', 'Furniture', 149.99, 50),(3, 'Bluetooth Speaker', 'Electronics', 79.50, 75),(4, 'Notebook', 'Stationery', 3.25, 200),(5, 'LED Desk Lamp', 'Lighting', 32.40, 60);
22.Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
SELECT * INTO Products_Backup
FROM Products;

23.Rename the Products table to Inventory.
EXEC sp_rename 'Products', 'Inventory';

24.Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
ALTER TABLE Inventory
ALTER COLUMN Price TYPE FLOAT;

25.Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.
CREATE TABLE Inventory_New (
    ProductCode INT IDENTITY(1000, 5) PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(100),
    ProductCategory VARCHAR(50),
    Price FLOAT,
    StockQuantity INT
);
