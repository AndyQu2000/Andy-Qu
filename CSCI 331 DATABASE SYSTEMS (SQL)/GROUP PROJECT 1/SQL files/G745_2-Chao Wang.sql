/*1
USE AdventureWorks2017
return the information of  the employees
including the BusinessEntityID,BirthDate,Gender,HireDate, and DepartmentID
*/
USE AdventureWorks2017;
SELECT E.BusinessEntityID,
       E.BirthDate,
       E.Gender,
       E.HireDate,
       HD.DepartmentID
FROM HumanResources.Employee AS E
    INNER JOIN HumanResources.EmployeeDepartmentHistory AS ED
        ON E.BusinessEntityID = ED.BusinessEntityID
    INNER JOIN HumanResources.Department AS HD
        ON ED.DepartmentID = HD.DepartmentID;
--FOR JSON PATH ,ROOT('1')
/*2
USE AdventureWorksDW2017
return the information of the fact internet sales that after 20110101
*/
USE AdventureWorksDW2017;
SELECT FIS.SalesOrderNumber,
       DP.EnglishProductName,
       FIS.UnitPrice,
       FIS.OrderQuantity
FROM dbo.FactInternetSales AS FIS
    LEFT OUTER JOIN dbo.DimProduct AS DP
        ON DP.ProductKey = FIS.ProductKey
WHERE FIS.OrderDate >= '20110101'
ORDER BY FIS.SalesOrderNumber;
--FOR JSON PATH ,ROOT('2')

/*3
looking for the costomers who have orders and their name has c a and d
*/
USE WideWorldImporters;
SELECT DISTINCT
       C.CustomerID,
       C.CustomerName
FROM Sales.Customers AS C
    LEFT OUTER JOIN Sales.Orders AS o
        ON C.CustomerID = o.CustomerID
WHERE C.CustomerName LIKE '%c%a%d%'
ORDER BY C.CustomerID;
--FOR JSON PATH ,ROOT('3')

/*
Return UK customers, and for each customer
that returns the total number of orders and total
quantities
*/
USE Northw;
SELECT C.CustomerId,
       COUNT(DISTINCT O.OrderId) AS numorders,
       SUM(OD.Quantity) AS totalQuantity
FROM Sales.Customer AS C
    INNER JOIN Sales.[Order] AS O
        ON O.CustomerId = C.CustomerId
    INNER JOIN Sales.OrderDetail AS OD
        ON OD.OrderId = O.OrderId
WHERE C.CustomerCountry = N'UK'
GROUP BY C.CustomerId;
--FOR JSON PATH ,ROOT('4')
------------------------------------------------------


USE WideWorldImportersDW;
SELECT s.Description,
       s.[Sale Key],
       s.[Tax Amount],
       s.Quantity
FROM Fact.Sale AS s
    LEFT OUTER JOIN Dimension.Customer AS c
        ON c.[Customer Key] = s.[Customer Key]
WHERE s.Quantity >= 5
ORDER BY s.Quantity;
--FOR JSON PATH ,ROOT('5')
--------------------------------------------------------------
/*6
try to find the emploeyesls who deal with the orders of customer 55 */
USE Northw;
DECLARE @chose AS INT =
        (
            SELECT DISTINCT
                   O.CustomerId
            FROM Sales.[Order] AS O
            WHERE O.CustomerId = 55
        );
SELECT O.EmployeeId,
       YEAR(O.OrderDate) AS year
FROM Sales.[Order] AS O
    JOIN Sales.OrderDetail AS OD
        ON OD.OrderId = O.OrderId
    JOIN Sales.Customer AS C
        ON C.CustomerId = O.CustomerId
WHERE O.CustomerId = @chose
GROUP BY O.EmployeeId,
         YEAR(O.OrderDate);
--FOR JSON PATH ,ROOT('6')
-----------------------------------------------------------------

USE Northw;
SELECT O.EmployeeId,
       YEAR(O.OrderDate) AS YYear,
       COUNT(O.OrderId) AS num,
       SUM(OD.UnitPrice * OD.Quantity) AS totalprice
FROM Sales.[Order] AS O
    LEFT OUTER JOIN Sales.OrderDetail AS OD
        ON OD.OrderId = O.OrderId
    LEFT OUTER JOIN HumanResources.Employee AS E
        ON E.EmployeeId = O.EmployeeId
GROUP BY O.EmployeeId,
         YEAR(O.OrderDate),
         O.OrderId,
         OD.UnitPrice * OD.Quantity
ORDER BY O.EmployeeId,
         YYear,
         totalprice;
--FOR JSON PATH ,ROOT('7')
--------------------------------
USE Northw;
SELECT Employeeinformation.OrderYear,
       NumberOfUniqueCustomers = COUNT(DISTINCT Employeeinformation.CustomerId),
       Employeeinformation.EmployeeId
FROM
(
    SELECT YEAR(o.OrderDate) AS OrderYear,
           o.CustomerId,
           o.EmployeeId
    FROM Sales.[Order] AS o
) AS Employeeinformation
    INNER JOIN Sales.[Order] AS o1
        ON o1.CustomerId = Employeeinformation.CustomerId
    INNER JOIN Sales.[Order] AS o2
        ON o2.CustomerId = Employeeinformation.CustomerId
GROUP BY Employeeinformation.OrderYear,
         Employeeinformation.EmployeeId
ORDER BY Employeeinformation.EmployeeId,
         Employeeinformation.OrderYear;
--FOR JSON PATH ,ROOT('8')
--------------------------------------------------
--9
USE Northw;
DECLARE @empid AS INT = 5;
SELECT D.orderyear,
       COUNT(DISTINCT D.CustomerId) AS numcusts
FROM
(
    SELECT YEAR(OrderDate) AS orderyear,
           CustomerId,
           EmployeeId
    FROM Sales.[Order]
    WHERE EmployeeId IN ( @empid, 6, 7 )
) AS D
    INNER JOIN Sales.Customer AS C
        ON C.CustomerId = D.CustomerId
    INNER JOIN HumanResources.Employee AS E
        ON E.EmployeeId = D.EmployeeId
WHERE D.orderyear >= 2013
GROUP BY D.orderyear,
         C.CustomerId
ORDER BY D.orderyear;
-----------------------------------------
--10
SELECT Cur.orderyear,
       Cur.numcusts AS curnumcusts,
       Prv.numcusts AS prvnumcusts,
       Cur.numcusts - Prv.numcusts AS growth
FROM
(
    SELECT YEAR(OrderDate) AS orderyear,
           COUNT(DISTINCT CustomerId) AS numcusts
    FROM Sales.[Order]
    GROUP BY YEAR(OrderDate)
) AS Cur
    LEFT OUTER JOIN
    (
        SELECT YEAR(OrderDate) AS orderyear,
               COUNT(DISTINCT CustomerId) AS numcusts
        FROM Sales.[Order]
        GROUP BY YEAR(OrderDate)
    ) AS Prv
        ON Cur.orderyear = Prv.orderyear + 1
    LEFT OUTER JOIN
    (
        SELECT YEAR(OrderDate) AS orderyear,
               COUNT(DISTINCT CustomerId) AS numcusts
        FROM Sales.[Order]
        GROUP BY YEAR(OrderDate)
    ) AS nex
        ON Cur.orderyear = nex.orderyear - 1

	----------------------------------------------------------------------






