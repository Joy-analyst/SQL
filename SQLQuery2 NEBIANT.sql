-- SELECT all customers from the customers table
SELECT * FROM [customers (1)];
-- Select all customer_name, email, location from Customers table
SELECT FirstName, Lastname, Email, Location from [customers (1)];

SELECT * FROM [Orders];

-- Removing Duplicates Using DISTINCT
SELECT Saleschannel From Orders;
SELECT Distinct Saleschannel From Orders;

SELECT COUNT (Customer_ID) AS Num_customers FROM [customers (1)];

-- To Count() Number of Rows In A Table
SELECT COUNT (*) AS Num_rows FROM Orders;

-- To Count the Number Of Customers
SELECT COUNT (*) FROM [customers (1)];

-- To Count The Number Of Emails 
SELECT COUNT (*) Emails FROM [customers (1)];

--To Count The Number of Names and Customer Email Columns
SELECT COUNT (Firstname) AS Count_Names, COUNT (Email) AS Count_Email FROM [customers (1)];

--Using Count Distinct For Multiple Fields
SELECT COUNT (Firstname) AS Count_Names,
COUNT (Email) AS Count_Email, 
COUNT (DISTINCT MaritalStatus) AS Count_Unique_Maritalstatus From [customers (1)];

--To SelectTop 10 Rows In The Customers Table
SELECT TOP 10* FROM [customers (1)];

--To Select Top From Multiple Columns
SELECT TOP 10 SalesDate, CustomerID, PaymentMode,SalesAmount FROM Orders;

--Select All Values In The Product Table And Oder By Price In Descending Order
SELECT *
FROM products
ORDER BY ProductPrice DESC;

--Order The Products Table By Subcategory In Ascending Order And Price In Descending Order
SELECT *
FROM products
ORDER BY SubCategory ASC, ProductPrice DESC;

--Select The Top 5 Most Expensive Products
SELECT TOP 5 *
FROM products
ORDER BY ProductPrice DESC;

--Select Names, Email And Location Of Female Customers
SELECT FirstName, LastName, Email, Location 
FROM [customers (1)]
WHERE Gender = 'F';

SELECT * FROM [sales personnel];

--Select The Names And PersonnelID Of Some Sales Person In Store ID 5
SELECT PersonnelID, PersonnelName,DateJoined
FROM [sales personnel]
WHERE StoreID = 5;

SELECT TOP 10* 
FROM Orders;

--Select The CustomerID, ProductID, Quantity, SalesPrice, And Calculate The Total Sales Amount From The OrdersTable
SELECT CustomerID, 
ProductID, 
Quantity, 
SalesAmount ,
(Quantity * SalesAmount) AS TotalSalesAmount
FROM Orders;

--Select All Products Where SalesPrice Is Atleast 3000 From The Product Table
SELECT *
FROM products
WHERE ProductPrice >= 3000;

--Select All Orders Placed Before March 2023
SELECT *
FROM Orders
WHERE SalesDate <= '2023-03-31'
ORDER BY SalesDate DESC;

--Select The Details Of All Orders Placed Online
SELECT *
FROM Orders
WHERE SalesChannel = 'Online';

--Select All Products Not In The Women's Category
SELECT *
FROM products
WHERE Category <> 'Women'

SELECT *
FROM products
WHERE SubCategory <> 'shoes'

--Select All Orders Where SalesChannel Is Online And Sales Date Is 21st-February-2023
SELECT *
FROM Orders
WHERE SalesChannel = 'Online'
AND SalesDate = '2023-02-21';

SELECT *
FROM Orders
WHERE SalesChannel = 'Online'
OR SalesDate = '2023-02-21'
ORDER BY SalesChannel;

-- Select OrderID, SalesDate and ProductID, and Total Sales Amount Where ProductID is Either 26,41 or 18
SELECT  OrderID, 
SalesDate,
ProductID, 
( Quantity * SalesAmount) AS TotalSalesAmount
FROM Orders
WHERE ProductID = 26 
OR ProductID = 41
OR ProductID = 18;


-- Select OrderID, SalesDate and ProductID, and Total Sales Amount Where ProductID is Either 26,41 or 18
SELECT  OrderID, 
SalesDate,
ProductID, 
( Quantity * SalesAmount) AS TotalSalesAmount
FROM Orders
WHERE ProductID IN (26, 41, 18);

--Select SalesDate, OrderID, ProductID, and SalesAmount For All Oders Placed On The Following Days: 2Feb 2023, 13th June, 2023 And 7August, 2023. 
--Order by SalesDate

SELECT 
SalesDate,
OrderID,
ProductID,
(Quantity * SalesAmount) AS TotalSalesAmount
FROM Orders
WHERE SalesDate IN ('2023-02-02', '2023-06-13', '2023-08-07') 
ORDER BY SalesDate

-- Select All Order Details For Oders Placed Online Between 1st and 3rd July 2023
--Oder By SalesDate In ASC and SalesAmount In DESC
SELECT OrderID,
SalesDate, 
ProductID,
CustomerID,
SalesChannel, 
SalesAmount,
(Quantity*SalesAmount) AS TotalSalesAmount
FROM Orders
Where SalesDate BETWEEN '2023-07-01' AND '2023-07-03' 
AND SalesChannel = 'Online'
ORDER BY SalesDate ASC, TotalSalesAmount DESC;

--Select All Order Between 101 and 115
SELECT*
FROM Orders
WHERE OrderID BETWEEN 101 AND 105 

--Select All Orders In The Month Of September 2023 for Customers with ID AA-10315
SELECT*
FROM Orders
WHERE CustomerID = 'AA-10315'
AND SalesDate BETWEEN '2023-09-01' AND '2023-09-30'

--Generate a List Of All Customer With Missing Email Address
SELECT Customer_ID, Email
FROM [customers (1)]
WHERE Email IS NULL

--Generate a List Of All Customers With Missing Marital Status
SELECT Customer_ID, MaritalStatus
FROM [customers (1)]
WHERE MaritalStatus IS NULL;

--Get The Names And Emails Of All Customers With An Email Address
SELECT Customer_ID, (FirstName + '' + LastName)
AS CustomerName, Email
FROM [customers (1)]
WHERE Email IS NOT NULL;

--Find All Customername Starting With Letter 'A'
SELECT Customer_ID, Firstname
FROM [customers (1)]
WHERE FirstName LIKE 'A%';

--Get The Names And IDs Of All CustomersID Starting With 'AB'
SELECT Customer_ID, FirstName
FROM [customers (1)]
WHERE FirstName LIKE 'AB%';

--Get The Names And Subcategory Of All Products With Names Ending Withe The Word 'Black'
SELECT ProductName, SubCategory
FROM products
WHERE ProductName LIKE '%Black';

--Suppose The Store Manager Needs Help Finding A Customer But Only Remembers That The Customer's Name Contain The Word 'Rose'.
--How Do You Find The Customer

SELECT*
FROM [customers (1)]
WHERE FirstName LIKE '%Rose%' 

--Select All Customers Names With 'R' As A Single Character
SELECT Customer_ID, FirstName, LastName
FROM [customers (1)] 
WHERE FirstName LIKE '_r%'























