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

13.primery key va unique key farqi.PRIMARY KEY (Asosiy kalit)
Bir martalik bo‘ladi: Har bir jadvalda faqat bitta PRIMARY KEY bo‘lishi mumkin.

NULL qiymatlar bo‘lmaydi: PRIMARY KEY ustunida NULL qiymatlar bo‘lishi mumkin emas.

Yagona identifikator: PRIMARY KEY jadvaldagi har bir qatorni noyob (unikal) tarzda aniqlaydi.

Avtomatik indekslanadi: PRIMARY KEY yaratilganda u avtomatik indekslanadi.
UNIQUE KEY (Noyob kalit)
Bir nechta bo‘lishi mumkin: Jadvalda bir nechta UNIQUE KEY bo‘lishi mumkin.

NULL qiymatga ruxsat bor: UNIQUE KEY ustunida bitta yoki bir nechta NULL qiymatlar bo‘lishi mumkin (bu ba'zi SQL tizimlarida farq qilishi mumkin).

Noyoblikni ta'minlaydi: Ustundagi qiymatlar takrorlanmasligini kafolatlaydi.

Indeks yaratiladi: UNIQUE KEY ham indeks hosil qiladi, ammo PRIMARY KEY emas.

14.alter table productss
add constraint price check (price>0)

 15.alter table productss
add  stock int not null.

16.SELECT isnull(price,0) as price
FROM PhoneNumbers;

17.FOREIGN KEY — bu boshqa jadvaldagi ma'lumotga bog‘liq bo‘lgan ustun. Ya'ni, u bir jadvaldagi qiymatning ikkinchi jadvaldagi mavjud qiymatga mos bo‘lishini ta’minlaydi.
FOREIGN KEY boshqa jadvaldagi PRIMARY KEY yoki UNIQUE ustunga bog‘lanadi.

U o‘zi turgan jadvalda ma’lumotni cheklaydi: faqat bog‘langan jadvalda mavjud qiymatlar qabul qilinadi.

🧠 Xulosa:
FOREIGN KEY — bu ikki jadval orasidagi bog‘liqlikni yaratadigan vosita.

U ma’lumotlar bazasida yaxlitlikni saqlaydi, noto‘g‘ri yoki yetishmaydigan bog‘lamalarni oldini oladi.

Bu ayniqsa katta va bog‘langan tizimlarda juda muhim.





18.create table customers (customerID int identity,name varchar(10),age int check(age >=18))

19.create table homework3 (customerID int identity(100,10),name varchar(10),age int check(age >=18))

20.create table OrderDetails (customerID int identity(100,10),name varchar(10) primary key,age int check(age >=18))

21.ALESCE funksiyasi*🎯 Maqsadi:

`COALESCE` funksiyasi berilgan ifodalar ro‘yxatidan **birinchi `NULL` bo‘lmagan qiymatni** qaytaradi.

### 🧾 Sintaksisi:

```sql
COALESCE(ifoda1, ifoda2, ..., ifodaN)
```

* Ifodalar **chapdan o‘ngga** qarab tekshiriladi.
* Birinchi `NULL` bo‘lmagan qiymat qaytariladi.
* Agar hamma ifodalar `NULL` bo‘lsa, natija ham `NULL` bo‘ladi.

---

## 🔹 **2. ISNULL funksiyasi**

### 🎯 Maqsadi:

`ISNULL` funksiyasi agar ifoda `NULL` bo‘lsa, uni **belgilangan qiymat bilan almashtiradi**.

### 🧾 Sintaksisi:

```sql
ISNULL(ifoda, o‘rniga_qiymat)
```

* Agar `ifoda` `NULL` bo‘lsa, o‘rniga ko‘rsatilgan qiymatni qaytaradi.
* Agar `ifoda` `NULL` bo‘lmasa, shu ifodaning o‘zi qaytariladi.

---

## 🔸 Misol:

Quyidagi jadvalni tasavvur qiling:

| Ism   | Laqab |
| ----- | ----- |
| Jon   | NULL  |
| Alisa | Ali   |

### ISNULL bilan:

```sql
SELECT Name, ISNULL(Nickname, 'Laqabi yo‘q') AS DisplayName FROM People;
```

### COALESCE bilan:

```sql
SELECT Name, COALESCE(Nickname, 'Laqabi yo‘q') AS DisplayName FROM People;
```

**Natija**:

| Name  | DisplayName |
| ----- | ----------- |
| Jon   | Laqabi yo‘q |
| Alisa | Ali         |

---

## 🔍 Asosiy farqlari:

| Xususiyat          | ISNULL              | COALESCE                      |
| ------------------ | ------------------- | ----------------------------- |
| Argumentlar soni   | Faqat 2 ta          | 2 yoki undan ortiq            |
| Standartga mosligi | Yo‘q                | Ha (ANSI SQL standarti)       |
| Qaytarilgan turi   | 1-argumentning turi | Eng yuqori ustuvorlikdagi tur |

---

22.create table Employees (EmpID int primary key,Email varchar(100) UNIQUE )

23.CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);








