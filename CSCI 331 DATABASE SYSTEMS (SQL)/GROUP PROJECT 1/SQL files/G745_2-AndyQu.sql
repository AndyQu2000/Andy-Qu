use [AdventureWorks2017] EXEC sp_changedbowner 'sa'
USE WideWorldImportersDW
Go
/* get the week number for all orders that happened before april 2013*/
SELECT A.[Order Key]
	,A.[Order Date Key]
	,B.[ISO Week Number] AS WeekNumber
FROM [Fact].[Order] AS A
INNER JOIN [Dimension].[Date] AS B ON A.[Order Date Key] = b.DATE
WHERE A.[Order Date Key] < '20130401'
/*get the week number for all orders with less than 4 quantity*/
Select A.[Order Key], A.[Quantity], B.[ISO Week Number] as WeekNumber
from [Fact].[Order] As A
Inner join [Dimension].[Date] as B
on A.[Order Date Key] = b.Date
where A.[Quantity]<4


Use WideWorldImporters
go
/*get the name, phone and fax from all the orders with outstanding balance*/
SELECT A.CustomerID
	,B.CustomerName
	,A.OutstandingBalance
	,B.PhoneNumber
	,B.FaxNumber
FROM sales.CustomerTransactions AS A
INNER JOIN Sales.Customers AS B ON A.CustomerID = B.CustomerID
WHERE A.OutstandingBalance > 0
/*get the name, phone and fax from all the orders where the transaction isnt finalized */
select A.CustomerID, B.CustomerName, A.IsFinalized, B.PhoneNumber, B.FaxNumber
from sales.CustomerTransactions as A
inner join Sales.Customers as B
on A.CustomerID = B.CustomerID
where A.IsFinalized= 0

use AdventureWorksDW2017
go
/*Get the employees that are hired before 2010 and the calendar quater they were hired from*/
Select A.EmployeeKey, A.FirstName, A.LastName, A.HireDate, B.CalendarQuarter
from DimEmployee as A
inner join Dimdate as B
on A.HireDate LIKE B.FullDateAlternateKey
where B.DateKey<20100101

USE WideWorldImportersDW
Go

/* get the week number for all orders that happened before april 2013* also ge continent they are from the continent they are from*/
Select A.[Order Key], A.[Order Date Key], B.[ISO Week Number] as WeekNumber, C.Continent
from [Fact].[Order] As A
Inner join [Dimension].[Date] as B
on A.[Order Date Key] = B.Date
inner join Dimension.City as C
on A.[City Key] = C.[City Key]
where A.[Order Date Key]<'20130401'

/*get the month for all orders with less than 4 quantity and from the city of Tschetter Colony*/
Select  C. City, A.[Order Key], A.[Quantity], B.Month
from [Fact].[Order] As A
Inner join [Dimension].[Date] as B
on A.[Order Date Key] = b.Date
inner join Dimension.City as C
on A.[City Key] = C.[City Key]
where A.[Quantity]<4 AND A.[City Key] = '68739'


/*get the name, phone and fax from all the orders with outstanding balance only from those that are in a buying group*/
USE WideWorldImporters
GO

SELECT A.CustomerID
	,B.CustomerName
	,A.OutstandingBalance
	,B.PhoneNumber
	,B.FaxNumber
FROM sales.CustomerTransactions AS A
INNER JOIN Sales.Customers AS B ON A.CustomerID = B.CustomerID
WHERE A.OutstandingBalance > 0
	AND B.BuyingGroupID IN (
		SELECT c.BuyingGroupID
		FROM sales.BuyingGroups AS c
		)

/*get the name, phone and fax from all the orders where the transaction isnt finalized group them by the customer*/
select A.CustomerID, B.CustomerName, A.IsFinalized, B.PhoneNumber, B.FaxNumber
from sales.CustomerTransactions as A
inner join Sales.Customers as B
on A.CustomerID = B.CustomerID
where A.IsFinalized= 0
group by A.CustomerID, B.CustomerName, A.IsFinalized,B.PhoneNumber,B.FaxNumber

use AdventureWorksDW2017
go
/*Get the employees that are hired before 2010 and the calendar quater they were hired from who are married and order them by gender*/
SELECT A.EmployeeKey
	,A.FirstName
	,A.LastName
	,A.HireDate
	,B.CalendarQuarter
	,A.Gender
FROM DimEmployee AS A
INNER JOIN Dimdate AS B ON A.HireDate LIKE B.FullDateAlternateKey
WHERE B.DateKey < 20100101
	AND A.MaritalStatus = 'M'
ORDER BY Gender
USE AdventureWorksDW2017
GO

SELECT EmployeeKey
	,FirstName
	,LastName
	,MAX(BirthDate) AS MaxBirthDate
FROM DimEmployee
GROUP BY EmployeeKey
	,FirstName
	,LastName
ORDER BY MaxBirthDate DESC;

USE AdventureWorks2017
/*get the orders with discounts and the sales person's id*/
Select A.SalesOrderID, A.UnitPrice, A.UnitPriceDiscount, A.LineTotal, B.SalesPersonID
from Sales.SalesOrderDetail as A
inner join sales.SalesOrderHeader as B
on A.SalesOrderID = B.SalesOrderID
where not UnitPriceDiscount = 0

/*gets names and phone number of employees who did not make sales last year but did this year */
select B.firstname, B.lastName, A.BusinessEntityID, C.PhoneNumber
from Sales.SalesPerson as A
inner join Person.Person as B
on A.BusinessEntityID = B. BusinessEntityID
inner join person.PersonPhone as C
on A.BusinessEntityID = C.BusinessEntityID
where A.SalesYTD>0 and A.SalesLastYear = 0

/*Get the business entity id for those who have home phonenumbers instead of cell or work*/
Select A.BusinessEntityID, A.PhoneNumber, B.Name
from Person.PersonPhone as A
inner join person.PhoneNumberType as b
on A.PhoneNumberTypeID = B.PhoneNumberTypeID
where b.PhoneNumberTypeID = 2

USE AdventureWorksDW2017
GO
/*get the scenario name and group them*/
Select A.DateKey, B.ScenarioName
from dbo.FactFinance as A
inner join dbo.DimScenario as B
on A.ScenarioKey = B.ScenarioKey
group by ScenarioName, DateKey

USE Northwinds2020TSQLV6
GO
/*get the product all orders*/
select A.OrderId, A.ProductId, B.productName
from sales.OrderDetail as A
inner join Production.Product as B
on A.ProductId = B.ProductId
order by ProductId
/*Get the suppliers information for the items in each order*/
select A.OrderId, C.SupplierCompanyName, C.SupplierContactName, C. SupplierPhoneNumber
from sales.OrderDetail as A
inner join Production.Product as B
on A.ProductId = B.ProductId
inner join production.Supplier as C
on B.SupplierId = C.SupplierId
order by OrderId
/*Get the suppliers infromation for thsoe who order large amounts(over 20)*/

USE Northwinds2020TSQLV6
GO
SELECT A.OrderId
	,A.ProductId
	,B.productName
	,C.SupplierCompanyName
	,C.SupplierContactName
FROM sales.OrderDetail AS A
INNER JOIN Production.Product AS B ON A.ProductId = B.ProductId
INNER JOIN production.Supplier AS C ON B.SupplierId = C.SupplierId
WHERE A.Quantity > 20

/*Give the category and description for every order*/
select A.OrderId, C.CategoryId,B.ProductName,C.Description
from sales.OrderDetail as A
inner join Production.Product as B
on A.ProductId = B.ProductId
inner join production.Category as C
on B.CategoryId = C.CategoryId

USE AdventureWorks2017
GO
/**/
SELECT A.ProductID
	,D.name
	,C.LocationID
	,A.Quantity
	,B.StandardCost
FROM production.ProductInventory AS A
INNER JOIN production.ProductCostHistory AS B ON A.ProductID = B.ProductID
INNER JOIN Production.Location AS C ON A.LocationID = c.LocationID
INNER JOIN Production.Product AS D ON A.ProductID = D.ProductID
WHERE Quantity < 100