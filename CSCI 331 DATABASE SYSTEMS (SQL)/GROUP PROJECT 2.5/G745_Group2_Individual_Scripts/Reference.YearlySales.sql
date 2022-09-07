GO
CREATE FUNCTION Reference.YearlySales (
	@year int
)
RETURNS TABLE
AS 
RETURN 
	SELECT MK.MakeName
		   ,MD.ModelName
	       ,C.CustomerName
	       ,CO.CountryName
	       ,ST.Cost
	       ,ST.RepairsCost
	       ,ST.PartsCost
	       ,ST.TransportInCost
	       ,SD.SalePrice
	       ,S.SaleDate
FROM [Data].[Sales] S
	INNER JOIN [Data].SalesDetails SD
		ON S.SalesID = SD.SalesID
	INNER JOIN [Data].Stock ST
		ON SD.StockID = ST.StockCode
	INNER JOIN [Data].Model MD
		ON ST.ModelID = MD.ModelID
	INNER JOIN [Data].Make MK
		ON MD.MakeID = MK.MakeID
	INNER JOIN [Data].Customer C
		ON S.CustomerID = C.CustomerId
	INNER JOIN [Data].Country CO
		ON C.CountryISO2 = CO.CountryISO2
	WHERE YEAR(S.SaleDate) = @year
GO

SELECT * FROM Reference.YearlySales(2015)
SELECT * FROM Reference.YearlySales(2016)
SELECT * FROM Reference.YearlySales(2017)
SELECT * FROM Reference.YearlySales(2018)