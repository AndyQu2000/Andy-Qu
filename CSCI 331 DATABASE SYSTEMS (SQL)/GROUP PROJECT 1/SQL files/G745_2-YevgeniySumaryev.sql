--Yevgeniy Sumaryev

-- The proposition is to join the customer and
-- the order table to match customers with
-- their orders, and then join the result of the first join
-- with the orderdetail table to match orders with their order lines
--------------------------------------------------------------------- 
USE Northwinds2020TSQLV6;

SELECT
  C.CustomerId, C.CustomerCompanyName, O.orderid,
  OD.productid, OD.Quantity
FROM Sales.Customer AS C
  INNER JOIN Sales.[Order] AS O
    ON C.CustomerId = O.CustomerId
  INNER JOIN Sales.OrderDetail AS OD
    ON O.orderid = OD.orderid;

---------------------------------------------------------------------
-- The proposition is to find all orders for a customer whose id is 37
-- show for each sale the order number, and order year 
-- and order by employee ID and order date 
---------------------------------------------------------------------
SELECT [EmployeeId], YEAR(orderdate) AS orderyear
  FROM [Sales].[Order]
  WHERE [CustomerId] = 37
ORDER BY [EmployeeId], orderyear;

USE AdventureWorks2017;
--Using sales.salesperson table display
--Salespersons who are also employees
SELECT
  S.BusinessEntityID, s.TerritoryID
FROM Sales.SalesPerson AS S
  INNER JOIN HumanResources.Employee AS E
    ON S.BusinessEntityID = E.BusinessEntityID;

--From Customers table inner join orders table where customer ids match
-- and join it with Orderlines table where orderids match
USE WideWorldImporters;
SELECT
  C.CustomerId, C.CustomerName, O.orderid,
  OD.PackageTypeID, OD.Quantity
FROM Sales.Customers AS C
  INNER JOIN Sales.Orders AS O
    ON C.CustomerId = O.CustomerId
  INNER JOIN Sales.OrderLines AS OD
    ON O.orderid = OD.orderid;

-- A query that returns all orders placed
-- by the customer(s) who placed the highest number of orders
-- there may be more than one customer with the same number of orders
-- Tables involved: WorldWideImporters, Orders table
SELECT orderid, orderdate, ContactPersonID, CustomerId
FROM Sales.Orders
WHERE CustomerId IN 
	(SELECT TOP (1) WITH TIES O.CustomerId
	FROM Sales.Orders AS O
	GROUP BY O.CustomerId
	ORDER BY COUNT(*) DESC);

-- A query that returns Customers
-- who placed orders on or after May 31st, 2016
-- Tables involved: WorldWideImporters, Invoices and Orders tables
SELECT OrderID, CustomerID
FROM Sales.Invoices
WHERE CustomerID IN
  (SELECT O.CustomerID
   FROM Sales.Orders AS O
   WHERE  O.OrderDate >= '20160531')
ORDER BY OrderID;

USE Northwinds2020TSQLV6;
-- Write a join query between the derived table and the Sales.Order
-- table to return the Sales.Order with the maximum order date for 
-- each employee
-- Tables involved: Sales.Order
SELECT O.EmployeeId, O.OrderDate, O.OrderId, O.CustomerId
FROM Sales.[Order] AS O
 INNER JOIN (SELECT EmployeeId, MAX(OrderDate) AS maxorderdate
			FROM Sales.[Order]
			GROUP BY EmployeeId) AS  D
	ON   O.EmployeeId = D.EmployeeId
	AND O.OrderDate = D.maxorderdate;

USE Northwinds2020TSQLV6;
-- A query that returns the minimum order date for each employee
-- Write a join query between the derived table and the Sales.Order
-- table to return the Sales.Order with the minimum order date for 
-- each employee
-- Tables involved: Northwinds2020TSQLV6, Sales.Order
SELECT O.EmployeeId, O.OrderDate, O.OrderId, O.CustomerId
FROM Sales.[Order] AS O
 INNER JOIN (SELECT EmployeeId, MIN(OrderDate) AS minorderdate
			FROM Sales.[Order]
			GROUP BY EmployeeId) AS  D
	ON   O.EmployeeId = D.EmployeeId
	AND O.OrderDate = D.minorderdate;

--In the following query the propositon is to
--find employees from the Humanresources.Employee table
--who have the same birth year and whose employer ids
--are not equal
USE Northwinds2020TSQLV6;
SELECT Emp1.EmployeeFirstName, Emp1.EmployeeLastName, Emp1.BirthDate
FROM
(
    SELECT e.EmployeeId,
           e.EmployeeLastName,
           e.EmployeeFirstName,
           e.BirthDate,
           YEAR(e.BirthDate) AS YY
    FROM HumanResources.Employee AS e
) AS Emp1
    INNER JOIN
    (
        SELECT e.EmployeeId,
               e.EmployeeLastName,
               e.EmployeeFirstName,
               e.BirthDate,
               YEAR(e.BirthDate) AS YY
        FROM HumanResources.Employee AS e
    ) AS Emp2
        ON Emp2.YY = Emp1.YY
           AND Emp1.EmployeeId <> Emp2.EmployeeId;

-- a view that returns the total qty
-- for each employee and year
-- Tables involved: Sales.Order and Sales.OrderDetails
USE Northwinds2020TSQLV6;

DROP VIEW IF EXISTS Sales.VEmpOrders;
GO
CREATE VIEW Sales.VEmpOrders
AS
SELECT EmployeeId,
       YEAR(OrderDate) AS orderyear,
       SUM(Quantity) AS quantity
FROM Sales.[Order] AS O
    INNER JOIN Sales.OrderDetail AS OD
        ON O.OrderId = OD.OrderId
GROUP BY EmployeeId,
         YEAR(OrderDate);
GO

-- A query against Sales.VEmpOrders
-- that returns the running qty for each employee and year
-- Tables involved: Northwinds2020TSQLV6 database, Sales.VEmpOrders view
SELECT V1.EmployeeId, V1.orderyear, V1.Quantity,
 (SELECT SUM(Quantity)
  FROM Sales.VEmpOrders AS V2
  WHERE V2.EmployeeId = V1.EmployeeId
  AND V2.orderyear <= V1.orderyear) AS qty
FROM Sales.VEmpOrders AS V1
ORDER BY V1.EmployeeId, V1.orderyear;


-- function that gets top n suppliers from Italy
USE Northwinds2020TSQLV6;
GO
SELECT *
FROM Production.Supplier
WHERE SupplierCountry = N'Italy';
DROP FUNCTION IF EXISTS Production.TopSuppliers;
GO
CREATE FUNCTION Production.TopSuppliers
(
    @country AS NVARCHAR(25),
    @n AS INT
)
RETURNS TABLE
AS
RETURN SELECT TOP (@n)
              o.OrderId,
              o.CustomerId,
              o.EmployeeId,
              o.OrderDate,
              o.ShipToDate,
              o.ShipToName,
              o.ShipToCity,
              o.ShipToCountry,
              p.SupplierId,
              p.SupplierCompanyName,
              p.SupplierCity,
              p.SupplierCountry
       FROM Sales.[Order] AS o
           INNER JOIN Production.Supplier AS p
               ON o.ShipperId = p.SupplierId
       WHERE o.ShipToCountry = @country;

GO
-- Function to test query
SELECT *
FROM Production.TopSuppliers(N'Italy', 2) AS S
ORDER BY SupplierId DESC;



--a query to get all the orders from Sales.Order table
--where quantity is more than 50 
--by inner join with customer table
--and then inner join with order detail
USE Northwinds2020TSQLV6;
GO
SELECT c.CustomerCompanyName,
       O.OrderId,
       od.Quantity
FROM Sales.[Order] AS O
    INNER JOIN Sales.Customer AS c
        ON c.CustomerId = O.CustomerId
    INNER JOIN Sales.OrderDetail AS od
        ON od.OrderId = O.OrderId
WHERE od.Quantity IN
      (
          SELECT od.Quantity FROM Sales.OrderDetail AS od WHERE od.Quantity > 50
      )
ORDER BY od.Quantity;

-- An inline function that accepts as inputs
-- a supplier id (@supid AS INT), 
-- and a requested number of products (@n AS INT)
-- The function returns @n products with the highest unit prices
-- that are supplied by the given supplier id
-- Tables involved: Production.Products
USE Northwinds2020TSQLV6;
DROP FUNCTION IF EXISTS Production.TopProducts;
GO
CREATE FUNCTION Production.TopProducts
  (@supid AS INT, @n AS INT)
  RETURNS TABLE
AS
RETURN
 SELECT TOP (@n) ProductId,  ProductName,  UnitPrice
 FROM Production.Product
 WHERE SupplierId = @supid
 ORDER BY UnitPrice DESC;
GO

-- Using the CROSS APPLY operator
-- and the function, return
-- the five most expensive products
SELECT S.SupplierId, S.SupplierCompanyName,P.ProductId, P.ProductName, P.UnitPrice
FROM Production.Supplier AS S
 CROSS APPLY Production.TopProducts(S.SupplierId, 5) AS P;

 -- An inline function that accepts as inputs
-- an employee id (@supid AS INT), 
-- and a requested number of employees (@n AS INT)
-- The function returns top @n employees 
-- that are supplied by the given employee id
-- Tables involved: HumanResources.Employee
USE Northwinds2020TSQLV6;
DROP FUNCTION IF EXISTS HumanResources.TopEmployees;
GO
CREATE FUNCTION HumanResources.TopEmployees
  (@empid AS INT, @n AS INT)
  RETURNS TABLE
AS
RETURN
 SELECT TOP (@n) EmployeeId, EmployeeFirstName, EmployeeLastName
 FROM HumanResources.Employee
 WHERE EmployeeId = @empid
 ORDER BY BirthDate DESC;
Go

SELECT S.CustomerId, E.EmployeeId, E.EmployeeFirstName, E.EmployeeLastName
FROM Sales.[Order] AS S
 CROSS APPLY HumanResources.TopEmployees(S.EmployeeId, 3) AS E;

 SELECT c.CustomerCompanyName,
       E.EmployeeLastName,
       [Utils].[FindCUNYFiscalYearQuarters](o.OrderDate) AS QUARTERS,
       COUNT(o.OrderDate) AS NUMORDERS,
       SUM(o.Freight) AS TOTALFREIGHT,
       SUM(od.UnitPrice * od.Quantity) AS RETAILCOSTTOTAL
FROM Sales.[Order] AS o
    INNER JOIN Sales.OrderDetail AS od
        ON o.OrderId = od.OrderId
    INNER JOIN Sales.Customer AS c
        ON o.CustomerId = c.CustomerId
    INNER JOIN HumanResources.Employee AS E
        ON E.EmployeeId = o.EmployeeId
WHERE o.EmployeeId =
(
    SELECT e.EmployeeId
    FROM HumanResources.Employee AS e
    WHERE e.EmployeeLastName LIKE N'S%'
)
GROUP BY c.CustomerCompanyName,
         E.EmployeeLastName,
         [Utils].[FindCUNYFiscalYearQuarters](o.OrderDate);

--Using variable customerId, find the maximum orderid
--for the customer with order id 25
DECLARE @CustomerId INT = 25;

SELECT OuterQuery.CustomerId,
       OuterQuery.OrderId,
       OuterQuery.OrderDate,
       OuterQuery.EmployeeId
FROM Sales.[Order] AS OuterQuery
WHERE OuterQuery.OrderId =
(
    SELECT MAX(InnerQuery.OrderId)
    FROM Sales.[Order] AS InnerQuery
    WHERE InnerQuery.CustomerId = OuterQuery.CustomerId
          AND InnerQuery.CustomerId > @CustomerId
);

--using same variable as above, customerId as 25
--find all customers where customerid is higher than 25
SELECT o.CustomerId,
       o.OrderId,
       o.OrderDate,
       o.EmployeeId
FROM Sales.[Order] AS o
WHERE o.CustomerId > @CustomerId
ORDER BY o.OrderDate DESC;

---------------------------------------------------------------------
-- The proposition is to join the customer and
-- the order table to match customers with
-- their orders, and then join the result of the first join
-- with the orderdetail table to match orders with their order lines
--------------------------------------------------------------------- 
USE Northwinds2020TSQLV6;

SELECT
  C.CustomerId, C.CustomerCompanyName, O.orderid,
  OD.productid, OD.Quantity
FROM Sales.Customer AS C
  INNER JOIN Sales.[Order] AS O
    ON C.CustomerId = O.CustomerId
  INNER JOIN Sales.OrderDetail AS OD
    ON O.orderid = OD.orderid;

--find customers from customer table
--who made orders and inner join it 
--with employee table
SELECT
  C.CustomerId, C.CustomerCompanyName, O.orderid,
  E.EmployeeFirstName, E.EmployeeLastName
FROM Sales.Customer AS C
  INNER JOIN Sales.[Order] AS O
    ON C.CustomerId = O.CustomerId
  INNER JOIN HumanResources.Employee AS E
    ON O.EmployeeId = E.EmployeeId;

USE AdventureWorksDW2017;
--get all the customers and their regions
--using Inner Join
SELECT C.CustomerKey,
       C.GeographyKey,
       C.FirstName,
       C.LastName,
       G.City
FROM dbo.DimCustomer AS C
    INNER JOIN dbo.DimGeography AS G
        ON G.GeographyKey = C.GeographyKey
ORDER BY G.City DESC;
--WHERE G.GeographyKey =
--(
--    SELECT TOP (1) e.CustomerKey
--    FROM dbo.DimCustomer AS e
--    WHERE e.FirstName LIKE N'A%'
--	ORDER BY (e.CustomerKey)
--);