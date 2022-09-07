CREATE VIEW [OutPut].[StockPrices] 
AS
SELECT MK.[MakeName]
	  ,M.[ModelName]
	  ,S.[Cost]
FROM Data.[Model] as M
	INNER JOIN [Data].[Stock] as S
		ON M.ModelID = S.ModelID
	INNER JOIN [Data].[Make] AS MK
		ON M.MakeID = MK.MakeID

SELECT * FROM [Output].[StockPrices]