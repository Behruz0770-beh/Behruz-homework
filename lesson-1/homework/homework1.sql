(data) – Bu har xil raqamlar, so‘zlar yoki faktlar bo‘lib, hali tahlil qilinmagan holatda bo‘ladi. 

(database) – Bu ma’lumotlarni tartibli saqlash uchun mo‘ljallangan tizimdir. U bir nechta jadvallardan tashkil topadi.

 (relational database) – Ma’lumotlarni jadvallar (tablitsalar) orqali saqlaydigan va ular orasidagi bog‘liqlikni qo‘llab-quvvatlaydigan ma’lumotlar bazasi.

Jadval (table) – Bu ma’lumotlar bazasida ma’lumotlar saqlanadigan joy. U satr (qator) va ustun (kolonka)lardan tashkil topgan.


2. SQL Server ning 5 ta asosiy xususiyatini yozing.
Katta hajmdagi malumotlarni boshqarish imkoniyati 

Yuqori xavfsizlik – Foydalanuvchilarni nazorat qilish va ma’lumotlarni himoyalash imkoniyatlari bor.

SSMS orqali boshqarish – SSMS (SQL Server Management Studio) yordamida qulay interfeys bilan ishlash mumkin.

Transaksiyalarni qo‘llab-quvvatlaydi – Bir nechta buyruqlarni bitta operatsiya sifatida bajarish mumkin.

Zaxira nusxa olish va tiklash funksiyasi – Ma’lumotlarni yo‘qolgan holatda qayta tiklash mumkin.


3. SQL Server ga ulanayotganda mavjud bo‘lgan autentifikatsiya (tasdiqlash) rejimlari qanday? (Kamida 2 ta yozing):

Windows Authentication – Foydalanuvchi Windows tizimidagi login orqali avtomatik ulanadi.
SQL Server Authentication – Maxsus foydalanuvchi nomi va parol orqali ulaniladi.


DQL-	Ma’lumot so‘rash	                         SELECT	SELECT * FROM Students;
DML-	Ma’lumot qo‘shish/o‘chirish/yangilash    	INSERT, UPDATE, DELETE	INSERT INTO Students...
DDL-	Tuzilma yaratish/o‘zgartirish	            CREATE, ALTER, DROP	CREATE TABLE...
DCL-	Ruxsat nazorati	                          GRANT, REVOKE	GRANT SELECT...
TCL-	Transaktsiyalarni boshqarish	             BEGIN, COMMIT, ROLLBACK	BEGIN TRANSACTION...
