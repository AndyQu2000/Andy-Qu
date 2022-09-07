USE PrestigeCars

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON

GO
CREATE TYPE udt.Invoice FROM CHAR (8) NULL
GO

DROP TABLE Data.Sales

GO
CREATE TABLE [Data].[Sales](
	[SalesID] [udt].SurrogateKeyInt IDENTITY(1,1) NOT NULL,
	[CustomerID] [Udt].[SurrogateKeyInt] NULL,
	[InvoiceNumber] udt.Invoice NULL,
	[TotalSalePrice] [udt].Price NULL,
	[SaleDate] [datetime] NULL,
	-- removed "ID" column to reduce redundancy
) ON [PRIMARY]
GO

SELECT * FROM [data].[Sales]

ALTER TABLE [Data].[Sales]
	ADD CONSTRAINT PK_Sales PRIMARY KEY (SalesID),
		CONSTRAINT FK_Customer FOREIGN KEY (CustomerID) REFERENCES [Data].[Customer]



SET IDENTITY_INSERT [Data].[Sales] ON 
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (1, 1, N'GBPGB001', CAST(65000.00 AS Numeric(18, 2)), CAST(N'2015-01-02T08:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (2, 2, N'GBPGB002', CAST(220000.10 AS Numeric(18, 2)), CAST(N'2015-01-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (3, 3, N'GBPGB003', CAST(19500.00 AS Numeric(18, 2)), CAST(N'2015-02-03T10:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (4, 4, N'EURDE004', CAST(11500.00 AS Numeric(18, 2)), CAST(N'2015-02-16T08:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (5, 5, N'EURFR005', CAST(19900.00 AS Numeric(18, 2)), CAST(N'2015-01-02T10:33:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (6, 1, N'GBPGB006', CAST(29500.00 AS Numeric(18, 2)), CAST(N'2015-03-14T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (7, 3, N'GBPGB007', CAST(49500.20 AS Numeric(18, 2)), CAST(N'2015-03-24T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (8, 7, N'GBPGB008', CAST(76000.90 AS Numeric(18, 2)), CAST(N'2015-03-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (9, 8, N'EURFR009', CAST(19600.00 AS Numeric(18, 2)), CAST(N'2015-04-06T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (10, 9, N'USDUS010', CAST(36500.00 AS Numeric(18, 2)), CAST(N'2015-04-04T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (11, 10, N'GBPGB011', CAST(89000.00 AS Numeric(18, 2)), CAST(N'2015-04-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (12, 11, N'GBPGB012', CAST(169500.00 AS Numeric(18, 2)), CAST(N'2015-05-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (13, 8, N'EURFR013', CAST(8950.00 AS Numeric(18, 2)), CAST(N'2015-05-20T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (14, 12, N'GBPGB014', CAST(195000.00 AS Numeric(18, 2)), CAST(N'2015-05-28T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (15, 13, N'EURFR015', CAST(22950.00 AS Numeric(18, 2)), CAST(N'2015-06-04T16:37:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (16, 14, N'GBPGB016', CAST(8695.00 AS Numeric(18, 2)), CAST(N'2015-07-12T10:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (17, 15, N'GBPGB017', CAST(22990.00 AS Numeric(18, 2)), CAST(N'2015-07-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (18, 16, N'EURFR018', CAST(75500.00 AS Numeric(18, 2)), CAST(N'2015-07-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (19, 17, N'USDUS019', CAST(5500.00 AS Numeric(18, 2)), CAST(N'2015-08-02T08:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (20, 18, N'GBPGB020', CAST(12650.00 AS Numeric(18, 2)), CAST(N'2015-09-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (21, 19, N'GBPGB021', CAST(8950.00 AS Numeric(18, 2)), CAST(N'2015-09-15T10:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (22, 18, N'GBPGB022', CAST(15600.00 AS Numeric(18, 2)), CAST(N'2015-09-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (23, 15, N'GBPGB023', CAST(22600.00 AS Numeric(18, 2)), CAST(N'2015-10-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (24, 17, N'USDUS024', CAST(123590.00 AS Numeric(18, 2)), CAST(N'2015-10-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (25, 14, N'GBPGB025', CAST(22950.00 AS Numeric(18, 2)), CAST(N'2015-11-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (26, 15, N'GBPGB026', CAST(69500.00 AS Numeric(18, 2)), CAST(N'2015-12-01T08:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (27, 06, N'GBPCH027', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2016-01-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (28, 07, N'GBPGB028', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2016-01-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (29, 09, N'USDUS029', CAST(159500.00 AS Numeric(18, 2)), CAST(N'2016-01-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (30, 10, N'GBPGB030', CAST(165000.00 AS Numeric(18, 2)), CAST(N'2016-01-01T08:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (31, 08, N'EURFR031', CAST(2550.00 AS Numeric(18, 2)), CAST(N'2016-01-07T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (32, 19, N'GBPGB032', CAST(29500.00 AS Numeric(18, 2)), CAST(N'2016-01-07T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (33, 20, N'USDUS033', CAST(12650.00 AS Numeric(18, 2)), CAST(N'2016-01-09T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (34, 21, N'GBPGB034', CAST(56950.00 AS Numeric(18, 2)), CAST(N'2016-01-22T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (35, 22, N'GBPGB035', CAST(56000.00 AS Numeric(18, 2)), CAST(N'2016-02-22T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (36, 23, N'EURDE036', CAST(71890.00 AS Numeric(18, 2)), CAST(N'2016-02-17T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (37, 16, N'EURFR037', CAST(39500.00 AS Numeric(18, 2)), CAST(N'2016-02-16T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (38, 01, N'GBPGB038', CAST(3650.00 AS Numeric(18, 2)), CAST(N'2016-02-28T10:10:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (39, 24, N'GBPCH039', CAST(220500.00 AS Numeric(18, 2)), CAST(N'2016-03-20T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (40, 25, N'GBPGB040', CAST(102950.00 AS Numeric(18, 2)), CAST(N'2016-04-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (41, 20, N'USDUS041', CAST(17500.00 AS Numeric(18, 2)), CAST(N'2016-04-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (42, 21, N'GBPGB042', CAST(8800.00 AS Numeric(18, 2)), CAST(N'2016-04-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (43, 23, N'EURDE043', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2016-04-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (44, 21, N'GBPGB044', CAST(17500.00 AS Numeric(18, 2)), CAST(N'2016-04-30T11:27:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (45, 10, N'GBPGB045', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2016-04-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (46, 15, N'GBPGB046', CAST(49450.00 AS Numeric(18, 2)), CAST(N'2016-05-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (47, 16, N'EURFR047', CAST(49580.00 AS Numeric(18, 2)), CAST(N'2016-05-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (48, 8, N'EURFR048', CAST(5500.00 AS Numeric(18, 2)), CAST(N'2016-06-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (49, 26, N'GBPGB049', CAST(22150.00 AS Numeric(18, 2)), CAST(N'2016-06-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (50, 27, N'GBPGB050', CAST(35000.00 AS Numeric(18, 2)), CAST(N'2016-06-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (51, 28, N'EURFR051', CAST(174650.00 AS Numeric(18, 2)), CAST(N'2016-06-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (52, 29, N'GBPGB052', CAST(15650.00 AS Numeric(18, 2)), CAST(N'2016-07-01T08:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (53, 20, N'USDUS053', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2016-07-06T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (54, 30, N'GBPGB054', CAST(195000.00 AS Numeric(18, 2)), CAST(N'2016-07-25T10:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (55, 15, N'GBPGB055', CAST(205000.00 AS Numeric(18, 2)), CAST(N'2016-07-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (56, 14, N'GBPGB056', CAST(66500.00 AS Numeric(18, 2)), CAST(N'2016-07-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (57, 31, N'GBPGB057', CAST(19500.00 AS Numeric(18, 2)), CAST(N'2016-07-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (58, 32, N'EURES058', CAST(79500.00 AS Numeric(18, 2)), CAST(N'2016-07-26T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (59, 33, N'EURIT059', CAST(14590.00 AS Numeric(18, 2)), CAST(N'2016-07-26T10:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (60, 32, N'EURES060', CAST(12750.00 AS Numeric(18, 2)), CAST(N'2016-08-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (61, 22, N'GBPGB061', CAST(45600.00 AS Numeric(18, 2)), CAST(N'2016-08-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (62, 21, N'GBPGB062', CAST(6500.00 AS Numeric(18, 2)), CAST(N'2016-08-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (63, 15, N'GBPGB063', CAST(102500.00 AS Numeric(18, 2)), CAST(N'2016-08-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (64, 16, N'EURFR064', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2016-08-09T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (65, 14, N'GBPGB065', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2016-08-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (66, 4, N'EURDE066', CAST(61500.00 AS Numeric(18, 2)), CAST(N'2016-08-12T10:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (67, 6, N'GBPCH067', CAST(79500.00 AS Numeric(18, 2)), CAST(N'2016-08-13T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (68, 18, N'GBPGB068', CAST(50100.00 AS Numeric(18, 2)), CAST(N'2016-08-13T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (69, 5, N'EURFR069', CAST(66500.00 AS Numeric(18, 2)), CAST(N'2016-08-13T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (70, 33, N'EURIT070', CAST(45000.00 AS Numeric(18, 2)), CAST(N'2016-08-19T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (71, 23, N'EURDE071', CAST(19500.00 AS Numeric(18, 2)), CAST(N'2016-08-19T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (72, 21, N'GBPGB072', CAST(76500.00 AS Numeric(18, 2)), CAST(N'2016-08-21T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (73, 14, N'GBPGB073', CAST(45900.00 AS Numeric(18, 2)), CAST(N'2016-08-22T08:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (74, 34, N'EURBE074', CAST(125000.00 AS Numeric(18, 2)), CAST(N'2016-08-23T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (75, 35, N'EURFR075', CAST(65500.00 AS Numeric(18, 2)), CAST(N'2016-08-24T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (76, 36, N'USDUS076', CAST(92150.00 AS Numeric(18, 2)), CAST(N'2016-08-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (77, 37, N'GBPGB077', CAST(9500.00 AS Numeric(18, 2)), CAST(N'2016-08-28T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (78, 33, N'EURIT078', CAST(9950.00 AS Numeric(18, 2)), CAST(N'2016-08-28T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (79, 25, N'GBPGB079', CAST(5680.00 AS Numeric(18, 2)), CAST(N'2016-08-29T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (80, 24, N'GBPCH080', CAST(19500.00 AS Numeric(18, 2)), CAST(N'2016-08-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (81, 15, N'GBPGB081', CAST(3500.00 AS Numeric(18, 2)), CAST(N'2016-09-04T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (82, 6, N'GBPCH082', CAST(3950.00 AS Numeric(18, 2)), CAST(N'2016-09-04T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (83, 19, N'GBPGB083', CAST(20950.00 AS Numeric(18, 2)), CAST(N'2016-09-04T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (84, 3, N'GBPGB084', CAST(7500.00 AS Numeric(18, 2)), CAST(N'2016-09-06T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (85, 2, N'GBPGB085', CAST(56500.00 AS Numeric(18, 2)), CAST(N'2016-09-07T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (86, 22, N'GBPGB086', CAST(49500.00 AS Numeric(18, 2)), CAST(N'2016-09-07T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (87, 32, N'EURES087', CAST(68900.00 AS Numeric(18, 2)), CAST(N'2016-09-11T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (88, 1, N'GBPGB088', CAST(55000.00 AS Numeric(18, 2)), CAST(N'2016-09-11T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (89, 8, N'EURFR089', CAST(3575.00 AS Numeric(18, 2)), CAST(N'2016-09-14T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (90, 12, N'GBPGB090', CAST(35250.00 AS Numeric(18, 2)), CAST(N'2016-09-14T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (91, 13, N'EURFR091', CAST(47490.00 AS Numeric(18, 2)), CAST(N'2016-09-16T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (92, 15, N'GBPGB092', CAST(45950.00 AS Numeric(18, 2)), CAST(N'2016-09-16T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (93, 25, N'GBPGB093', CAST(9950.00 AS Numeric(18, 2)), CAST(N'2016-09-18T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (94, 26, N'GBPGB094', CAST(163050.00 AS Numeric(18, 2)), CAST(N'2016-09-19T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (95, 22, N'GBPGB095', CAST(76500.00 AS Numeric(18, 2)), CAST(N'2016-10-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (96, 32, N'EURES096', CAST(119600.00 AS Numeric(18, 2)), CAST(N'2016-10-05T10:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (97, 38, N'GBPGB097', CAST(95600.00 AS Numeric(18, 2)), CAST(N'2016-10-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (98, 30, N'EURES098', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2016-10-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (99, 40, N'EURIT099', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2016-10-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (100, 03, N'GBPGB100', CAST(56890.00 AS Numeric(18, 2)), CAST(N'2016-11-03T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (101, 12, N'GBPGB101', CAST(55000.00 AS Numeric(18, 2)), CAST(N'2016-11-04T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (102, 26, N'GBPGB102', CAST(191490.00 AS Numeric(18, 2)), CAST(N'2016-12-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (103, 33, N'EURIT103', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2016-12-06T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (104, 13, N'EURFR104', CAST(60500.00 AS Numeric(18, 2)), CAST(N'2016-12-06T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (105, 14, N'GBPGB105', CAST(123500.00 AS Numeric(18, 2)), CAST(N'2016-12-06T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (106, 23, N'EURDE106', CAST(25000.00 AS Numeric(18, 2)), CAST(N'2016-12-08T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (107, 28, N'EURFR107', CAST(169500.00 AS Numeric(18, 2)), CAST(N'2016-12-20T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (108, 29, N'GBPGB108', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2016-12-28T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (109, 39, N'EURES109', CAST(39500.00 AS Numeric(18, 2)), CAST(N'2016-12-31T10:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (110, 28, N'EURFR110', CAST(22500.00 AS Numeric(18, 2)), CAST(N'2017-01-01T11:12:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (111, 27, N'GBPGB111', CAST(125000.00 AS Numeric(18, 2)), CAST(N'2017-01-05T11:55:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (112, 7, N'GBPGB112', CAST(85000.00 AS Numeric(18, 2)), CAST(N'2017-01-10T15:56:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (113, 13, N'EURFR113', CAST(1250.00 AS Numeric(18, 2)), CAST(N'2017-01-21T13:56:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (114, 6, N'GBPCH114', CAST(22500.00 AS Numeric(18, 2)), CAST(N'2017-01-11T17:52:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (115, 1, N'GBPGB115', CAST(125950.00 AS Numeric(18, 2)), CAST(N'2017-01-12T18:57:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (116, 6, N'GBPCH116', CAST(8850.00 AS Numeric(18, 2)), CAST(N'2017-01-13T19:58:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (117, 19, N'GBPGB117', CAST(9950.00 AS Numeric(18, 2)), CAST(N'2017-01-14T09:58:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (118, 28, N'EURFR118', CAST(56500.00 AS Numeric(18, 2)), CAST(N'2017-01-30T10:59:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (119, 37, N'GBPGB119', CAST(55000.00 AS Numeric(18, 2)), CAST(N'2017-01-31T09:59:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (120, 26, N'GBPGB120', CAST(56950.00 AS Numeric(18, 2)), CAST(N'2017-01-31T12:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (121, 28, N'EURFR121', CAST(365000.00 AS Numeric(18, 2)), CAST(N'2017-02-07T20:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (122, 35, N'EURFR122', CAST(395000.00 AS Numeric(18, 2)), CAST(N'2017-02-08T13:01:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (123, 36, N'USDUS123', CAST(21500.00 AS Numeric(18, 2)), CAST(N'2017-02-09T17:01:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (124, 37, N'GBPGB124', CAST(6500.00 AS Numeric(18, 2)), CAST(N'2017-02-10T11:02:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (125, 34, N'EURBE125', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2017-02-12T16:02:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (126, 1, N'GBPGB126', CAST(2250.00 AS Numeric(18, 2)), CAST(N'2017-02-14T14:03:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (127, 11, N'GBPGB127', CAST(3500.00 AS Numeric(18, 2)), CAST(N'2017-03-05T18:03:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (128, 12, N'GBPGB128', CAST(5680.00 AS Numeric(18, 2)), CAST(N'2017-03-05T19:04:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (129, 16, N'EURFR129', CAST(8550.00 AS Numeric(18, 2)), CAST(N'2017-03-05T14:04:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (130, 26, N'GBPGB130', CAST(156500.00 AS Numeric(18, 2)), CAST(N'2017-03-10T20:05:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (131, 25, N'GBPGB131', CAST(56500.00 AS Numeric(18, 2)), CAST(N'2017-03-10T16:05:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (132, 34, N'EURBE132', CAST(86500.00 AS Numeric(18, 2)), CAST(N'2017-03-12T17:06:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (133, 1, N'GBPGB133', CAST(66500.00 AS Numeric(18, 2)), CAST(N'2017-03-12T20:06:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (134, 5, N'EURFR134', CAST(55600.00 AS Numeric(18, 2)), CAST(N'2017-03-25T10:07:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (135, 23, N'EURDE135', CAST(305000.00 AS Numeric(18, 2)), CAST(N'2017-03-30T13:07:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (136, 28, N'EURFR136', CAST(45000.00 AS Numeric(18, 2)), CAST(N'2017-03-31T13:08:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (137, 29, N'GBPGB137', CAST(225000.00 AS Numeric(18, 2)), CAST(N'2017-03-31T16:08:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (138, 37, N'GBPGB138', CAST(42950.00 AS Numeric(18, 2)), CAST(N'2017-03-31T18:09:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (139, 31, N'GBPGB139', CAST(990.00 AS Numeric(18, 2)), CAST(N'2017-03-31T14:09:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (140, 32, N'EURES140', CAST(29500.00 AS Numeric(18, 2)), CAST(N'2017-04-05T20:10:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (141, 35, N'EURFR141', CAST(139500.00 AS Numeric(18, 2)), CAST(N'2017-04-06T19:10:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (142, 26, N'GBPGB142', CAST(295000.00 AS Numeric(18, 2)), CAST(N'2017-04-07T12:11:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (143, 28, N'EURFR143', CAST(220500.00 AS Numeric(18, 2)), CAST(N'2017-04-07T12:11:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (144, 29, N'GBPGB144', CAST(79500.00 AS Numeric(18, 2)), CAST(N'2017-05-01T17:12:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (145, 27, N'GBPGB145', CAST(162500.00 AS Numeric(18, 2)), CAST(N'2017-05-01T10:12:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (146, 41, N'EURIT146', CAST(79500.00 AS Numeric(18, 2)), CAST(N'2017-05-09T18:13:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (147, 42, N'EURES147', CAST(65890.00 AS Numeric(18, 2)), CAST(N'2017-05-09T12:13:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (148, 40, N'EURIT148', CAST(61500.00 AS Numeric(18, 2)), CAST(N'2017-05-10T20:14:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (149, 39, N'EURES149', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2017-05-10T16:14:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (150, 1, N'GBPGB150', CAST(255000.00 AS Numeric(18, 2)), CAST(N'2017-05-10T11:15:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (151, 43, N'EURFR151', CAST(255950.00 AS Numeric(18, 2)), CAST(N'2017-05-12T13:15:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (152, 44, N'USDUS152', CAST(250000.00 AS Numeric(18, 2)), CAST(N'2017-05-13T20:16:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (153, 33, N'EURIT153', CAST(6500.00 AS Numeric(18, 2)), CAST(N'2017-05-16T16:16:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (154, 22, N'GBPGB154', CAST(9250.00 AS Numeric(18, 2)), CAST(N'2017-05-19T21:17:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (155, 11, N'GBPGB155', CAST(950.00 AS Numeric(18, 2)), CAST(N'2017-05-20T14:17:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (156, 8, N'EURFR156', CAST(295000.00 AS Numeric(18, 2)), CAST(N'2017-05-21T16:18:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (157, 45, N'GBPGB157', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2017-05-22T11:18:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (158, 46, N'EURFR158', CAST(33500.00 AS Numeric(18, 2)), CAST(N'2017-05-23T09:19:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (159, 23, N'EURDE159', CAST(45000.00 AS Numeric(18, 2)), CAST(N'2017-05-24T17:19:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (160, 35, N'EURFR160', CAST(114000.00 AS Numeric(18, 2)), CAST(N'2017-05-26T10:20:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (161, 24, N'GBPCH161', CAST(2350.00 AS Numeric(18, 2)), CAST(N'2017-05-27T21:20:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (162, 11, N'GBPGB162', CAST(32500.00 AS Numeric(18, 2)), CAST(N'2017-06-01T20:21:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (163, 19, N'GBPGB163', CAST(45000.00 AS Numeric(18, 2)), CAST(N'2017-06-01T12:21:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (164, 6, N'GBPCH164', CAST(8500.00 AS Numeric(18, 2)), CAST(N'2017-06-15T21:22:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (165, 4, N'EURDE165', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2017-06-15T20:22:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (166, 47, N'EURIT166', CAST(25000.00 AS Numeric(18, 2)), CAST(N'2017-06-15T16:23:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (167, 33, N'EURIT167', CAST(19500.00 AS Numeric(18, 2)), CAST(N'2017-06-15T10:23:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (168, 48, N'EURES168', CAST(12950.00 AS Numeric(18, 2)), CAST(N'2017-06-15T18:24:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (169, 25, N'GBPGB169', CAST(5650.00 AS Numeric(18, 2)), CAST(N'2017-06-22T18:24:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (170, 16, N'EURFR170', CAST(29500.00 AS Numeric(18, 2)), CAST(N'2017-06-24T09:25:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (171, 49, N'EURBE171', CAST(45950.00 AS Numeric(18, 2)), CAST(N'2017-07-01T10:25:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (172, 50, N'EURFR172', CAST(99950.00 AS Numeric(18, 2)), CAST(N'2017-07-01T18:26:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (173, 3, N'GBPGB173', CAST(335000.00 AS Numeric(18, 2)), CAST(N'2017-07-03T19:26:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (174, 8, N'EURFR174', CAST(56500.00 AS Numeric(18, 2)), CAST(N'2017-07-31T20:27:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (175, 11, N'GBPGB175', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2017-07-31T19:27:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (176, 16, N'EURFR176', CAST(135000.00 AS Numeric(18, 2)), CAST(N'2017-07-31T17:28:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (177, 25, N'GBPGB177', CAST(89500.00 AS Numeric(18, 2)), CAST(N'2017-07-31T17:28:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (178, 24, N'GBPCH178', CAST(165000.00 AS Numeric(18, 2)), CAST(N'2017-08-04T21:29:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (179, 36, N'USDUS179', CAST(22600.00 AS Numeric(18, 2)), CAST(N'2017-08-04T11:29:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (180, 46, N'EURFR180', CAST(32675.00 AS Numeric(18, 2)), CAST(N'2017-08-06T14:30:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (181, 28, N'EURFR181', CAST(45000.00 AS Numeric(18, 2)), CAST(N'2017-08-07T13:30:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (182, 21, N'GBPGB182', CAST(5500.00 AS Numeric(18, 2)), CAST(N'2017-08-27T13:31:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (183, 7, N'GBPGB183', CAST(55000.00 AS Numeric(18, 2)), CAST(N'2017-08-30T19:31:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (184, 9, N'USDUS184', CAST(49500.00 AS Numeric(18, 2)), CAST(N'2017-09-20T14:32:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (185, 39, N'EURES185', CAST(250000.00 AS Numeric(18, 2)), CAST(N'2017-09-20T12:32:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (186, 28, N'EURFR186', CAST(155000.00 AS Numeric(18, 2)), CAST(N'2017-09-20T16:33:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (187, 17, N'USDUS187', CAST(15750.00 AS Numeric(18, 2)), CAST(N'2017-09-26T10:33:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (188, 26, N'GBPGB188', CAST(19500.00 AS Numeric(18, 2)), CAST(N'2017-10-15T16:34:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (189, 35, N'EURFR189', CAST(235000.00 AS Numeric(18, 2)), CAST(N'2017-10-15T18:34:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (190, 14, N'GBPGB190', CAST(25000.00 AS Numeric(18, 2)), CAST(N'2017-11-01T19:35:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (191, 47, N'EURIT191', CAST(245000.00 AS Numeric(18, 2)), CAST(N'2017-11-01T12:35:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (192, 48, N'EURES192', CAST(89000.00 AS Numeric(18, 2)), CAST(N'2017-11-01T17:36:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (193, 49, N'EURBE193', CAST(34000.00 AS Numeric(18, 2)), CAST(N'2017-11-06T21:36:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (194, 50, N'EURFR194', CAST(62700.00 AS Numeric(18, 2)), CAST(N'2017-11-12T11:37:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (195, 2, N'GBPGB195', CAST(45950.00 AS Numeric(18, 2)), CAST(N'2017-12-01T17:37:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (196, 12, N'GBPGB196', CAST(21600.00 AS Numeric(18, 2)), CAST(N'2017-12-01T21:38:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (197, 22, N'GBPGB197', CAST(25000.00 AS Numeric(18, 2)), CAST(N'2017-12-05T12:38:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (198, 23, N'EURDE198', CAST(23600.00 AS Numeric(18, 2)), CAST(N'2017-12-05T11:39:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (199, 32, N'EURES199', CAST(99950.00 AS Numeric(18, 2)), CAST(N'2017-12-10T10:39:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (200, 41, N'EURIT200', CAST(46900.00 AS Numeric(18, 2)), CAST(N'2017-12-10T16:40:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (201, 45, N'GBPGB201', CAST(45950.00 AS Numeric(18, 2)), CAST(N'2017-12-10T17:40:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (202, 46, N'EURFR202', CAST(7550.00 AS Numeric(18, 2)), CAST(N'2017-12-10T12:41:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (203, 48, N'EURES203', CAST(11990.00 AS Numeric(18, 2)), CAST(N'2017-12-12T14:41:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (204, 36, N'USDUS204', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2017-12-27T17:42:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (205, 37, N'GBPGB205', CAST(7500.00 AS Numeric(18, 2)), CAST(N'2017-12-27T12:42:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (206, 25, N'GBPGB206', CAST(56850.00 AS Numeric(18, 2)), CAST(N'2018-01-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (207, 21, N'GBPGB207', CAST(62500.00 AS Numeric(18, 2)), CAST(N'2018-01-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (208, 26, N'GBPGB208', CAST(42500.00 AS Numeric(18, 2)), CAST(N'2018-01-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (209, 51, N'USDUS209', CAST(65450.00 AS Numeric(18, 2)), CAST(N'2018-01-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (210, 52, N'GBPGB210', CAST(56950.00 AS Numeric(18, 2)), CAST(N'2018-01-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (211, 53, N'EURFR211', CAST(1950.00 AS Numeric(18, 2)), CAST(N'2018-01-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (212, 54, N'GBPGB212', CAST(1150.00 AS Numeric(18, 2)), CAST(N'2018-01-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (213, 55, N'EURDE213', CAST(11550.00 AS Numeric(18, 2)), CAST(N'2018-01-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (214, 45, N'GBPGB214', CAST(12570.00 AS Numeric(18, 2)), CAST(N'2018-01-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (215, 46, N'EURFR215', CAST(9890.00 AS Numeric(18, 2)), CAST(N'2018-01-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (216, 12, N'GBPGB216', CAST(56950.00 AS Numeric(18, 2)), CAST(N'2018-01-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (217, 32, N'EURES217', CAST(45950.00 AS Numeric(18, 2)), CAST(N'2018-01-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (218, 49, N'EURBE218', CAST(950.00 AS Numeric(18, 2)), CAST(N'2018-01-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (219, 35, N'EURFR219', CAST(21550.00 AS Numeric(18, 2)), CAST(N'2018-01-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (220, 21, N'GBPGB220', CAST(5950.00 AS Numeric(18, 2)), CAST(N'2018-01-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (221, 13, N'EURFR221', CAST(355000.00 AS Numeric(18, 2)), CAST(N'2018-01-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (222, 8, N'EURFR222', CAST(120000.00 AS Numeric(18, 2)), CAST(N'2018-02-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (223, 6, N'GBPCH223', CAST(121500.00 AS Numeric(18, 2)), CAST(N'2018-02-11T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (224, 9, N'USDUS224', CAST(182500.00 AS Numeric(18, 2)), CAST(N'2018-02-12T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (225, 56, N'GBPGB225', CAST(22500.00 AS Numeric(18, 2)), CAST(N'2018-02-13T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (226, 57, N'EURFR226', CAST(21500.00 AS Numeric(18, 2)), CAST(N'2018-02-14T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (227, 46, N'EURFR227', CAST(189500.00 AS Numeric(18, 2)), CAST(N'2018-02-17T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (228, 58, N'GBPCH228', CAST(55450.00 AS Numeric(18, 2)), CAST(N'2018-02-17T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (229, 59, N'GBPGB229', CAST(98950.00 AS Numeric(18, 2)), CAST(N'2018-02-17T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (230, 60, N'GBPGB230', CAST(355000.00 AS Numeric(18, 2)), CAST(N'2018-02-17T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (231, 28, N'EURFR231', CAST(6000.00 AS Numeric(18, 2)), CAST(N'2018-03-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (232, 39, N'EURES232', CAST(5690.00 AS Numeric(18, 2)), CAST(N'2018-03-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (233, 17, N'USDUS233', CAST(56900.00 AS Numeric(18, 2)), CAST(N'2018-03-08T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (234, 48, N'EURES234', CAST(368000.00 AS Numeric(18, 2)), CAST(N'2018-03-08T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (235, 46, N'EURFR235', CAST(310000.00 AS Numeric(18, 2)), CAST(N'2018-03-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (236, 45, N'GBPGB236', CAST(9800.00 AS Numeric(18, 2)), CAST(N'2018-03-19T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (237, 39, N'EURES237', CAST(15950.00 AS Numeric(18, 2)), CAST(N'2018-04-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (238, 31, N'GBPGB238', CAST(267950.00 AS Numeric(18, 2)), CAST(N'2018-04-09T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (239, 25, N'GBPGB239', CAST(155000.00 AS Numeric(18, 2)), CAST(N'2018-04-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (240, 36, N'USDUS240', CAST(2500.00 AS Numeric(18, 2)), CAST(N'2018-04-11T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (241, 28, N'EURFR241', CAST(9950.00 AS Numeric(18, 2)), CAST(N'2018-04-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (242, 36, N'USDUS242', CAST(39500.00 AS Numeric(18, 2)), CAST(N'2018-04-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (243, 38, N'GBPGB243', CAST(23500.00 AS Numeric(18, 2)), CAST(N'2018-04-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (244, 39, N'EURES244', CAST(45950.00 AS Numeric(18, 2)), CAST(N'2018-04-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (245, 51, N'USDUS245', CAST(55000.00 AS Numeric(18, 2)), CAST(N'2018-04-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (246, 56, N'GBPGB246', CAST(100000.00 AS Numeric(18, 2)), CAST(N'2018-04-20T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (247, 61, N'GBPGB247', CAST(44885.00 AS Numeric(18, 2)), CAST(N'2018-04-20T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (248, 62, N'GBPGB248', CAST(61500.00 AS Numeric(18, 2)), CAST(N'2018-04-22T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (249, 52, N'GBPGB249', CAST(950.00 AS Numeric(18, 2)), CAST(N'2018-04-23T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (250, 63, N'EURIT250', CAST(195000.00 AS Numeric(18, 2)), CAST(N'2018-04-24T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (251, 64, N'EURES251', CAST(52500.00 AS Numeric(18, 2)), CAST(N'2018-04-29T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (252, 3, N'GBPGB252', CAST(1350.00 AS Numeric(18, 2)), CAST(N'2018-05-03T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (253, 21, N'GBPGB253', CAST(2495.00 AS Numeric(18, 2)), CAST(N'2018-05-03T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (254, 35, N'EURFR254', CAST(269500.00 AS Numeric(18, 2)), CAST(N'2018-05-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (255, 65, N'USDUS255', CAST(195000.00 AS Numeric(18, 2)), CAST(N'2018-05-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (256, 66, N'GBPGB256', CAST(25950.00 AS Numeric(18, 2)), CAST(N'2018-05-23T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (257, 61, N'GBPGB257', CAST(9990.00 AS Numeric(18, 2)), CAST(N'2018-05-23T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (258, 63, N'EURIT258', CAST(135000.00 AS Numeric(18, 2)), CAST(N'2018-05-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (259, 62, N'GBPGB259', CAST(1250.00 AS Numeric(18, 2)), CAST(N'2018-05-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (260, 66, N'GBPGB260', CAST(6590.00 AS Numeric(18, 2)), CAST(N'2018-05-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (261, 35, N'EURFR261', CAST(89500.00 AS Numeric(18, 2)), CAST(N'2018-05-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (262, 31, N'GBPGB262', CAST(18500.00 AS Numeric(18, 2)), CAST(N'2018-05-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (263, 24, N'GBPCH263', CAST(3575.00 AS Numeric(18, 2)), CAST(N'2018-06-03T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (264, 67, N'EURBE264', CAST(6950.00 AS Numeric(18, 2)), CAST(N'2018-06-03T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (265, 2, N'GBPGB265', CAST(26500.00 AS Numeric(18, 2)), CAST(N'2018-06-16T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (266, 68, N'USDUS266', CAST(33500.00 AS Numeric(18, 2)), CAST(N'2018-06-18T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (267, 12, N'GBPGB267', CAST(24500.00 AS Numeric(18, 2)), CAST(N'2018-06-22T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (268, 25, N'GBPGB268', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2018-06-23T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (269, 38, N'GBPGB269', CAST(99990.00 AS Numeric(18, 2)), CAST(N'2018-07-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (270, 69, N'GBPGB270', CAST(6950.00 AS Numeric(18, 2)), CAST(N'2018-07-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (271, 70, N'GBPGB271', CAST(10500.00 AS Numeric(18, 2)), CAST(N'2018-07-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (272, 62, N'GBPGB272', CAST(33450.00 AS Numeric(18, 2)), CAST(N'2018-07-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (273, 54, N'GBPGB273', CAST(72500.00 AS Numeric(18, 2)), CAST(N'2018-07-25T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (274, 71, N'GBPGB274', CAST(2400.00 AS Numeric(18, 2)), CAST(N'2018-07-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (275, 72, N'GBPGB275', CAST(68500.00 AS Numeric(18, 2)), CAST(N'2018-07-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (276, 6, N'GBPCH276', CAST(2350.00 AS Numeric(18, 2)), CAST(N'2018-07-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (277, 56, N'GBPGB277', CAST(18500.00 AS Numeric(18, 2)), CAST(N'2018-07-30T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (278, 73, N'GBPGB278', CAST(5500.00 AS Numeric(18, 2)), CAST(N'2018-07-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (279, 74, N'EURES279', CAST(128500.00 AS Numeric(18, 2)), CAST(N'2018-07-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (280, 65, N'USDUS280', CAST(55000.00 AS Numeric(18, 2)), CAST(N'2018-07-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (281, 63, N'EURIT281', CAST(1250.00 AS Numeric(18, 2)), CAST(N'2018-07-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (282, 75, N'EURFR282', CAST(345000.00 AS Numeric(18, 2)), CAST(N'2018-07-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (283, 76, N'EURIT283', CAST(82590.00 AS Numeric(18, 2)), CAST(N'2018-07-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (284, 77, N'USDUS284', CAST(113590.00 AS Numeric(18, 2)), CAST(N'2018-08-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (285, 65, N'USDUS285', CAST(45000.00 AS Numeric(18, 2)), CAST(N'2018-08-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (286, 64, N'EURES286', CAST(57600.00 AS Numeric(18, 2)), CAST(N'2018-08-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (287, 45, N'GBPGB287', CAST(102500.00 AS Numeric(18, 2)), CAST(N'2018-08-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (288, 54, N'GBPGB288', CAST(39500.00 AS Numeric(18, 2)), CAST(N'2018-08-10T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (289, 78, N'GBPGB289', CAST(61550.00 AS Numeric(18, 2)), CAST(N'2018-08-11T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (290, 79, N'GBPGB290', CAST(55000.00 AS Numeric(18, 2)), CAST(N'2018-08-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (291, 80, N'EURDE291', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2018-08-16T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (292, 6, N'GBPCH292', CAST(56800.00 AS Numeric(18, 2)), CAST(N'2018-08-18T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (293, 36, N'USDUS293', CAST(89500.00 AS Numeric(18, 2)), CAST(N'2018-09-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (294, 16, N'EURFR294', CAST(72500.00 AS Numeric(18, 2)), CAST(N'2018-09-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (295, 14, N'GBPGB295', CAST(56950.00 AS Numeric(18, 2)), CAST(N'2018-09-01T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (296, 56, N'GBPGB296', CAST(62500.00 AS Numeric(18, 2)), CAST(N'2018-09-04T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (297, 48, N'EURES297', CAST(56890.00 AS Numeric(18, 2)), CAST(N'2018-09-04T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (298, 57, N'EURFR298', CAST(33600.00 AS Numeric(18, 2)), CAST(N'2018-09-08T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (299, 81, N'GBPGB299', CAST(30500.00 AS Numeric(18, 2)), CAST(N'2018-09-08T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (300, 82, N'EURFR300', CAST(50500.00 AS Numeric(18, 2)), CAST(N'2018-09-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (301, 78, N'GBPGB301', CAST(39500.00 AS Numeric(18, 2)), CAST(N'2018-09-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (302, 76, N'EURIT302', CAST(12500.00 AS Numeric(18, 2)), CAST(N'2018-09-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (303, 69, N'GBPGB303', CAST(5600.00 AS Numeric(18, 2)), CAST(N'2018-10-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (304, 83, N'EURFR304', CAST(69500.00 AS Numeric(18, 2)), CAST(N'2018-10-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (305, 84, N'GBPCH305', CAST(45000.00 AS Numeric(18, 2)), CAST(N'2018-10-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (306, 65, N'USDUS306', CAST(56990.00 AS Numeric(18, 2)), CAST(N'2018-10-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (307, 77, N'USDUS307', CAST(86500.00 AS Numeric(18, 2)), CAST(N'2018-10-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (308, 85, N'GBPGB308', CAST(17850.00 AS Numeric(18, 2)), CAST(N'2018-10-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (309, 86, N'EURFR309', CAST(25950.00 AS Numeric(18, 2)), CAST(N'2018-10-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (310, 87, N'GBPGB310', CAST(29500.00 AS Numeric(18, 2)), CAST(N'2018-10-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (311, 05, N'EURFR311', CAST(59000.00 AS Numeric(18, 2)), CAST(N'2018-10-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (312, 65, N'USDUS312', CAST(9500.00 AS Numeric(18, 2)), CAST(N'2018-10-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (313, 35, N'EURFR313', CAST(8900.00 AS Numeric(18, 2)), CAST(N'2018-11-02T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (314, 24, N'GBPCH314', CAST(11590.00 AS Numeric(18, 2)), CAST(N'2018-11-15T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (315, 19, N'GBPGB315', CAST(8500.00 AS Numeric(18, 2)), CAST(N'2018-11-22T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (316, 20, N'USDUS316', CAST(59500.00 AS Numeric(18, 2)), CAST(N'2018-12-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (317, 40, N'EURIT317', CAST(123500.00 AS Numeric(18, 2)), CAST(N'2018-12-05T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (318, 60, N'GBPGB318', CAST(99500.00 AS Numeric(18, 2)), CAST(N'2018-12-08T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (319, 59, N'GBPGB319', CAST(56090.00 AS Numeric(18, 2)), CAST(N'2018-12-08T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (320, 48, N'EURES320', CAST(11500.00 AS Numeric(18, 2)), CAST(N'2018-12-16T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (321, 36, N'USDUS321', CAST(17950.00 AS Numeric(18, 2)), CAST(N'2018-12-17T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (322, 35, N'EURFR322', CAST(5500.00 AS Numeric(18, 2)), CAST(N'2018-12-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (323, 30, N'GBPGB323', CAST(950.00 AS Numeric(18, 2)), CAST(N'2018-12-31T00:00:00.000' AS DateTime))
GO
INSERT [Data].[Sales] ([SalesID], [CustomerID], [InvoiceNumber], [TotalSalePrice], [SaleDate]) VALUES (324, 87, N'GBPGB324', CAST(145000.00 AS Numeric(18, 2)), CAST(N'2018-12-31T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [Data].[Sales] OFF
GO