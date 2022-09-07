--1) FIVE SIMPLE QUEREIES 

--1 Output the job title of all female employee's
USE AdventureWorks2017;
SELECT E.JobTitle, E.Gender
FROM HumanResources.Employee as E
WHERE Gender = 'F';

--2
--Output the names of all employees who work as Marketing Specialist
USE AdventureWorks2017;
SELECT P.FirstName, P.MiddleName, P.LastName
FROM Person.Person AS P
WHERE P.BusinessEntityID IN
(
SELECT E.BusinessEntityID
FROM HumanResources.Employee AS E
WHERE JobTitle = 'Marketing Specialist'
);
--3
--OUTPUT Find how many develop joker mug SalespersonId=2 has sold from the date of january to february of the year
--2014 with the OrderId in ASC order
USE WideWorldImporters;
SELECT O.OrderID, O.Description, ROW_NUMBER() OVER(ORDER BY O.OrderId ASC) AS Row#
FROM Sales.[OrderLines] AS O
WHERE O.StockItemID =50 AND O.OrderID IN 
(SELECT O2.OrderId
FROM Sales.[Orders] AS O2
WHERE O2.SalespersonPersonID = 2 AND O2.OrderDate >='20140101' AND O2.OrderDate <'20140301'
)
--4

--Output customer names whos country is France
USE Northwinds2020TSQLV6;
SELECT CustomerContactName
FROM Sales.Customer
WHERE CustomerCountry = 'France';

--5

--print scheduling assistant who are married
USE AdventureWorksDW2017;
SELECT FirstName,LastName,MaritalStatus
FROM DimEmployee
WHERE Title = 'Scheduling Assistant' AND MaritalStatus = 'M';


--This table will show the employee who has served customer 20 more than once
USE Northwinds2020TSQLV6
SELECT EmployeeId, YEAR(OrderDate) AS orderyear, COUNT(*) AS numorders
FROM Sales.[Order]
WHERE CustomerId = 20
GROUP BY EmployeeId, YEAR(orderdate)
HAVING COUNT(*) > 1
ORDER BY EmployeeId, orderyear; 



--OUTPUT all customers Name, city, and postal code whose country is Australia
USE AdventureWorksDW2017;
SELECT G.EnglishCountryRegionName,G.City, G.PostalCode, C.FirstName, C.LastName
FROM dbo.DimGeography AS G
INNER JOIN DimCustomer AS C ON G.GeographyKey = C.GeographyKey
WHERE G.GeographyKey >= 1 AND G.GeographyKey <= 40;



--Rcent Orders in ASCENDING order 
USE Northwinds2020TSQLV6; 
GO 
SELECT C.CustomerContactName,
C.CustomerCompanyName    AS 'CompanyName'      
	,O.OrderId      
	,CONVERT(VARCHAR, O.OrderDate, 101) AS 'RecentOrderDate' FROM Sales.[Order]                        
AS O INNER JOIN Sales.Customer                
AS C     ON O.CustomerId = C.CustomerId 
WHERE O.OrderDate = (SELECT MAX(O2.OrderDate)                      
FROM Sales.[Order] O2                    
WHERE O.CustomerId = O2.CustomerId) ORDER BY O.OrderDate ASC


-- Yearly Count of Customers handled by Employee 1
DECLARE @employeeId AS INT = 1;
SELECT yearly, COUNT(DISTINCT CustomerId) AS numcusts
FROM (SELECT YEAR(orderdate) AS yearly, CustomerId
      FROM Sales.[Order]
      WHERE EmployeeId = @employeeId) AS E
GROUP BY yearly;
GO


----multiple queries to determine the years that more than 10 customers were attended to. 2nd query
--used to specify the distinct customer id's from query above.
USE Northwinds2020TSQLV6;
WITH C1 AS
(
  SELECT YEAR(orderdate) AS orderyear, CustomerId
  FROM Sales.[Order]
),
C2 AS
(
  SELECT orderyear, COUNT(DISTINCT CustomerId) AS numcusts
  FROM C1
  GROUP BY orderyear
)
SELECT orderyear, numcusts
FROM C2
WHERE numcusts > 10;


USE WideWorldImporters
SELECT DISTINCT C.CustomerID, C.CustomerName
FROM Sales.Customers AS C
	INNER JOIN Sales.Orders AS O 
	ON C.CustomerID = O.CustomerID
WHERE O.PickedByPersonID = 3
ORDER BY CustomerID;


--SELECTS all customer Ids who have a outstanding balance of 10000 and who have no credit limit
USE WideWorldImporters
SELECT T.CustomerID, 
	C.CustomerName, 
	T.OutstandingBalance
FROM Sales.CustomerTransactions AS T
	INNER JOIN Sales.Customers AS C ON T.CustomerID = C.CustomerID
WHERE T.OutstandingBalance > 10000 AND C.CustomerId IN
	(SELECT CustomerID
	FROM Sales.Customers AS C
	WHERE C.CreditLimit is NULL
	)
GROUP BY T.CustomerId,
	C.CustomerName,
	T.OutstandingBalance;
		
--8

--Number of Different orders a customers city was Barcelona.
--Maybe some issue with format
USE Northwinds2020TSQLV6;
SELECT C.CustomerId, count(Distinct O.OrderId) AS DiffOrdes
FROM Sales.Customer AS C
	INNER JOIN Sales.[Order] AS O
		ON C.CustomerId = O.CustomerId
	INNER JOIN Sales.OrderDetail AS OD 
		ON OD.OrderId = O.OrderId
WHERE C.CustomerCity = 'Barcelona'
GROUP BY C.CustomerID;



--output all the salespersonIds who dealt customer 1 WHO have also had dealt with purchases with the Tax
--amount being over 100
USE WideWorldImporters;
DECLARE @cust AS INT = 
	(
		SELECT DISTINCT O.CustomerID
		FROM Sales.Orders AS O
		WHERE O.CustomerID = 1
	);
SELECT O.CustomerID, O.SalespersonPersonID
FROM Sales.Orders AS O
	JOIN Sales.CustomerTransactions as CT
		ON O.CustomerID = CT.CustomerID
	Join  Sales.InvoiceLines AS I
		ON I.TaxAmount = CT.TaxAmount
WHERE O.CustomerID = @cust AND CT.TaxAmount > 100
GROUP BY O.CustomerID, O.SalespersonPersonID;

--List all orders ids, date, customerId, and ship to country that had a discount percentage offered.
USE Northwinds2020TSQLV6;

WITH Sales
AS  (
	SELECT O.CustomerId, OD.OrderId, O.OrderDate, O.ShipToCountry, OD.DiscountPercentage
	FROM Sales.[Order] AS O
		INNER JOIN Sales.OrderDetail AS OD ON O.OrderId = OD.OrderId
)
SELECT S.OrderId, S.OrderDate,S.CustomerId, S.ShipToCountry, S.DiscountPercentage
FROM Sales AS S
WHERE S.DiscountPercentage > 0
GROUP BY S.OrderId, S.CustomerId, S.OrderDate, S.ShipToCountry, S.DiscountPercentage;

--WANTED TO OUTPUT the id numbers of employees who been at their job for more than 10 years and who have a
--pay rate greater than 75
USE AdventureWorks2017;
WITH EmlpoyeeInfo 
AS (
	SELECT E.JobTitle, E.VacationHours,E.HireDate,PH.BusinessEntityID, PH.Rate,
	E.NationalIDNumber,
	DATEDIFF(YEAR,E.HireDate, GETDATE()) AS 'YEARS'
	FROM HumanResources.Employee AS E
		INNER JOIN HumanResources.EmployeePayHistory AS PH ON E.BusinessEntityID = PH.BusinessEntityID
	)
SELECT EI.NationalIDNumber, EI.HireDate, EI.Rate, EI.VacationHours
FROM EmlpoyeeInfo AS EI
WHERE EI.Rate > 75 AND YEARS > 10
ORDER BY EI.NationalIDNumber,
	EI.HireDate,
	EI.Rate,
	EI.VacationHours,
	EI.YEARS;


