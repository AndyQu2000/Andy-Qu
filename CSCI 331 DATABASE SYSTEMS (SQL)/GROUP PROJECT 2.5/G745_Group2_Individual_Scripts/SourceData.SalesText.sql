USE PrestigeCars

CREATE VIEW SourceData.SalesText
AS
SELECT CO.CountryName
	   ,MK.MakeName
	   ,SD.SalePrice
	   ,ST.Cost
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

SELECT * FROM SourceData.SalesText