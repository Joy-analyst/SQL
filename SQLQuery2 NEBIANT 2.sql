
--RETURN THE SUM OF ALL QUANTITIES IN THE ORDERS TABLE
SELECT SUM(Quantity) AS Total_Quantity
FROM Orders;

--FIND THE SUM OF ALL QUANTITIES ORDERED FOR PRODUCTS WITH PRODUCT_ID 15
SELECT SUM (Quantity) AS Total_Quantity
FROM Orders
WHERE ProductID = 15;

--FIND THE SUM OF ALL TOTAL SALES AMOUNT IN THE ORDERS TABLE
SELECT SUM (SalesAmount * Quantity) AS TotalSalesAmount
FROM Orders;

SELECT * 
FROM Orders

--FIND THE SUM OF ALL TOTAL SALES AMOUNT IN THE ORDERS TABLE FOR ALL ONLINE SALES MADE IN THE 1ST OF OCTOBER,2023
SELECT SUM (SalesAmount * Quantity) AS TotalSalesAmount
FROM Orders
WHERE SalesChannel = 'Online'
AND SalesDate = '2023-01-10';

--RETURN THE AVG QUANTITY ORDERED IN THE ORDERS TABLE
SELECT AVG(Quantity) AS Avg_Quantity
FROM Orders;

SELECT *
FROM products;

--FIND THE MIN AND MAX PRICE OF PRODUCTS IN THE PRODUCTS TABLE
SELECT MAX(ProductPrice) AS Max_ProductPrice,
 MIN(ProductPrice) AS Min_ProductPrice
FROM Products;

--FIND THE EARLIST AND MOST RECENT SALES DATES IN THE ORDERS TABLE
SELECT MIN(SalesDate) AS Min_Date,
MAX(SalesDate) AS max_Date
FROM Orders

SELECT *
FROM products

-- COUNT THE NUMBER OF PRODUCTS IN EACH CATEGORY 
SELECT Category, COUNT(ProductID) AS Num_Products
FROM products
GROUP BY Category;

--COUNT THE NUMBER OF PRODUCTS AND THE AVERAGE PRODUCT PRICE IN EACH CATEGORY
SELECT Category, 
COUNT(ProductID) AS Num_Products,
AVG(ProductPrice) AS AVG_Price
FROM products
GROUP BY Category

--USE THE ROUND() FUNCTION WITH THE PRODUCTPRICE TO ROUNDUP NUMBERS TO 2 DECIMAL PLACES
SELECT Category, 
COUNT(ProductID) AS Num_Products,
AVG(ProductPrice), 2 AS AVG_Price
FROM products
GROUP BY Category

SELECT Category, 
Subcategory,
COUNT(ProductID) AS Num_Products,
AVG(ProductPrice), 2 AS AVG_Price
FROM products
GROUP BY Category, SubCategory

SELECT *
FROM Orders

--FIND THE TOTAL SALES AMOUNT PER PAYMENT MODE FOR ORDERS MADE IN STORE WITH STOREID 7
SELECT PaymentMode,
ROUND(SUM(Quantity*SalesAmount),2) AS TotalSalesAmount
FROM Orders
WHERE StoreID=7 
GROUP BY PaymentMode

-- SELECT STOREID AND SALESCHANNEL, THEN COUNT THE NUMBER OF ORDERS AND THE TOTALS ALES AMOUNT FOR ORDERS RECEIVED IN JUNE 2023
SELECT StoreID, SalesChannel, COUNT(OrderID) AS Sales_Amount
FROM Orders
WHERE SalesDate >= '2023-06-01'
AND SalesDate >= '2023-06-30'
GROUP BY StoreID, SalesChannel

SELECT SalesDate, StoreID, StoreID, SalesChannel, 
COUNT(OrderID) AS Order_Count, ROUND (SUM( Quantity * SalesAmount),2) AS TotalSalesAmount 
FROM Orders
WHERE SalesDate BETWEEN '2023-06-01' AND '2023-06-30'
AND StoreID IN (5,7)
GROUP BY SalesDate, StoreID, SalesChannel
ORDER BY SalesDate ASC, SalesAmount DESC;





