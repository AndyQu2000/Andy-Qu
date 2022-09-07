use AdventureWorks2017;
use AdventureWorksDW2017;
use Northwinds2020TSQLV6;
use WideWorldImporters;
use WideWorldImportersDW;

-- 1 - Simple
-- Select every order from every customer from AdventureWorks2017
USE AdventureWorks2017;
GO
SELECT *
FROM Sales.Customer C
INNER JOIN Sales.SalesOrderHeader AS O
	ON C.CustomerID = O.CustomerID;

-- 2 - Simple
-- Select First and Last name, along with city and income
-- for every customer in AdventureWorksDW2017
USE AdventureWorksDW2017;
GO
SELECT C.FirstName
	 , C.LastName
	 , G.City
	 , C.YearlyIncome
FROM DimCustomer			AS C
INNER JOIN DimGeography		AS G
	ON C.GeographyKey = G.GeographyKey

-- 3 - Simple
-- Select every order in 2016 and the employee who completed the order
-- from Northwinds2020TSQLV6
USE  Northwinds2020TSQLV6;
GO
SELECT CONCAT(E.EmployeeFirstName, ', ', E.EmployeeLastName) AS 'Employee Name'
	 , E.EmployeeTitle
	 , O.orderid
	 , O.OrderDate
FROM HumanResources.Employee AS E
INNER JOIN  Sales.[Order]     AS O
	ON E.EmployeeId = O.EmployeeId
WHERE YEAR(O.OrderDate) = 2016


-- 4 - Simple
-- SELECT every order and get total price
-- FROM WideWorldImporters
USE WideWorldImporters;
GO
SELECT O.OrderID
	 , OL.[Description]
	 , OL.UnitPrice
	 , OL.Quantity
	 , OL.UnitPrice * OL.Quantity AS 'Total Cost'
FROM Sales.Orders          AS O
INNER JOIN Sales.OrderLines AS OL
	ON O.OrderID = OL.OrderID


-- 5 - Simple
-- select employee key and order for Amy Trefl
-- with employee key 51
-- from WideWorldImportersDW
USE WideWorldImportersDW;
GO
SELECT E.[Employee Key]
	 , E.Employee
	 , E.[Is Salesperson]
	 , O.[Order Key]
	 , O.[Order Date Key]
FROM Fact.[Order]			 AS O
INNER JOIN Dimension.Employee AS E
	ON O.[Salesperson Key] = E.[Employee Key]
WHERE E.Employee = N'Amy Trefl'
	AND E.[Employee Key] = 51


-- 6 - Medium
-- Select all the types of credit cards used 
-- along with counts for all orders in 2013, 2014
-- FROM AdventureWorks2017
USE AdventureWorks2017;
GO
SELECT CC.CardType
	, COUNT(CC.CardType) AS 'Count'
FROM Sales.SalesOrderHeader	   AS O
INNER JOIN Sales.CreditCard	   AS CC
	ON O.CreditCardID = CC.CreditCardID
WHERE YEAR(OrderDate) IN (2013, 2014)
GROUP BY CC.CardType


-- 7 - Medium
-- Select the business id, account and credit rating along
-- with each person of contact + title that have credit rating 1
-- from AdventureWorks2017
USE AdventureWorks2017;
GO
SELECT V.BusinessEntityID
	 , V.AccountNumber
	 , V.[Name]			AS 'Business Name'
	 , V.CreditRating
	 , B.PersonID
	 , C.[Name]			AS 'Business Contact'
FROM Purchasing.Vendor						AS V
INNER JOIN Person.BusinessEntityContact		AS B
	ON V.BusinessEntityID= B.BusinessEntityID
INNER JOIN Person.ContactType				AS C
	ON B.ContactTypeID = C.ContactTypeID
WHERE V.BusinessEntityID IN (SELECT BusinessEntityID FROM Purchasing.ProductVendor
								WHERE CreditRating = 1
								GROUP BY BusinessEntityID)


-- 8 - Medium
-- select distict city and shipper companies
-- that have shipped to customers in country starting with letter U
-- who have orders placed by the owner of the company
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
SELECT O.ShipToCity
	 , S.ShipperCompanyName
FROM Sales.[Order]			AS O
INNER JOIN Sales.Shipper		AS S
	ON O.ShipperId = S.ShipperId
WHERE O.ShipToCountry LIKE N'U%'
	AND O.CustomerId IN  (SELECT CustomerId FROM Sales.Customer
							WHERE CustomerContactTitle = 'Owner')
GROUP BY O.ShipToCity, S.ShipperCompanyName 


-- 9 - Medium
-- select every orderdate for every order that was placed by employees
-- that have birthdays in the summer
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
SELECT O.OrderDate
	 , D.UnitPrice
	 , D.Quantity
FROM Sales.[Order]				AS O
INNER JOIN Sales.OrderDetail	AS D
	ON O.OrderId = D.OrderId
WHERE O.EmployeeId IN (SELECT EmployeeId
						FROM HumanResources.Employee
						WHERE MONTH(BirthDate) IN (6, 7, 8))
GROUP BY O.OrderDate, D.UnitPrice, D.Quantity


-- 10 - Medium
-- Select the customerids and no. of orders placed
-- for products that are now discontinued
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
SELECT O.CustomerId
	 , COUNT(O.CustomerID)			AS 'Count'
FROM Sales.[Order]					AS O
INNER JOIN  Sales.OrderDetail		AS D
	ON O.OrderId = D.OrderId
WHERE D.ProductID IN (SELECT ProductId FROM Production.Product WHERE Discontinued = 1)
GROUP BY O.CustomerId
ORDER BY O.CustomerId


-- 11 - Medium
-- Select the most recent order for every company
-- order by most recent, show the order date with US standard
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
SELECT C.CustomerCompanyName			   AS 'Company'
	 , O1.OrderId
	 , CONVERT(VARCHAR, O1.OrderDate, 101) AS 'Order Date'
FROM Sales.[Order]						AS O1
INNER JOIN Sales.Customer				AS C
	ON O1.CustomerId = C.CustomerId
WHERE O1.OrderDate = (SELECT MAX(O2.OrderDate) 
					FROM Sales.[Order] O2
					WHERE O1.CustomerId = O2.CustomerId)
ORDER BY O1.OrderDate DESC


-- 12 - Medium
-- select every order and its category from a customer in the USA
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
SELECT O.OrderId
	, CONCAT ('$', D.UnitPrice) AS 'Unit Price'
	, P.ProductName
	, C.CategoryName
FROM Sales.[Order]				AS O
INNER JOIN Sales.OrderDetail    AS D
	ON O.Orderid = D.OrderId
INNER JOIN Production.Product   AS P
	ON D.ProductId = P.ProductId
INNER JOIN Production.Category  AS C
	ON P.CategoryId = C.CategoryId
	WHERE O.CustomerId IN (SELECT CustomerId FROM Sales.Customer WHERE CustomerCountry = N'USA')
GROUP BY O.OrderId, D.UnitPrice, P.ProductName, C.CategoryName


-- 13 - Medium
-- select customerid and customer country at every order instance
-- where the customer and employee were from different countries
-- group by customer id
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
SELECT C.CustomerId
	 , C.CustomerContactName
	 , C.CustomerCountry
	 , E.EmployeeCountry
FROM Sales.Customer					AS C
INNER JOIN Sales.[Order]			AS O
	ON C.CustomerId = O.CustomerId
INNER JOIN HumanResources.Employee	AS E
	ON O.EmployeeId = E.EmployeeId
WHERE C.CustomerCountry <> E.EmployeeCountry
GROUP BY C.Customerid, C.CustomerContactName, C.CustomerCountry, E.EmployeeCountry



-- 14 - Complex
-- select the orders completed by the youngest employee
-- along with total order amount using custom scalar function
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
CREATE FUNCTION dbo.TotalAmount(
	@quantity INT,
	@price MONEY,
	@discount NUMERIC(4,3)
)
RETURNS DEC(10,2)
AS
BEGIN
	RETURN @quantity * @price * (1 - @discount)
END;

USE Northwinds2020TSQLV6;
GO
SELECT O.OrderId
	 , O.OrderDate
	 , D.Quantity
	 , D.UnitPrice
	 , D.DiscountPercentage
	 , CONCAT(E.EmployeeFirstName, ' ', E.EmployeeLastName) AS 'Employee'
	 , dbo.TotalAmount(D.Quantity, D.UnitPrice, D.DiscountPercentage) AS 'Total'
FROM Sales.[Order]					AS O
INNER JOIN Sales.OrderDetail		AS D
	ON O.OrderId = D.OrderId
INNER JOIN  HumanResources.Employee AS E
	ON O.EmployeeId = E.EmployeeId
WHERE E.EmployeeId IN (SELECT Employeeid 
						FROM HumanResources.Employee
						WHERE BirthDate IN (SELECT MAX(BirthDate) FROM HumanResources.Employee))


-- 15 - Complex
-- get the orderdates where more than 10 items ordered and completed by 
-- the most recently hired employee, show age in years and days
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6
GO
CREATE FUNCTION dbo.AgeToDays (
	@age INT
)
RETURNS INT
AS
BEGIN
	RETURN @age * 365
END;

USE Northwinds2020TSQLV6;
GO
SELECT DISTINCT O.OrderDate
	 , CONCAT(E.EmployeeFirstName, ' ', E.EmployeeLastName)  AS 'Employee'
	 , DATEDIFF(YEAR, E.birthDate, GETDATE())				 AS 'Age (Years)'
	 , dbo.AgeToDays(DATEDIFF(YEAR, E.birthDate, GETDATE())) AS 'Age (days)'
FROM Sales.[Order]					AS O
INNER JOIN Sales.OrderDetail		AS D
	ON O.OrderId = D.OrderId
INNER JOIN  HumanResources.Employee AS E
	ON O.EmployeeId = E.EmployeeId
WHERE E.EmployeeId IN (SELECT Employeeid 
						FROM HumanResources.Employee
						WHERE HireDate IN (SELECT MAX(HireDate) FROM HumanResources.Employee))
AND D.Quantity > 10


-- 16 - Complex
--  select customer and calculate order id
--	where the shipper's phone number ends in '6'
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
CREATE FUNCTION dbo.TotalAmount(
	@quantity INT,
	@price MONEY,
	@discount NUMERIC(4,3)
)
RETURNS DEC(10,2)
AS
BEGIN
	RETURN @quantity * @price * (1 - @discount)
END;

USE Northwinds2020TSQLV6;
GO
SELECT C.CustomerID
	 , D.Quantity
	 , D.UnitPrice
	 , D.DiscountPercentage
	 , SUM(dbo.TotalAmount(D.Quantity, D.UnitPrice, D.DiscountPercentage)) AS TotalCost
FROM Sales.[Order]					AS O
INNER JOIN Sales.Customer			AS C
	ON O.CustomerId = C.CustomerId
INNER JOIN Sales.OrderDetail		AS D
	ON O.OrderId = D.OrderId
WHERE O.ShipperId = (SELECT ShipperId FROM Sales.Shipper WHERE PhoneNumber LIKE N'%6')
GROUP BY C.CustomerID, O.OrderId, O.orderdate, D.Quantity, D.UnitPrice, D.DiscountPercentage



-- 17 - Complex
--  select customer orders where they have ordered a 'joke item
-- and paid using 'EFT', using custom function
-- from WideWorldImportersDW;
USE WideWorldImportersDW;
GO
CREATE FUNCTION dbo.isJokeItem(
	@stockItem INT
)
RETURNS BIT
AS
BEGIN
	IF @stockItem IN (SELECT [Stock Item Key] FROM Dimension.[Stock Item] WHERE [Stock Item] LIKE '%joke%')
		RETURN 1
	RETURN 0
END;

USE WideWorldImportersDW;
GO
SELECT O.[Customer Key], SI.[Stock Item], C.Category
FROM Fact.[Order]						AS O
INNER JOIN Dimension.[Stock Item]		AS SI
	ON O.[Stock Item Key] = SI.[Stock Item Key]
INNER JOIN Dimension.Customer			AS C
	ON O.[Customer Key] = C.[Customer Key]
INNER JOIN Fact.[Transaction]			AS T
	ON O.[Order Key] = T.[Transaction Key]
WHERE T.[Payment Method Key] IN (SELECT [Payment Method Key] 
									FROM Dimension.[Payment Method]
									WHERE [Payment Method] = 'EFT')
	AND dbo.isJokeItem(SI.[Stock Item Key]) = 1
GROUP BY O.[Customer Key], SI.[Stock Item], C.Category
ORDER BY [Customer Key]



-- 18 - Complex

-- from AdventureWorks2017
-- Select the counts for orders and
-- credit card types made by persontype SC 
-- use custom function
USE adventureWorks2017;
GO
CREATE FUNCTION dbo.isSC(
	@type nchar(2)
)
RETURNS BIT
AS
BEGIN
	IF @type = N'SC'
		RETURN 1
	RETURN 0
END;

USE AdventureWorks2017;
GO
SELECT P.PersonType
	 , CC.CardType
	 , COUNT(CC.Cardtype) AS 'Count'
FROM Sales.SalesOrderHeader			AS O
INNER JOIN Sales.Customer			AS C
	ON O.CustomerID = C.CustomerID
INNER JOIN Person.Person			AS P
	ON C.PersonID = P.BusinessEntityID
INNER JOIN Sales.CreditCard	AS CC
	ON O.CreditCardID = CC.CreditCardID
	WHERE dbo.isSC(P.PersonType) = 1 
GROUP BY P.PersonType, CardType



-- 19 - Complex
-- select every order and its category from a customer in the USA
-- show product description using custom function
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
ALTER FUNCTION [dbo].[getProductDescription](
	@type INT
)
RETURNS NVARCHAR(100)
AS
BEGIN
	DECLARE @desc VARCHAR(100)
	SET @desc = (SELECT [Description] FROM Production.Category WHERE CategoryId = @type)
	RETURN @desc
END;

USE Northwinds2020TSQLV6;
GO
SELECT O.OrderId
	, CONCAT ('$', D.UnitPrice) AS 'Unit Price'
	, P.ProductName
	, C.CategoryName
	, dbo.getProductDescription(P.CategoryId) AS 'Description'
FROM Sales.[Order]				AS O
INNER JOIN Sales.OrderDetail    AS D
	ON O.Orderid = D.OrderId
INNER JOIN Production.Product   AS P
	ON D.ProductId = P.ProductId
INNER JOIN Production.Category  AS C
	ON P.CategoryId = C.CategoryId
	WHERE O.CustomerId IN (SELECT CustomerId FROM Sales.Customer WHERE CustomerCountry = N'USA')
GROUP BY O.OrderId, D.UnitPrice, P.ProductName, C.CategoryName, dbo.getProductDescription(P.CategoryId)



-- 20 - Complex
-- Select the most recent order for every company if it was a winter month
-- order by most recent,
-- show the order date with US standard
-- from Northwinds2020TSQLV6;
USE Northwinds2020TSQLV6;
GO
ALTER FUNCTION dbo.isWinterMonth(
	@orderdate DATE
)
RETURNS BIT
AS
BEGIN
	IF MONTH(@orderdate) IN (1, 2, 12)
		RETURN 1
	RETURN 0
END;

USE Northwinds2020TSQLV6;
GO
SELECT C.CustomerCompanyName			   AS 'Company'
	 , O1.OrderId
	 , CONVERT(VARCHAR, O1.OrderDate, 101) AS 'Order Date'
FROM Sales.[Order]						AS O1
INNER JOIN Sales.Customer				AS C
	ON O1.CustomerId = C.CustomerId
WHERE O1.OrderDate = (SELECT MAX(O2.OrderDate) 
					FROM Sales.[Order] O2
					WHERE O1.CustomerId = O2.CustomerId)
	AND dbo.isWinterMonth(O1.OrderDate) = 1
ORDER BY O1.OrderDate DESC
