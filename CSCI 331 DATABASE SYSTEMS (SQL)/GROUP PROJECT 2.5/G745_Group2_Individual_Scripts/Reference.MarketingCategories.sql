SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[MarketingCategories] (
[MakeName]  [Udt].[Name] NULL,
[MarketingType] [udt].[Name] NULL)	
ON [PRIMARY]
GO


DROP VIEW IF EXISTS Udt.ViewMakeName
GO
CREATE VIEW Udt.ViewMakeName
AS
SELECT MK.MakeID,MC.MarketingType
FROM Udt.Make  AS MK
INNER JOIN Reference.MarketingCategories AS MC
ON MC.MakeName = MK.MakeName
GO

DROP FUNCTION IF EXISTS Udt.FuctionMakeName
GO
CREATE FUNCTION Udt.FuctionMakeName
(@make AS NVARCHAR(100)) RETURNS TABLE
AS
RETURN
SELECT MK.MakeID,MC.MarketingType
FROM Udt.Make  AS MK
INNER JOIN Reference.MarketingCategories AS MC
ON MC.MakeName = MK.MakeName
WHERE mk.MakeName = @make;
GO

GO
CREATE FUNCTION [Reference].[MarketingCategoriesByMake]
(@Makeid [udt].SurrogateKeyInt)
RETURNS TABLE
AS
RETURN
(SELECT MC.MakeName
	   ,MC.MarketingType
FROM [Reference].[MarketingCategories] MC
	WHERE MC.MakeName = (SELECT MakeName FROM [Data].[Make] WHERE MakeID = @Makeid)
)
GO

SELECT * FROM Reference.MarketingCategoriesByMake(3)


GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Ferrari', N'Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Porsche', N'Sports,Tourer')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Lamborghini', N'Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Aston Martin', N'Sports,Tourer')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Bentley', N'Tourer,Chauffer,Prestige')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Rolls Royce', N'Chauffer,Prestige')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Maybach', N'Chauffer,Prestige')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Mercedes', N'Tourer,Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Alfa Romeo', N'Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Austin', N'Relic')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'BMW', N'Sports,Tourer')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Bugatti', N'Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Citroen', N'Family')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Delahaye', N'Family')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Delorean', N'Sports,Family')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Jaguar', N'Sports,Family')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Lagonda', N'Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'McLaren', N'Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Morgan', N'Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Noble', N'Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Triumph', N'Sports')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Trabant', N'Family')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Peugeot', N'Family')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Reliant', N'Family')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Riley', N'Family')
GO
INSERT [Reference].[MarketingCategories] ([MakeName], [MarketingType]) VALUES (N'Cadillac', N'Family')