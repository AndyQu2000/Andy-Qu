USE [PrestigeCars]
GO
/****** Object:  Schema [Data]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE SCHEMA [Data]
GO
/****** Object:  Schema [DataTransfer]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE SCHEMA [DataTransfer]
GO
/****** Object:  Schema [Output]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE SCHEMA [Output]
GO
/****** Object:  Schema [Reference]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE SCHEMA [Reference]
GO
/****** Object:  Schema [SourceData]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE SCHEMA [SourceData]
GO
/****** Object:  Schema [udt]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE SCHEMA [udt]
GO
/****** Object:  UserDefinedDataType [udt].[address]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[address] FROM [nvarchar](30) NULL
GO
/****** Object:  UserDefinedDataType [udt].[CountryName]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[CountryName] FROM [nvarchar](15) NOT NULL
GO
/****** Object:  UserDefinedDataType [udt].[EnumerationTotal]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[EnumerationTotal] FROM [numeric](38, 2) NULL
GO
/****** Object:  UserDefinedDataType [udt].[Invoice]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[Invoice] FROM [char](8) NULL
GO
/****** Object:  UserDefinedDataType [udt].[ISO2]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[ISO2] FROM [nchar](2) NULL
GO
/****** Object:  UserDefinedDataType [udt].[ISO3]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[ISO3] FROM [nchar](3) NULL
GO
/****** Object:  UserDefinedDataType [udt].[Name]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[Name] FROM [nvarchar](50) NULL
GO
/****** Object:  UserDefinedDataType [udt].[Price]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[Price] FROM [numeric](18, 2) NULL
GO
/****** Object:  UserDefinedDataType [udt].[SalesRegion]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[SalesRegion] FROM [nvarchar](15) NULL
GO
/****** Object:  UserDefinedDataType [udt].[SurrogateKeyInt]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[SurrogateKeyInt] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [udt].[Year]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE TYPE [udt].[Year] FROM [char](4) NULL
GO
/****** Object:  Table [Data].[SalesDetails]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[SalesDetails](
	[SalesDetailsID] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[SalesID] [udt].[SurrogateKeyInt] NOT NULL,
	[LineItemNumber] [tinyint] NULL,
	[StockID] [udt].[Name] NULL,
	[SalePrice] [udt].[Price] NULL,
	[LineItemDiscount] [udt].[Price] NULL,
 CONSTRAINT [PK_SalesDetails] PRIMARY KEY CLUSTERED 
(
	[SalesDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Country]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Country](
	[CountryId] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[CountryName] [udt].[CountryName] NOT NULL,
	[CountryISO2] [udt].[ISO2] NOT NULL,
	[CountryISO3] [udt].[ISO3] NOT NULL,
	[SalesRegionId] [udt].[SurrogateKeyInt] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Customer]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Customer](
	[CustomerId] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[CustomerName] [udt].[Name] NOT NULL,
	[Address1] [udt].[address] NOT NULL,
	[Address2] [udt].[address] NULL,
	[Town] [udt].[Name] NULL,
	[PostCode] [udt].[Name] NULL,
	[CountryISO2] [udt].[ISO2] NOT NULL,
	[IsCreditRisk] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Sales]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Sales](
	[SalesID] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[CustomerID] [udt].[SurrogateKeyInt] NULL,
	[InvoiceNumber] [udt].[Invoice] NULL,
	[TotalSalePrice] [udt].[Price] NULL,
	[SaleDate] [datetime] NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Make]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Make](
	[MakeID] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[MakeName] [udt].[Name] NULL,
	[MakeCountry] [udt].[ISO3] NULL,
 CONSTRAINT [PK_MakeID] PRIMARY KEY CLUSTERED 
(
	[MakeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Model]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Model](
	[ModelID] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[MakeID] [udt].[SurrogateKeyInt] NULL,
	[ModelName] [udt].[Name] NULL,
 CONSTRAINT [PK_ModelID] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Stock]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Stock](
	[StockID] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[StockCode] [udt].[Name] NOT NULL,
	[ModelID] [udt].[SurrogateKeyInt] NULL,
	[Cost] [money] NULL,
	[RepairsCost] [money] NULL,
	[PartsCost] [money] NULL,
	[TransportInCost] [money] NULL,
	[IsRHD] [bit] NULL,
	[Color] [nvarchar](50) NULL,
	[BuyerComments] [nvarchar](4000) NULL,
	[DateBought] [date] NULL,
	[TimeBought] [time](7) NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[StockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [SourceData].[SalesText]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [SourceData].[SalesText]
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
GO
/****** Object:  Table [Reference].[MarketingInformation]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[MarketingInformation](
	[CustomerName] [udt].[Name] NOT NULL,
	[CountryISO2] [udt].[ISO2] NOT NULL,
	[SpendCapacity] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [Reference].[MarketingInformationByCustomer]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE FUNCTION [Reference].[MarketingInformationByCustomer]
 (@customerName [udt].[Name])
 RETURNS TABLE
 AS
 RETURN
	(SELECT MI.CustomerName
		   ,MI.CountryISO2
		   ,MI.SpendCapacity
	FROM [Reference].[MarketingInformation] MI
	WHERE MI.CustomerName = @customerName)
GO
/****** Object:  Table [Reference].[MarketingCategories]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[MarketingCategories](
	[MakeName] [udt].[Name] NULL,
	[MarketingType] [udt].[Name] NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [Reference].[MarketingCategoriesByMake]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  View [Output].[StockPrices]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Output].[StockPrices] 
AS
SELECT MK.[MakeName]
	  ,M.[ModelName]
	  ,S.[Cost]
FROM Data.[Model] as M
	INNER JOIN [Data].[Stock] as S
		ON M.ModelID = S.ModelID
	INNER JOIN [Data].[Make] AS MK
		ON M.MakeID = MK.MakeID
GO
/****** Object:  UserDefinedFunction [Reference].[YearlySales]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [Reference].[YearlySales] (
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
/****** Object:  View [SourceData].[SalesInPounds]    Script Date: 11/28/2021 10:19:46 AM ******/
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
/****** Object:  Table [Reference].[Staff]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[Staff](
	[StaffID] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[StaffName] [udt].[Name] NULL,
	[ManagerID] [int] NULL,
	[Department] [udt].[Name] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [Reference].[GetManager]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [Reference].[GetManager] (
	@StaffID int
)
RETURNS TABLE
AS
RETURN
	SELECT StaffName AS 'Manager'
		,Department
		FROM Reference.Staff
		WHERE StaffID = (SELECT ManagerID FROM Reference.Staff  S WHERE S.StaffID = @StaffID)
GO
/****** Object:  Table [Reference].[Budget]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[Budget](
	[BudgetKey] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[BudgetValue] [money] NULL,
	[Year] [int] NULL,
	[Month] [tinyint] NULL,
	[BudgetDetail] [udt].[Name] NULL,
	[BudgetElement] [udt].[Name] NULL,
 CONSTRAINT [PK_Budget] PRIMARY KEY CLUSTERED 
(
	[BudgetKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [Reference].[BudgetByYear]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [Reference].[BudgetByYear](
	@year int
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Reference.Budget
	WHERE Year = @year
GO
/****** Object:  Table [Data].[PivotTable]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[PivotTable](
	[Color] [udt].[Name] NULL,
	[2015] [udt].[EnumerationTotal] NULL,
	[2016] [udt].[EnumerationTotal] NULL,
	[2017] [udt].[EnumerationTotal] NULL,
	[2018] [udt].[EnumerationTotal] NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [Data].[SalesByColor]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [Data].[SalesByColor](
	@color varchar(25)
)
RETURNS TABLE
AS
RETURN
SELECT * FROM [Data].PivotTable
	WHERE [Color] = @color
GO
/****** Object:  Table [Data].[ModelVariant]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[ModelVariant](
	[ModelID] [udt].[SurrogateKeyInt] NOT NULL,
	[ModelVariant] [udt].[Name] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[ModelYear]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[ModelYear](
	[ModelID] [udt].[SurrogateKeyInt] NOT NULL,
	[YearFirstProduced] [udt].[Year] NULL,
	[YearLastProduced] [udt].[Year] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[SalesRegion]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[SalesRegion](
	[SalesRegionId] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[SalesRegion] [udt].[SalesRegion] NOT NULL,
 CONSTRAINT [PK_SalesRegion] PRIMARY KEY CLUSTERED 
(
	[SalesRegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Reference].[Forex]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[Forex](
	[ExchangeDate] [date] NULL,
	[ISOCurrency] [char](3) NULL,
	[ExchangeRate] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Reference].[SalesBudgets]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[SalesBudgets](
	[BudgetArea] [udt].[Name] NOT NULL,
	[BudgetAmount] [money] NULL,
	[BudgetYear] [int] NULL,
	[DateUpdated] [datetime] NULL,
	[Comments] [nvarchar](4000) NULL,
	[BudgetMonth] [tinyint] NULL,
 CONSTRAINT [PK_SalesBudgets] PRIMARY KEY CLUSTERED 
(
	[BudgetArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Reference].[StaffHierarchy]    Script Date: 11/28/2021 10:19:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[StaffHierarchy](
	[HierarchyReference] [udt].[Name] NULL,
	[StaffID] [udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueCoutryName_idx]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueCoutryName_idx] ON [Data].[Country]
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueCoutryNameISO2_idx]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE NONCLUSTERED INDEX [UniqueCoutryNameISO2_idx] ON [Data].[Country]
(
	[CountryISO2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueCoutryNameISO3_idx]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueCoutryNameISO3_idx] ON [Data].[Country]
(
	[CountryISO3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueSalesRegionName_idx]    Script Date: 11/28/2021 10:19:46 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueSalesRegionName_idx] ON [Data].[SalesRegion]
(
	[SalesRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Data].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_SalesRegion] FOREIGN KEY([SalesRegionId])
REFERENCES [Data].[SalesRegion] ([SalesRegionId])
GO
ALTER TABLE [Data].[Country] CHECK CONSTRAINT [FK_Country_SalesRegion]
GO
ALTER TABLE [Data].[ModelVariant]  WITH CHECK ADD  CONSTRAINT [FK_ModelVariant] FOREIGN KEY([ModelID])
REFERENCES [Data].[Model] ([ModelID])
GO
ALTER TABLE [Data].[ModelVariant] CHECK CONSTRAINT [FK_ModelVariant]
GO
ALTER TABLE [Data].[ModelYear]  WITH CHECK ADD  CONSTRAINT [FK_ModelYear] FOREIGN KEY([ModelID])
REFERENCES [Data].[Model] ([ModelID])
GO
ALTER TABLE [Data].[ModelYear] CHECK CONSTRAINT [FK_ModelYear]
GO
ALTER TABLE [Data].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Customer] FOREIGN KEY([CustomerID])
REFERENCES [Data].[Customer] ([CustomerId])
GO
ALTER TABLE [Data].[Sales] CHECK CONSTRAINT [FK_Customer]
GO
ALTER TABLE [Data].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Model] FOREIGN KEY([ModelID])
REFERENCES [Data].[Model] ([ModelID])
GO
ALTER TABLE [Data].[Stock] CHECK CONSTRAINT [FK_Stock_Model]
GO
ALTER TABLE [Reference].[StaffHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_StaffHierarchy] FOREIGN KEY([StaffID])
REFERENCES [Reference].[Staff] ([StaffID])
GO
ALTER TABLE [Reference].[StaffHierarchy] CHECK CONSTRAINT [FK_StaffHierarchy]
GO
ALTER TABLE [Data].[Country]  WITH CHECK ADD  CONSTRAINT [CK_CountryISO2] CHECK  (([CountryISO2] like '[A-Z][A-Z]'))
GO
ALTER TABLE [Data].[Country] CHECK CONSTRAINT [CK_CountryISO2]
GO
ALTER TABLE [Data].[Country]  WITH CHECK ADD  CONSTRAINT [CK_CountryISO3] CHECK  (([CountryISO3] like '[A-Z][A-Z][A-Z]'))
GO
ALTER TABLE [Data].[Country] CHECK CONSTRAINT [CK_CountryISO3]
GO
