--ADD CUSTOMERS NAME TO THE ORDERS TABLE

SELECT Orders.OrderID,
Orders.SalesDate,
Orders.CustomerID,
[customers (1)].FirstName,
[customers (1)].LastName,
Orders.Quantity,
Orders.SalesAmount
FROM Orders
INNER JOIN [customers (1)]
ON Orders.CustomerID=[customers (1)].Customer_ID

--SELECT CUSTOMER_NAME, QUANTITY AND SALESDATE. ORDER RESULTS BY SALESDATE. RETURN ALL RECORDS FROM CUSTOMERTABLE 
--AND MATCHING RECORDS FROM ORDERS TABLE
SELECT O.SalesDate, 
C.FirstName, C.FirstName,
O.Quantity
FROM [customers (1)] AS C
LEFT JOIN Orders AS O
ON O.CustomerID=C.Customer_ID
ORDER BY O.SalesDate

--SELECT PRODUCTNAME, PRODUCT CATEGORY, AND SUBCATEGORY FROM PRODUCT TABLE
-- SELECT QUANTITY ORDER FROM THE ORDERS TABLE
--RETRIEVE ALL ORDERS MADE FOR STOREID ON JAN1,2023
SELECT P.Category, 
P.SubCategory,
P.ProductName,
O.SalesDate,
O.Quantity
fROM products AS P
INNER JOIN Orders AS O
ON P.ProductID = O.ProductID
WHERE StoreID = 1
AND SalesDate = '2023-01-01'

--SELECT ALL PRODUCT CATEGORY, AND SUBCATEGORY FROM THE PRODUCTS TABLE
--GROUP PRODUCTS BY SUM OF QUANTITY ORDERED
-- RETRIEVE ALL ORDERS FOR STORE ID ON JANUARY 10TH 2023
SELECT P.Category, P.SubCategory, 
SUM(O.Quantity) AS Quantity_Ordered
FROM products AS P
LEFT JOIN Orders AS O 
ON P.ProductID = O.ProductID
WHERE O.StoreID = 1 
AND O.SalesDate ='2023-10-01'
GROUP BY P.Category, P.SubCategory

SELECT P.Category, 
       P.SubCategory, 
       SUM(O.Quantity) AS Quantity_Ordered
FROM products AS P
       LEFT JOIN Orders AS O 
ON P.ProductID = O.ProductID
       AND O.StoreID = 1 
       AND O.SalesDate ='2023-10-01'
GROUP BY P.Category, P.SubCategory


SELECT P.Category, S.StoreID, S.Country,
SUM(O.Quantity * P.ProductPrice) AS Sales_Amount
FROM Orders AS O
INNER JOIN products as P 
ON O.ProductID = P.ProductID
INNER JOIN [stores (1)] AS S
ON O.StoreID = S.StoreID
GROUP BY P.Category, S.StoreID,S.Country

SELECT *
FROM Orders o
LEFT JOIN products p
ON o.ProductID = p.ProductID
WHERE CustomerID = 'AC-660'
Order By SalesDate

