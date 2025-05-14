1.BULK INSERT — bu SQL Serverda ishlatiladigan buyruq bo‘lib, u tashqi fayldan (odatda .txt, .csv, yoki boshqa matnli fayl formatidan) katta hajmdagi ma’lumotlarni tez va samarali tarzda ma’lumotlar bazasidagi jadvalga yuklash uchun ishlatiladi.
2.SQL Serverga quyidagi to‘rt fayl formatidagi ma’lumotlarni import qilish mumkin:

CSV (Comma-Separated Values)

Har bir satr — bitta yozuv, ustunlar esa vergul bilan ajratilgan.

Eng ko‘p ishlatiladigan formatlardan biri.

TXT (Text File)

Oddiy matn fayli bo‘lib, maydonlar maxsus belgilar (masalan, tab, nuqta-vergul) bilan ajratilgan bo‘lishi mumkin.

XML (Extensible Markup Language)

Ma’lumotlar ierarxik shaklda saqlanadi.

SQL Serverda OPENXML, XML datatype, yoki SSIS orqali import qilinadi.

JSON (JavaScript Object Notation)

Yengil va o‘qilishi oson format.

SQL Server 2016 va undan keyingi versiyalarida OPENJSON orqali ishlanadi.

3.create table Products (productid int primary key,productname Varchar(50),price decimal(10,2))

4.insert into products values (1,'olma',1000),(2,'limon',2000),(3,'gilos',1500)

5.NULL — bu qiymat yo‘qligini bildiradi, ya’ni ustunda hech qanday ma’lumot saqlanmagan.
NOT NULL — bu ustunda majburiy tarzda qiymat bo‘lishi kerak degan talab.

Farqi qisqacha:
NULL — qiymat yo‘q.

NOT NULL — qiymat bo‘lishi shart.

6.create table Productss (productid int primary key,productname Varchar(50) unique,price decimal(10,2))

7.  /* biz sql commendni kod sifatida emas shunchaki ozimiz uchun eslatma sifatida ssms da yozishimiz mumkun buni server oqimaydi*/
biz sql commendni kod sifatida emas shunchaki ozimiz uchun eslatma sifatida ssms da yozishimiz mumkun buni server oqimaydi

8.alter table productss
  add  CategoryID int
9. create table categories (categoryId int primary key,categoryName varchar(100) unique)

10.IDENTITY ustunining maqsadi:
Avtomatik raqam berish: Har bir yangi yozuv qo‘shilganda, bu ustun qiymati avtomatik ravishda oshib boradi.

Unikal identifikator: Har bir qatorni noyob tarzda aniqlash uchun ishlatiladi.

Qo‘lda qiymat kiritish kerak emas: Foydalanuvchi bu ustunga qiymat bermaydi — SQL Server o‘zi beradi.

11.bulk insert productss
  from 'C:\Users\Asus\Documents\TI\Customers.txt'
  with (
  fieldterminator=',',
  rowterminator='/n',
  firstrow=2
  );
12. create table Productss (productid int primary key,
 productname Varchar(100) unique foreign key references categories(categoryName),
 price decimal(10,2)
 );

13.primery key va unique key farqi










