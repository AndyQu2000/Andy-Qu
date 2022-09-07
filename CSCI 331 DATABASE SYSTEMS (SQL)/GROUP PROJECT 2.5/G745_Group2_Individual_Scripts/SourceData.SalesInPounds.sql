USE [PrestigeCars]
GO

/****** Object:  View [SourceData].[SalesText]    Script Date: 11/27/2021 8:12:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [SourceData].[SalesInPounds]
AS
SELECT MK.MakeName
	   ,MD.ModelID
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
GO


SELECT * FROM SourceData.SalesInPounds