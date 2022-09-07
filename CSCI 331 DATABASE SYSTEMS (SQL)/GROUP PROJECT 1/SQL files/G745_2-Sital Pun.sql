--Find loginID, HireDate, PersonType, Name, lastname and email promotion of employee by joining the employee table with person table where businessEntity id is same
USE AdventureWorks2017;
SELECT e.LoginID
	,e.HireDate
	,p.PersonType
	,p.FirstName
	,p.LastName
	,p.EmailPromotion
FROM HumanResources.Employee AS e
INNER JOIN Person.Person AS P ON e.BusinessEntityID = p.BusinessEntityID;



--It joins two tables DimProduct and factResellerSales and filter out a spanish product name, 
--english product name, reseller key, carrier tracking number, product standard cost and order quantity, in which product key is same for both tables.
USE AdventureWorksDW2017;

SELECT d.SpanishProductName
	,d.EnglishProductName
	,F.ResellerKey
	,F.CarrierTrackingNumber
	,F.ProductStandardCost
	,F.OrderQuantity
FROM dbo.DimProduct AS d
JOIN dbo.FactResellerSales AS F ON d.ProductKey = F.ProductKey;




--Filters which customer ordered is from which city, company and their postal code on certain days
USE Northwinds2020TSQLV6;

SELECT O.OrderId
	,O.OrderDate
	,C.CustomerCity
	,C.CustomerCompanyName
	,C.CustomerPostalCode
FROM sales.[Order] AS O
JOIN sales.Customer AS C ON O.CustomerId = C.CustomerId
ORDER BY O.OrderDate;



--Filter the order received by Jai Lamble from Invoices table whose order ID is equal to order ID in orders table and display orderdate, 
--expected delivery date and confirmedreceived by.
USE WideWorldImporters;

SELECT O.OrderDate AS OrderYear
	,O.ExpectedDeliveryDate
	,I.ConfirmedReceivedBy
FROM sales.Orders AS O
JOIN sales.Invoices AS I ON O.OrderID = I.OrderID
WHERE I.ConfirmedReceivedBy = 'Jai Lamble';




USE WideWorldImportersDW;

SELECT O.[Customer Key]
	,year(o.[Order Date Key]) AS OrderYear
	,o.Quantity
	,c.Customer
	,c.Category
FROM Fact.[Order] AS o
JOIN Dimension.Customer AS c ON O.[Customer Key] = c.[Customer Key]
WHERE o.[Order Date Key] = '20130105';




USE WideWorldImportersDW;

SELECT O.[Customer Key]
	,year(o.[Order Date Key]) AS OrderYear
	,o.Quantity
	,o.[Unit Price]
	,c.[Postal Code]
FROM Fact.[Order] AS o
JOIN Dimension.Customer AS c ON O.[Customer Key] = c.[Customer Key]
WHERE o.[Order Date Key] = '20130105'
AND o.[Customer Key]>0;





--Group firstname, lastname, and number of region and display them by joining two tables
USE AdventureWorksDW2017;

SELECT CONCAT (
		E.FirstName
		,' '
		,E.LastName
		) AS FullName
	,count(T.SalesTerritoryRegion) AS NoOfregion
FROM dbo.DimEmployee AS E
JOIN dbo.DimSalesTerritory AS T ON E.SalesTerritoryKey = T.SalesTerritoryKey
GROUP BY CONCAT (
		E.FirstName
		,' '
		,E.LastName
		);





USE Northwinds2020TSQLV6;

SELECT E.EmployeeFirstName
	,E.EmployeeLastName
	,(
		SELECT count(O.CustomerId)
		FROM Sales.[Order] AS O
		) AS NoOfOrder
FROM HumanResources.Employee AS E
GROUP BY E.EmployeeFirstName
	,E.EmployeeLastName;


--Employee with their name and the total number of freight
USE Northwinds2020TSQLV6;

SELECT E.EmployeeId, E.EmployeeFirstName
	,E.EmployeeLastName
	,(
		SELECT count(O.Freight)
		FROM Sales.[Order] AS O
		) AS Freight
FROM HumanResources.Employee AS E
GROUP BY E.EmployeeId, E.EmployeeFirstName
	,E.EmployeeLastName;





--Using a subqueries, filters out the employee name and their average freight
USE Northwinds2020TSQLV6;

SELECT E.EmployeeFirstName
	,E.EmployeeLastName
	,(
		SELECT AVG(O.Freight)
		FROM Sales.[Order] AS O
		) AS AvgFreight
FROM HumanResources.Employee AS E
WHERE E.EmployeeId IN (
		SELECT O.EmployeeId
		FROM Sales.[Order] AS O
		)
GROUP BY E.EmployeeFirstName
	,E.EmployeeLastName;






--Uses two table and CTEs to get the customerID, and the quantity less than 5 and total transaction by 
--comibning customer transaction table and invoice table
USE WideWorldImporters;

WITH CustTrans
AS (
	SELECT CT.CustomerID
		,CT.TransactionAmount
		,I.OrderID
		,I.ConfirmedDeliveryTime
	FROM Sales.CustomerTransactions AS CT
	INNER JOIN Sales.Invoices AS I ON CT.CustomerID = I.CustomerID
	)
	,inv
AS (
	SELECT OL.OrderID
		,OL.PickedQuantity
		,OL.Quantity
	FROM Sales.OrderLines AS OL
	WHERE OL.Quantity < 5
	)
SELECT C.CustomerID
	,IV.Quantity
	,MAX(C.TransactionAmount) AS TotalTransaction
FROM CustTrans AS C
INNER JOIN inv AS IV ON IV.OrderID = C.OrderID
GROUP BY C.CustomerID
	,IV.Quantity;







USE WideWorldImporters;

CREATE VIEW [CustOrderTrans]
AS
SELECT CT.CustomerID
	,CT.TransactionAmount
	,I.OrderID
	,I.ConfirmedDeliveryTime
	,OL.PickedQuantity
	,OL.Quantity
FROM Sales.CustomerTransactions CT
INNER JOIN Sales.Invoices I ON CT.CustomerID = I.CustomerID
INNER JOIN Sales.OrderLines OL ON I.OrderID = OL.OrderID

SELECT C.CustomerID
	,C.OrderID
	,AVG(C.Quantity) AS Quantity
FROM CustOrderTrans AS C
WHERE C.Quantity = 2
GROUP BY C.CustomerID
	,C.OrderID;






--Display a number of outer received and ordered whose ordered maximum quantity, and if the order is finalized

USE WideWorldImportersDW;

SELECT year(P.[Date Key]) AS Year
	,P.[Ordered Quantity]
	,P.[Received Outers]
	,P.[Ordered Outers]
	,P.[Is Order Finalized]
FROM Fact.Purchase AS P
WHERE P.[Ordered Quantity] IN (
		SELECT MAX(O.Quantity)
		FROM Fact.[Order] AS O
		INNER JOIN Fact.Sale AS S ON O.Quantity = S.Quantity
		)
GROUP BY year(P.[Date Key])
	,P.[Ordered Quantity]
	,P.[Received Outers]
	,P.[Ordered Outers]
	,P.[Is Order Finalized]







--Joins table using CTEs and Inner join. It display the quantity, city key, delivery date key and maximum profit on ‘20140102’.
USE WideWorldImportersDW;

WITH OrderSale
AS (
	SELECT O.[Customer Key]
		,O.Quantity
		,O.[City Key]
		,O.[Picked Date Key]
		,O.[Tax Amount]
	FROM Fact.[Order] AS O
	)
SELECT OS.Quantity
	,OS.[Tax Amount]
	,S.[Delivery Date Key]
	,OS.[City Key]
	,MAX(S.Profit) AS Profit
FROM OrderSale AS OS
INNER JOIN Fact.Sale AS S ON OS.[Customer Key] = S.[Customer Key]
WHERE S.[Delivery Date Key] = '20140102'
	AND OS.Quantity = 2
GROUP BY OS.Quantity
	,OS.[Tax Amount]
	,S.[Delivery Date Key]
	,OS.[City Key];










--It filters out the employee history with employee name, birthdate, maximum vacation hour they took while working, marital status, startdate and endate.
USE AdventureWorks2017;

WITH EmplHistory
AS (
	SELECT E.BirthDate
		,E.JobTitle
		,E.VacationHours
		,UPPER(E.MaritalStatus) AS MaritalStatus
		,ED.StartDate
		,ED.EndDate
		,ED.DepartmentID
	FROM HumanResources.Employee AS E
	INNER JOIN HumanResources.EmployeeDepartmentHistory AS ED ON E.BusinessEntityID = ED.BusinessEntityID
	)
SELECT D.Name
	,FORMAT(H.BirthDate, 'd', 'en-US') as BirthDate
	,MAX(H.VacationHours) as MaxVacationHour
	,H.JobTitle
	,H.MaritalStatus
	,H.StartDate
	,H.EndDate
FROM EmplHistory AS H
INNER JOIN HumanResources.Department AS D ON H.DepartmentID = D.DepartmentID
WHERE H.EndDate IS NOT NULL
GROUP BY D.Name
	,FORMAT(H.BirthDate, 'd', 'en-US')
	,H.JobTitle
	,H.MaritalStatus
	,H.StartDate
	,H.EndDate





-- It shows the total number of orders shipped to France and group by customerId, Orderdate and shipToCountry.
USE Northwinds2020TSQLV6;

WITH OrderSale
AS (
	SELECT O.CustomerId
		,OD.Quantity
		,O.ShipToCountry
		,O.OrderDate
	FROM Sales.[Order] AS O
	INNER JOIN Sales.OrderDetail AS OD ON O.OrderId = OD.OrderId
	)
SELECT OS.CustomerId
	,OS.OrderDate
	,OS.ShipToCountry
	,SUM(OS.Quantity) AS TotalQuantity
FROM OrderSale AS OS
WHERE OS.ShipToCountry LIKE '%FRANCE'
GROUP BY OS.CustomerId
	,OS.OrderDate
	,OS.ShipToCountry;

