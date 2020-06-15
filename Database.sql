create database BookStorage;
use bookstorage;
# Customer table
create table Customer (
Customer_id int primary key identity,
FirstName varchar(50),
LastName varchar(50),
Email varchar(50),
Phone decimal(38,0),
[Address] varchar (50),
Age tinyint
);
# Insert data into customer table
INSERT INTO CUSTOMER(FirstName,LastName,Email,Phone,[Address],Age) VALUES('mustafa','saif','mustafasaif696@gmail.com',01206448427,'alexandria(agmy)',20);
INSERT INTO CUSTOMER(FirstName,LastName,Email,Phone,[Address],Age) VALUES('ahmed','emad','ahmed.emad@gmail.com',01224429076,'alexandria(agmy)',19);
INSERT INTO CUSTOMER(FirstName,LastName,Email,Phone,[Address],Age) VALUES('marwan','samih',null,01110005839,'alexandria(smouha)',24);
INSERT INTO CUSTOMER(FirstName,LastName,Email,Phone,[Address],Age) VALUES('abdelrahman','gebril',null,01206448427,'alexandria(wrdyan)',20);
INSERT INTO CUSTOMER(FirstName,LastName,Email,Phone,[Address],Age) VALUES('nourhan','saif','nourhansaif24@gmail.com',01551342294,'alexandria(agmy)',22);
INSERT INTO CUSTOMER(FirstName,LastName,Email,Phone,[Address],Age) VALUES('mahmoud','ahmed',null,01285124880,'alexandria',30);
# Book table
create table Book(
Book_id int primary key identity,
BookName varchar(50),
BookType varchar(50),
Author varchar(50),
YearOfPublication decimal(38,0),
BookLanguage varchar(50),
NumberOfParts tinyint,
NumberOfPages decimal(38,0),
Price tinyint,
NumOfCopies tinyint,
);
# Insert data into Book table
INSERT INTO Book(BookName,BookType,Author,YearOfPublication,BookLanguage,NumberOfParts,NumberOfPages,Price,NumOfCopies) VALUES('A Song of Ice and Fire','fantasy','George R. R. Martin',1996,'English',6,680,200,10);
INSERT INTO Book(BookName,BookType,Author,YearOfPublication,BookLanguage,NumberOfParts,NumberOfPages,Price,NumOfCopies) VALUES('Harry Potter','fantasy','J. K. Rowling',1997,'English',8,750,150,15);
INSERT INTO Book(BookName,BookType,Author,YearOfPublication,BookLanguage,NumberOfParts,NumberOfPages,Price,NumOfCopies) VALUES('The Lord of the Rings','fantasy','J. R. R. Tolkien',1954,'English',2,540,90,20);
INSERT INTO Book(BookName,BookType,Author,YearOfPublication,BookLanguage,NumberOfParts,NumberOfPages,Price,NumOfCopies) VALUES('Journey to the Center of the Earth','subterranean fiction','Jules Verne',1864,'french',2,650,80,30);
INSERT INTO Book(BookName,BookType,Author,YearOfPublication,BookLanguage,NumberOfParts,NumberOfPages,Price,NumOfCopies) VALUES('Anna Karenina','Realist novel','Leo Tolstoy',1877,'Russian',2,360,120,5);
INSERT INTO Book(BookName,BookType,Author,YearOfPublication,BookLanguage,NumberOfParts,NumberOfPages,Price,NumOfCopies) VALUES('War and Peace','Historical novel','Leo Tolstoy',1869,'Russian',3,590,190,7);
INSERT INTO Book(BookName,BookType,Author,YearOfPublication,BookLanguage,NumberOfParts,NumberOfPages,Price,NumOfCopies) VALUES('Adventures of Huckleberry Finn','Picaresque novel','Mark Twain',1884,'English',2,460,170,25);
INSERT INTO Book(BookName,BookType,Author,YearOfPublication,BookLanguage,NumberOfParts,NumberOfPages,Price,NumOfCopies) VALUES('What Is Life?','Popular science','Erwin Schrödinger',1944,'English',4,420,110,3);
INSERT INTO Book(BookName,BookType,Author,YearOfPublication,BookLanguage,NumberOfParts,NumberOfPages,Price,NumOfCopies) VALUES('The First Three Minutes','scientific','Steven Weinberg',1977,'English',4,500,70,6);
# Payments table
create table Payments(
Payments_id int primary key identity,
PaymentMethod varchar(50),
CardType varchar(50),
CardNumber decimal(38,0),
RemainingAmount tinyint,
Customer_id int,
FOREIGN KEY
(Customer_id)
References Customer(Customer_id),
);
# Insert data into Payments table
INSERT INTO Payments(PaymentMethod,CardType,CardNumber,RemainingAmount,Customer_id) VALUES('card','credit',56887,0,1);
INSERT INTO Payments(PaymentMethod,CardType,CardNumber,RemainingAmount,Customer_id) VALUES('card','debit',65223,0,3);
INSERT INTO Payments(PaymentMethod,CardType,CardNumber,RemainingAmount,Customer_id) VALUES('cash',null,null,10,4);
INSERT INTO Payments(PaymentMethod,CardType,CardNumber,RemainingAmount,Customer_id) VALUES('cash',null,null,20,6);
INSERT INTO Payments(PaymentMethod,CardType,CardNumber,RemainingAmount,Customer_id) VALUES('card','debit',68845,0,2);
INSERT INTO Payments(PaymentMethod,CardType,CardNumber,RemainingAmount,Customer_id) VALUES('card','credit',11555,0,1);
INSERT INTO Payments(PaymentMethod,CardType,CardNumber,RemainingAmount,Customer_id) VALUES('cash',null,null,15,6);
INSERT INTO Payments(PaymentMethod,CardType,CardNumber,RemainingAmount,Customer_id) VALUES('card','credit',98332,0,5);
INSERT INTO Payments(PaymentMethod,CardType,CardNumber,RemainingAmount,Customer_id) VALUES('cash',null,null,22,3);
# BillOfOrder table
create table BillOfOrder(
BillOfOrder_id int primary key identity,
Quantity decimal(38,0),
TotalPrice decimal,
OrderDate date,
Payments_id int,
FOREIGN KEY
(Payments_id)
References Payments(Payments_id)
);
# Insert data into BillOfOrder table
INSERT INTO BillOfOrder(Quantity,TotalPrice,OrderDate,Payments_id) VALUES (2,260,'2020-05-20',3);
INSERT INTO BillOfOrder(Quantity,TotalPrice,OrderDate,Payments_id) VALUES (1,200,'2020-05-22',6);
INSERT INTO BillOfOrder(Quantity,TotalPrice,OrderDate,Payments_id) VALUES (4,520,'2020-05-26',5);
INSERT INTO BillOfOrder(Quantity,TotalPrice,OrderDate,Payments_id) VALUES (2,150,'2020-05-20',1);
INSERT INTO BillOfOrder(Quantity,TotalPrice,OrderDate,Payments_id) VALUES (3,300,'2020-06-1',4);
INSERT INTO BillOfOrder(Quantity,TotalPrice,OrderDate,Payments_id) VALUES (2,350,'2020-06-6',2);
INSERT INTO BillOfOrder(Quantity,TotalPrice,OrderDate,Payments_id) VALUES (3,420,'2020-06-10',7);
INSERT INTO BillOfOrder(Quantity,TotalPrice,OrderDate,Payments_id) VALUES (2,220,'2020-06-12',9);
INSERT INTO BillOfOrder(Quantity,TotalPrice,OrderDate,Payments_id) VALUES (3,380,'2020-06-12',8);
# BookSales table
create table BookSales(
BookSales_id int primary key identity,
quantity int,
TotalGainOfBook decimal(38,0),
Book_id int,
FOREIGN KEY
(Book_id)
References Book(Book_id),
);
# Insert data into BookSales table
INSERT INTO BookSales(quantity,TotalGainOfBook,Book_id) VALUES (15,3000,1);
INSERT INTO BookSales(quantity,TotalGainOfBook,Book_id) VALUES (10,1500,2);
INSERT INTO BookSales(quantity,TotalGainOfBook,Book_id) VALUES (8,720,3);
INSERT INTO BookSales(quantity,TotalGainOfBook,Book_id) VALUES (8,880,4);
INSERT INTO BookSales(quantity,TotalGainOfBook,Book_id) VALUES (7,840,5);
INSERT INTO BookSales(quantity,TotalGainOfBook,Book_id) VALUES (4,574,6);
INSERT INTO BookSales(quantity,TotalGainOfBook,Book_id) VALUES (5,840,7);
INSERT INTO BookSales(quantity,TotalGainOfBook,Book_id) VALUES (4,170,8);
INSERT INTO BookSales(quantity,TotalGainOfBook,Book_id) VALUES (10,700,9);
# (1)
SELECT BookName,BookType,Author,BookLanguage
FROM Book
WHERE NumberOfParts>2 AND YearOfPublication >1850;
# (2)
SELECT REPLICATE(FirstName, 3) AS REPLICATENAME
FROM Customer;
# (3)
SELECT TOP (3) * FROM Customer
WHERE Age>20;
# (4)
SELECT MIN(Price)
FROM Book ;
# (5)
SELECT MAX(TotalGainOfBook)
FROM BookSales;
# (6)
SELECT SUM(TotalGainOfBook) AS StoreTotalGain
FROM BookSales;
# (7)
Select count(PaymentMethod) AS CustomerPaidCASH
FROM Payments
WHERE PaymentMethod='cash';
# (8)
SELECT AVG(TotalGainOfBook) AS AverageBookSales
From BookSales;
# (9)
SELECT ASCII(BookName) AS NumCodeOfFirstChar
FROM Book;
#(10)
SELECT DATALENGTH(FirstName)
FROM Customer;
# (11)
SELECT QUOTENAME(BookName, '""')
FROM Book;
# (12)
SELECT ISNUMERIC(PaymentMethod) ,ISNUMERIC(CardType)
FROM Payments;
# (13)
SELECT Book_id, Quantity, IIF(Quantity>7, 'MUCH', 'few')
FROM BookSales;
# (14)
SELECT RIGHT(BookName, 6) AS ExtractString
FROM Book;
# (15)
SELECT LOWER(BookLanguage),LOWER(Author) AS LowercaseBookLanguage
FROM Book;
# (16)
SELECT UNICODE(Author) AS UnicodeOfFirstChar
FROM Book;
# (17)
SELECT Customer_id,FirstName,LastName,Phone,Age
FROM Customer
WHERE Email IS NULL;
# (18)
SELECT MONTH(OrderDate) AS Month
FROM BillOfOrder;
# (19)
SELECT LEFT(BookName, 6) 
FROM Book;
# (20)
SELECT UPPER([Address]) AS UpperCaseCustomerAddress
FROM Customer;
# (21)
SELECT Book_id,TotalGainOfBook 
FROM BookSales
ORDER BY TotalGainOfBook DESC;
# (22)
SELECT COUNT(Book_id)
FROM Book
Where NumberOfParts>3;

# Using select with subquery
SELECT * FROM Book
WHERE Price = (SELECT MIN(Price) FROM Book);
SELECT * FROM BookSales
WHERE TotalGainOfBook = (SELECT MAX(TotalGainOfBook) FROM BookSales);
UPDATE Book
SET Price = Price * 0.25
WHERE NumOfCopies IN (SELECT NumOfCopies FROM Book
WHERE NumOfCopies <= 8);

# Select Using different joins
SELECT BillOfOrder.BillOfOrder_id,BillOfOrder.TotalPrice, Payments.PaymentMethod AS 'PaymentMethod'  
FROM BillOfOrder JOIN Payments                                     
ON BillOfOrder.Payments_id = Payments.Payments_id;                          
SELECT Book.BookName, Customer.FirstName, Customer.LastName
FROM Book
RIGHT JOIN Customer ON Book.Book_id = Customer.Customer_id
ORDER BY Book.BookName;
Select FirstName, BookName, TotalPrice
From(
(Customer INNER JOIN Book ON Customer.Customer_id = Book.Book_id)
Inner JOIN BillOfOrder ON Book.Book_id= BillOfOrder.BillOfOrder_id);
SELECT Book.BookName, BookSales.TotalGainOfBook
FROM Book
LEFT JOIN BookSales ON Book.Book_id = BookSales.BookSales_id
ORDER BY Book.BookName;
SELECT Customer_id,FirstName,TotalPrice,OrderDate
FROM Customer
FULL JOIN BillOfOrder
ON Customer.Customer_id = BillOfOrder.BillOfOrder_id;
SELECT Book.BookName, BookSales.TotalGainOfBook
FROM Book
FULL OUTER JOIN BookSales ON Book.Book_id=BookSales.BookSales_id
ORDER BY Book.BookName;

# Select Using Count and Group By functions
SELECT quantity,COUNT(BookSales_id)
FROM BookSales
GROUP BY quantity;
SELECT Age, COUNT(Customer_id)
FROM Customer
GROUP BY Age;
SELECT OrderDate, COUNT(BillOfOrder_id)
From BillOfOrder
GROUP BY OrderDate;
SELECT PaymentMethod,CardType,COUNT(Payments_id)
FROM Payments
GROUP BY PaymentMethod,CardType;
SELECT NumberOfParts,COUNt(Book_id)
FROM Book 
GROUP BY NumberOfParts;

# Update Statements
UPDATE Book
SET NumberOfParts = 10, YearOfPublication = 2000
WHERE Book_id=6;
UPDATE Customer
SET FirstName = 'ali', LastName = 'hassan'
WHERE Customer_id=6;
UPDATE Payments
SET PaymentMethod = 'card', CardType = 'credit',CardNumber=35115,RemainingAmount= 0
WHERE Payments_id=9;
UPDATE BillOfOrder
SET TotalPrice = 425, Quantity = 4
WHERE BillOfOrder_id=9;
UPDATE BookSales
SET quantity = 8, TotalGainOfBook = 340
WHERE BookSales_id=8;

# Delete Statements
DELETE FROM BookSales
WHERE TotalGainOfBook= 3000;
DELETE FROM BookSales
WHERE quantity>7;
DELETE FROM BillOfOrder
WHERE OrderDate BETWEEN '2020-06-6' AND '2020-06-12';
DELETE FROM Payments
WHERE Payments_id=9;
Delete FROM BookSales
WHERE Book_id=3;

