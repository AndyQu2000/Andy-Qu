SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

GO
CREATE SCHEMA [udt]
GO

GO
CREATE TYPE [udt].SurrogateKeyInt FROM INT NOT NULL;

CREATE TYPE [udt].[Name] FROM VARCHAR (50) NULL;

CREATE TYPE [udt].Price FROM NUMERIC (18, 2) NULL;
GO


DROP TABLE [Data].SalesDetails

GO
CREATE TABLE [Data].[SalesDetails](
	[SalesDetailsID] [udt].SurrogateKeyInt IDENTITY(1,1) NOT NULL,
	[SalesID] [udt].SurrogateKeyInt NOT NULL,
	[LineItemNumber] [tinyint] NULL,
	[StockID] [udt].Name NULL,
	[SalePrice] [udt].Price NULL,
	[LineItemDiscount] [udt].Price NULL
) ON [PRIMARY]
GO


ALTER TABLE [Data].[SalesDetails]
	ADD CONSTRAINT PK_SalesDetails PRIMARY KEY (SalesDetailsID),
	CONSTRAINT FK_Sales_Stock FOREIGN KEY ([StockID])  REFERENCES [Data].Stock (StockCode)

SELECT * FROM Data.SalesDetails



GO
SET IDENTITY_INSERT [Data].[SalesDetails] ON 
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (1, 1, 1, N'B1C3B95E-3005-4840-8CE3-A7BC5F9CFB3F', CAST(65000.00 AS Numeric(18, 2)), CAST(2700.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (2, 2, 1, N'A2C3B95E-3005-4840-8CE3-A7BC5F9CFB5F', CAST(220000.00 AS Numeric(18, 2)), CAST(60000.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (3, 3, 1, N'558620F5-B9E8-4FFF-8F73-A83FA9559C41', CAST(19500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (4, 4, 1, N'72443561-FAC4-4C25-B8FF-0C47361DDE2D', CAST(11500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (5, 5, 1, N'2189D556-D1C4-4BC1-B0C8-4053319E8E9D', CAST(19950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (6, 6, 1, N'C1459308-7EA5-4A2D-82BC-38079BB4049B', CAST(29500.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (7, 7, 1, N'E6E6270A-60B0-4817-AA57-17F26B2B8DAF', CAST(49500.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (8, 8, 1, N'CEDFB8D2-BD98-4A08-BC46-406D23940527', CAST(76000.00 AS Numeric(18, 2)), CAST(5500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (9, 9, 1, N'6081DBE7-9AD6-4C64-A676-61D919E64979', CAST(19600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (10, 10, 1, N'D63C8CC9-DB19-4B9C-9C8E-6C6370812041', CAST(36500.00 AS Numeric(18, 2)), CAST(2500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (11, 11, 1, N'F3A2712D-20CA-495D-9F6A-8A4CA195248D', CAST(8500.00 AS Numeric(18, 2)), CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (12, 11, 2, N'4C57F13A-E21B-4AAC-9E9D-A219D4C691C6', CAST(80500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (13, 12, 1, N'98C1E31A-4258-4F78-95D4-2365167E6F3F', CAST(169500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (14, 13, 1, N'951195C4-7B69-418B-9AC2-61CCB7FE7C09', CAST(8950.00 AS Numeric(18, 2)), CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (15, 14, 1, N'91CF8133-EF19-4C92-BEFB-6A24FD85EF3A', CAST(195000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (16, 15, 1, N'BCCB9C13-AEDA-4467-A014-48F0C7A0D6A4', CAST(22950.00 AS Numeric(18, 2)), CAST(950.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (17, 16, 1, N'94FF5451-471C-4F17-BE27-BA55D3ECF5DC', CAST(8695.00 AS Numeric(18, 2)), CAST(95.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (18, 17, 1, N'325F4D73-D44A-44BD-B109-AD25D924D38F', CAST(22990.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (19, 18, 1, N'FDCDF3F0-F0AD-4E7F-8793-8B146700D035', CAST(19500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (20, 18, 2, N'34CEE6C8-985B-4005-AB2F-AD3235C6A16D', CAST(56000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (21, 19, 1, N'BEECAE2C-0A38-473D-893F-7C8917A779C2', CAST(5500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (22, 20, 1, N'5672C4AF-78E1-4BA4-B1D1-19383DCBE43C', CAST(12650.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (23, 21, 1, N'F95052DB-3E09-4070-ADA4-5114CCAD96C0', CAST(8950.00 AS Numeric(18, 2)), CAST(950.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (24, 22, 1, N'646C802F-C868-40F0-AF81-1BF387AFB82B', CAST(15600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (25, 23, 1, N'1BB4B941-79F4-4E98-9E13-46875CA7EB67', CAST(22600.00 AS Numeric(18, 2)), CAST(600.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (26, 24, 1, N'18E980AB-452D-42EF-8728-12822AD20C60', CAST(123590.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (27, 25, 1, N'F2DE934E-62C3-45F6-AFA8-2FFA963F5360', CAST(22950.00 AS Numeric(18, 2)), CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (28, 26, 1, N'0CC75388-9A95-4F14-8D9A-8373E3B44D8A', CAST(69500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (29, 27, 1, N'5CCF4F6B-43B3-4C7F-B674-6CAFD056E52A', CAST(12500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (30, 28, 1, N'E264504D-3451-4670-AAB8-E4C66F2387B0', CAST(12500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (31, 29, 1, N'A926BB6C-FC26-4EBB-997E-2DF7EDC48E92', CAST(159500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (32, 30, 1, N'202B3C90-188F-413E-A44A-B99F16F03464', CAST(165000.00 AS Numeric(18, 2)), CAST(5000.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (33, 31, 1, N'486C65E8-5CB9-4A33-9507-E2E5E3CB91CC', CAST(2550.00 AS Numeric(18, 2)), CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (34, 32, 1, N'3F3BED8D-1203-4D3E-8AC0-3ACAC73BDE17', CAST(29500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (35, 33, 1, N'281946B6-D061-455A-801B-A0EDF3E37530', CAST(12650.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (36, 34, 1, N'98A92DA3-2B99-4625-998B-2BB2FBB8F167', CAST(56950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (37, 35, 1, N'A9D335E7-2389-4DE1-9484-DC4EC6BA81D4', CAST(56000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (38, 36, 1, N'53C088BA-6E14-4758-826A-56FC57D3EEDA', CAST(65890.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (39, 36, 2, N'6C76FDEC-683F-45E1-B027-20ACFD2F501C', CAST(6000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (40, 37, 1, N'A7A80CA3-06D6-40AF-A558-09146A650340', CAST(39500.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (41, 38, 1, N'A2112C27-FE1F-48C5-A3BE-A019EE17DDD6', CAST(3650.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (42, 39, 1, N'88AFBF67-13A6-4BC5-AE50-8C64F0F25453', CAST(220500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (43, 40, 1, N'11790E1E-859C-4E05-B6B3-6D72DDCC8DAE', CAST(102950.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (44, 41, 1, N'B165CAEF-FF77-4E63-98C1-59D97F97E7C9', CAST(17500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (45, 42, 1, N'CE0A56A6-8218-4F4C-A0E2-63F3DC9E4AE6', CAST(8800.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (46, 43, 1, N'23E7F9FA-67D4-47C1-8D66-F1CFBC33540F', CAST(99500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (47, 44, 1, N'07F0D746-085B-4FB9-9F82-6CEAC851FBC3', CAST(17500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (48, 45, 1, N'7BABE805-CE07-4C06-AAF1-6B5D83645CD8', CAST(12500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (49, 46, 1, N'D7BF8DD9-1841-4FDE-8469-66B09FA30A74', CAST(9950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (50, 46, 2, N'8F278478-CA0B-4CDB-8F02-1A054AAE88A9', CAST(39500.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (51, 47, 1, N'4FFB74AD-C031-4BD9-9589-A87F462E6842', CAST(49580.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (52, 48, 1, N'055F7639-30EA-4975-A8CB-29F5C1C1C48E', CAST(5500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (53, 49, 1, N'518125AE-9A67-45A6-B3FD-557C785796FC', CAST(22150.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (54, 50, 1, N'65F89D52-9B2D-4363-8A07-4A5CE90197DB', CAST(35000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (55, 51, 1, N'54A66D7C-9E0B-40E9-B1B1-CA655F060CDE', CAST(29650.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (56, 51, 2, N'D93AF620-4F69-475A-98ED-829E0F8A3A40', CAST(45500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (57, 51, 3, N'0BE222D6-9254-4FC8-892D-76563CA81F9B', CAST(99500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (58, 52, 1, N'521659A4-8FF2-441A-8D2E-C584D561301F', CAST(15650.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (59, 53, 1, N'66CCEBEA-00EA-44B3-BBFE-AC5EC2DE456D', CAST(12500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (60, 54, 1, N'B36188E4-3684-4337-91FE-84BB33736476', CAST(195000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (61, 55, 1, N'66C9034C-23A3-44F1-B946-2DDA65E684D8', CAST(205000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (62, 56, 1, N'E00D10E9-7F7F-49A9-BDC0-4C2611580B4E', CAST(66500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (63, 57, 1, N'AAF61ECC-0BAC-4EAF-9E50-01749253329A', CAST(19500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (64, 58, 1, N'A1A4180E-B929-467D-91A6-73D2D0F34C65', CAST(79500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (65, 59, 1, N'B5E7DD25-9D69-464C-9327-A8C5E706F534', CAST(14590.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (66, 60, 1, N'0B0E0FC2-E72B-4BD4-9C46-1AF98F17BEC4', CAST(12750.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (67, 61, 1, N'356EE84B-F4FD-4923-9423-D58E2863E9A1', CAST(45600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (68, 62, 1, N'92D7DE8E-0BA7-4221-B2B1-A01F7FAFDD3E', CAST(6500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (69, 63, 1, N'5BE0098D-511F-4CF1-B87C-2CE2532F1B31', CAST(102500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (70, 64, 1, N'BDC5E621-D976-478D-A620-A0751FCBEF96', CAST(99500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (71, 65, 1, N'72EF5AA5-997C-4AC0-A32E-591D1E009818', CAST(12500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (72, 66, 1, N'4BFD3782-0B79-4F4E-981A-96CEF827497F', CAST(61500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (73, 67, 1, N'E6E23C74-39AF-4A44-BAAE-7CD48B0F6161', CAST(79500.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (74, 68, 1, N'420701D6-5F66-4885-8A72-8B54541965A6', CAST(16500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (75, 68, 2, N'870C2B0A-A6AE-4F84-91EF-806C985A02E5', CAST(33600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (76, 69, 1, N'6BF8C577-E615-4667-A48C-25E8D825AAC6', CAST(66500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (77, 70, 1, N'98C3863B-7A70-4FAD-B3C7-2B5702956E18', CAST(45000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (78, 71, 1, N'8C1E8506-711C-442A-89A4-EDA28EB5B788', CAST(19500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (79, 72, 1, N'BC4D491E-764B-48AE-BEDC-07DE123B7200', CAST(76500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (80, 73, 1, N'4C00023A-47C5-4F98-A9B1-F222EDE2F563', CAST(45900.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (81, 74, 1, N'170FAF32-4223-4806-B483-D89F4D38AC16', CAST(125000.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (82, 75, 1, N'9CFAF367-ED4B-4A3E-8CB2-394F1F7A58C1', CAST(65500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (83, 76, 1, N'126C36BB-9C33-4BC5-9127-F941731DD0C8', CAST(92150.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (84, 77, 1, N'98B3C1C2-7AE2-4A88-A3C9-484483C6EC66', CAST(9500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (85, 78, 1, N'4A40B2AA-A76B-4C08-A59B-19CDE0ED868C', CAST(9950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (86, 79, 1, N'100EE806-DFE5-4C5E-9AB4-8F881615F8BD', CAST(5680.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (87, 80, 1, N'00DDC5C0-E266-49E4-A785-E4F8BC3C9B24', CAST(19500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (88, 81, 1, N'97AFC7D5-91BF-47E3-8568-01B704E956C2', CAST(3500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (89, 82, 1, N'6A2699A6-ED27-42A9-B811-06D19EB5FA3C', CAST(3950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (90, 83, 1, N'70C9BE5C-3CCA-4FB2-B4DE-E5F0A61BB84D', CAST(20950.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (91, 84, 1, N'B76D6985-E106-4213-AACC-288088795C92', CAST(7500.00 AS Numeric(18, 2)), CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (92, 85, 1, N'955E8BC5-C31B-4EE5-A48D-76517063C334', CAST(56500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (93, 86, 1, N'2FCD3EBC-CBA7-4B3C-B6A0-A3A011D3A47B', CAST(49500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (94, 87, 1, N'155E940E-7AA7-47EA-B83F-B3521F0B5718', CAST(68900.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (95, 88, 1, N'B25CB659-C0A2-451E-AADB-7A006414D6E1', CAST(55000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (96, 89, 1, N'19D1000C-178F-4BBA-9B19-C93804D047AC', CAST(3575.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (97, 90, 1, N'DD6A0129-40CF-449F-8427-1C97BF14B2BD', CAST(35250.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (98, 91, 1, N'66D70810-1EE2-4BCA-B1B4-1E5B86C75002', CAST(19600.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (99, 91, 2, N'384778FF-C28D-4FE6-9BEF-D787EFDC23CF', CAST(27890.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (100, 92, 1, N'B760CF74-6468-4A0D-9485-36C7F7710EB0', CAST(45950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (101, 93, 1, N'E1350CBE-B916-4F18-B5BF-F7D53A31205A', CAST(9950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (102, 94, 1, N'9D74A1A9-7342-4FEA-9C21-6AC4EFE92018', CAST(6550.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (103, 94, 2, N'C001858B-0B5D-4648-8F0D-80269964C921', CAST(156500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (104, 95, 1, N'BB4B9483-7AE3-47B4-A788-7EB5D12A7516', CAST(76500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (105, 96, 1, N'6120D922-6703-4267-969B-A9A9D3CAE787', CAST(119600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (106, 97, 1, N'30DC26F7-E98B-4FE8-B834-D625EC7E12F3', CAST(85650.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (107, 97, 2, N'34A69512-CDC3-4BEB-ADCB-AAE360CA7CF4', CAST(9950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (108, 98, 1, N'3EDC8773-9603-4D38-9DC9-64E1C4768F7D', CAST(12500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (109, 99, 1, N'9FF62C70-89E4-4815-912F-C5DFBF8BDF0F', CAST(12500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (110, 100, 1, N'EC25FA02-2692-42E1-85A0-71F0775C8F8A', CAST(56890.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (111, 101, 1, N'E368D03E-239C-499F-A41A-CC4D2AE1AFF8', CAST(55000.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (112, 102, 1, N'4C1762AE-F7FD-4F2C-875B-CAC022B0DF63', CAST(9990.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (113, 102, 2, N'DB8869B2-1EC0-48D5-9DA6-FDF1665155F0', CAST(46500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (114, 102, 3, N'DD651733-FE5C-46B9-AC97-727F8CD170A6', CAST(9500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (115, 102, 4, N'F810FAB0-6BAE-4AC0-BDBC-F14A71AC35B9', CAST(125500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (116, 103, 1, N'3CF2C0F8-21E1-4ADE-AE72-AB9DFE3790DD', CAST(99500.00 AS Numeric(18, 2)), CAST(5000.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (117, 104, 1, N'A017241D-3A92-4EA7-A3EE-22FC119542F8', CAST(60500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (118, 105, 1, N'4537B83B-2444-4389-B2DE-F30E15608163', CAST(123500.00 AS Numeric(18, 2)), CAST(5000.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (119, 106, 1, N'7CEA62B1-9CBE-4E13-BECC-54E7EED128EF', CAST(25000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (120, 107, 1, N'102A734C-3212-4708-85A5-A96FE8E14641', CAST(169500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (121, 108, 1, N'9B8B87E1-7770-4136-8EB4-B7173C8783A6', CAST(99500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (122, 109, 1, N'C0E2E06D-AE60-4223-9E7C-B8387F2A4335', CAST(39500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (123, 110, 1, N'3EEC687A-759C-4D8A-8776-E257E8230376', CAST(22500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (124, 111, 1, N'09FA3947-726D-4987-B9DD-2F4CF7CD7C45', CAST(125000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (125, 112, 1, N'52CE8210-53B8-4C09-B821-6389A09733C5', CAST(85000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (126, 113, 1, N'DE44149E-1225-4B7C-97E5-8089A4F21C1C', CAST(1250.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (127, 114, 1, N'CF9A23D7-6F8A-4CA6-A037-95EA7385B539', CAST(22500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (128, 115, 1, N'98299E86-0B98-42D8-A549-37D89435B4E3', CAST(125950.00 AS Numeric(18, 2)), CAST(12500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (129, 116, 1, N'DD8D9340-29B0-4E0D-89B3-BD33B70E087D', CAST(8850.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (130, 117, 1, N'BBDFB7CF-FBA6-4463-BC1E-FE79522431EE', CAST(9950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (131, 118, 1, N'47077B33-09BC-4FF2-B71B-58E243952BAA', CAST(56500.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (132, 119, 1, N'A48E5430-ACA4-41FD-BC6F-446BE2B46DF8', CAST(55000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (133, 120, 1, N'E869D5E4-CAC0-48ED-8961-03D0405EA2FD', CAST(56950.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (134, 121, 1, N'74DD8FE1-B205-4400-A951-1E54E7C22E40', CAST(365000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (135, 122, 1, N'7392B5F6-783C-4D4B-B687-74A98411A7CB', CAST(395000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (136, 123, 1, N'01B087C6-00D1-40B2-808F-B4B5BC1E344D', CAST(21500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (137, 124, 1, N'11BCE306-33ED-4C8D-9198-2A4B653D9F8A', CAST(6500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (138, 125, 1, N'6943ADF3-01A4-4281-B0CE-93384FE60418', CAST(12500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (139, 126, 1, N'A08FCF25-5B27-4215-BF50-E94D0F7C8CD6', CAST(2250.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (140, 127, 1, N'8F100F91-FE3C-4338-AA52-7BF61A540199', CAST(3500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (141, 128, 1, N'84BE4607-F8D7-49DA-8C27-D87FE529DF96', CAST(5680.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (142, 129, 1, N'EB59DB36-5E67-4AF1-AE8A-46E8999EEF45', CAST(8550.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (143, 130, 1, N'7372D1C7-800F-4DE4-B3BC-FFA46CE77099', CAST(156500.00 AS Numeric(18, 2)), CAST(10000.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (144, 131, 1, N'E267042F-449B-4CA9-8BDE-5C197DC8A647', CAST(56500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (145, 132, 1, N'2C377634-90F1-4BC1-A366-0F0EBD26910D', CAST(86500.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (146, 133, 1, N'49D19AE8-FBBF-496C-BC1E-9450544DD193', CAST(66500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (147, 134, 1, N'0B3AEBF5-0997-447D-B0E8-B399B7343742', CAST(55600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (148, 135, 1, N'643800B3-AD63-4B67-8ACF-672B91F04C57', CAST(305000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (149, 136, 1, N'EDCCE461-5DA8-4E2E-8F08-798431841575', CAST(45000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (150, 137, 1, N'7F08368D-B6EA-4DFC-A1EC-B1A1B0221F04', CAST(225000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (151, 138, 1, N'0588AA57-B6B5-47F5-910F-5A1099B0476D', CAST(42950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (152, 139, 1, N'32C41EC9-CB3C-4D0F-9C85-2500CE2E4813', CAST(990.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (153, 140, 1, N'1909CD9B-9C06-4CFB-B8AD-292967E55E2F', CAST(29500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (154, 141, 1, N'1B77D0BA-45C9-4C76-952E-B2FA2859B7AB', CAST(139500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (155, 142, 1, N'CD06C0DF-D3A2-4593-BF40-7DAE6B73F58C', CAST(295000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (156, 143, 1, N'08B3555E-47A2-4365-AED8-2DF054FF73E2', CAST(220500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (157, 144, 1, N'C1A812F1-5FA1-48BA-8787-16F2F0A704BC', CAST(79500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (158, 145, 1, N'05AB94D5-2F8D-4B06-878D-615956C94EC2', CAST(162500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (159, 146, 1, N'B607E8E1-5ECA-4DE2-BC46-909DBF9371D3', CAST(79500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (160, 147, 1, N'7A12CA8A-DC67-4A4F-B6F4-8B150873523A', CAST(65890.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (161, 148, 1, N'4A4A1D5E-1682-4ACA-A60D-0072693FE190', CAST(61500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (162, 149, 1, N'C4ACB04E-C8D4-465E-8D66-8BA033443D61', CAST(12500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (163, 150, 1, N'5D11974B-326C-44C5-BA1D-57968CAB0DEE', CAST(255000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (164, 151, 1, N'F8B48177-FB78-4245-935F-FB6FBCE8D870', CAST(255950.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (165, 152, 1, N'6AEAC4F1-4C81-4FAA-A97C-3DCC0E6CB5DE', CAST(250000.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (166, 153, 1, N'A5BDB4E0-1544-449F-8596-D63D70548675', CAST(6500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (167, 154, 1, N'06FD2864-8415-44A5-B022-B98BEFB7E490', CAST(9250.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (168, 155, 1, N'ECC534C7-B2DD-425C-98D3-98D2332B373C', CAST(950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (169, 156, 1, N'589E8DB1-B2D4-4921-A11B-9A2A80EA73D9', CAST(295000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (170, 157, 1, N'BD15948E-42F0-41BC-920C-343E0816B0AB', CAST(99500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (171, 158, 1, N'E0760EF4-3939-4063-821F-5923EF8760B4', CAST(33500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (172, 159, 1, N'D3C15454-EF60-415F-860D-99D41F0A485F', CAST(45000.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (173, 160, 1, N'DF5411FC-24C5-4CAB-89DF-54741054D8DD', CAST(36500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (174, 160, 2, N'8BB5BBD3-E03C-457C-86E2-67199FCB302A', CAST(77500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (175, 161, 1, N'3A0070F8-C340-4B6F-9F36-4A1CBDB39FE9', CAST(2350.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (176, 162, 1, N'638FCDD5-AFFF-4DCA-AAEC-17F527FB9D02', CAST(32500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (177, 163, 1, N'0C3EBD09-B9DF-414D-AD00-90F5819812D0', CAST(45000.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (178, 164, 1, N'8BB7FF86-2D80-40B7-B216-254C16843529', CAST(8500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (179, 165, 1, N'57E2BA34-6397-448F-8A8C-1306CC922231', CAST(99500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (180, 166, 1, N'2EE943CB-2473-4333-8626-FC94FCD0947E', CAST(25000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (181, 167, 1, N'1A80A54C-D98D-41D6-87EE-8F67F3B06FA8', CAST(19500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (182, 168, 1, N'D32D55B7-3546-4CCA-B4C0-DBA976572CA2', CAST(12950.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (183, 169, 1, N'D05D6642-FABF-4F56-8A7E-D8C47A8AAB70', CAST(5650.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (184, 170, 1, N'658F0B06-2357-4DAA-803C-4DD7F569F270', CAST(29500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (185, 171, 1, N'760F5558-3C9E-4B70-A412-0448B90B0D89', CAST(3950.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (186, 171, 2, N'B09E4DDD-C2DD-45BE-B5F1-19FBF5970352', CAST(29500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (187, 171, 3, N'B4CC6E9A-8473-4A84-A811-73EABAFDC582', CAST(12500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (188, 172, 1, N'2595D5C0-5002-464B-8F2B-C873FB29B4F9', CAST(99950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (189, 173, 1, N'D69ABA72-1B0D-4073-8B7D-D6CA65C4DDF7', CAST(335000.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (190, 174, 1, N'332CE8D2-E19F-4656-BCC6-E3E45AD09D85', CAST(56500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (191, 175, 1, N'306507B9-D2E1-4C5D-8F01-C93C90C93B6E', CAST(99500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (192, 176, 1, N'2B0FC8E5-82CB-4804-8691-0586F2255E9E', CAST(135000.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (193, 177, 1, N'ACB85DBA-4914-4222-8D24-6D87B0DAE10A', CAST(89500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (194, 178, 1, N'23E43063-5402-4946-8830-0723F6B3CE1C', CAST(165000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (195, 179, 1, N'E59BFE04-E70B-4BAC-9269-ADC311ED0032', CAST(22600.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (196, 180, 1, N'8979136A-B34A-4CD3-B119-A6B158D15FFF', CAST(32675.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (197, 181, 1, N'34A4BB21-60B3-4B0D-8DDB-8189C471A581', CAST(45000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (198, 182, 1, N'AFAF5C3E-80C9-4C5A-9D2A-CDD238E40264', CAST(5500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (199, 183, 1, N'7FCABEE5-E116-4AE3-B7B1-483C2F0D18CA', CAST(55000.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (200, 184, 1, N'B84575EE-2E61-482C-8B72-5A6A90ADC3FE', CAST(49500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (201, 185, 1, N'DB2AF439-6293-4925-B905-1A57A0118B1A', CAST(250000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (202, 186, 1, N'15108517-AD0C-4FF2-A7D4-57679C374A68', CAST(155000.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (203, 187, 1, N'10AD713C-C997-48BB-A5FB-F0B5FD26479B', CAST(15750.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (204, 188, 1, N'C1C9D15D-9E57-4D22-8997-D1333EEC6B13', CAST(19500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (205, 189, 1, N'8A275CE2-D116-49F7-8571-FD91F21ADAAA', CAST(235000.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (206, 190, 1, N'009A5323-23E5-48BE-95DB-BA94E1897419', CAST(25000.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (207, 191, 1, N'EBE7AD85-117F-4781-A5E5-13920EE2B546', CAST(245000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (208, 192, 1, N'B822FA7C-5FA5-4F17-A3A6-7199CB00F7F8', CAST(39500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (209, 192, 2, N'1A210C04-C981-4EA4-83B9-A6E76B5B9BDB', CAST(49500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (210, 193, 1, N'ECD53BA8-3C63-4938-92C4-C955AEA6C4BC', CAST(23500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (211, 193, 2, N'26199C63-95B5-419B-A827-C0EEAF594A5B', CAST(10500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (212, 194, 1, N'C9D8FCFE-4A88-479C-A2CA-E2474AF4D8DF', CAST(11500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (213, 194, 2, N'05D4115C-3F27-4059-BDC8-C0C3FFC85E8B', CAST(51200.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (214, 195, 1, N'B503DD91-24FA-4F4A-AF49-1EB15347A33D', CAST(45950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (215, 196, 1, N'896B39D5-8040-4947-94D0-0234B4E78B23', CAST(21600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (216, 197, 1, N'38264675-F235-412B-9B67-8F8CD86CF40D', CAST(25000.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (217, 198, 1, N'2657F22B-5D29-4A7A-B3F9-3A04C14D7C93', CAST(23600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (218, 199, 1, N'9BFDC1FA-8416-4F58-BE6C-3CCFA7A51860', CAST(99950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (219, 200, 1, N'A88F114F-3808-4B2D-92BE-BD43EEA71742', CAST(46900.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (220, 201, 1, N'1860F37A-EBC7-42E9-B339-3F6D6048322F', CAST(45950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (221, 202, 1, N'00E07EB4-4A3A-434F-B3FC-76A312BEEF5D', CAST(7550.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (222, 203, 1, N'C72ABA1C-D1FA-4A4B-9E16-9FE066D509BA', CAST(11990.00 AS Numeric(18, 2)), CAST(900.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (223, 204, 1, N'B8F3827A-5689-42B9-A1DE-26AFE7E2343E', CAST(12500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (224, 205, 1, N'A21CAFB1-7242-42D1-80AC-E5D26941E2BE', CAST(7500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (225, 206, 1, N'76D2E902-DF33-4BE5-8181-B9DA01869131', CAST(56850.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (226, 207, 1, N'61B73BA2-9EA0-4DB9-8D89-6E8D2A5D32DA', CAST(62500.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (227, 208, 1, N'8BED3FBE-29EA-48AF-A8CE-7770F51A548F', CAST(42500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (228, 209, 1, N'B0559A26-5CE0-4C70-89EC-C73C0837B1E8', CAST(65450.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (229, 210, 1, N'2CE57C5E-98DE-402F-884A-A6227FD7FB5F', CAST(56950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (230, 211, 1, N'99DF9E69-9DAF-4D81-8334-D7058F1030E2', CAST(1950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (231, 212, 1, N'D231E90A-140A-4623-AA79-16970966DDF3', CAST(1150.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (232, 213, 1, N'26122425-FE14-4318-8713-15C8F9EED630', CAST(11550.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (233, 214, 1, N'80B21E0F-66E3-4582-838A-D7EC560C7C0B', CAST(12570.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (234, 215, 1, N'8D9BF815-FAE4-47CE-ADBB-33339D382319', CAST(9890.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (235, 216, 1, N'F6C384B6-B768-4031-AC12-81C8CE37049E', CAST(56950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (236, 217, 1, N'F9EF8BCC-5744-4EBC-91AD-739775C597D9', CAST(45950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (237, 218, 1, N'457046F9-68AC-468E-9C5E-9C1B957FE9B9', CAST(950.00 AS Numeric(18, 2)), CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (238, 219, 1, N'3DCFE242-5286-404C-A37E-5207E6F51BB1', CAST(21550.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (239, 220, 1, N'BF9128E0-D61A-4214-8128-44A9880E20C2', CAST(5950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (240, 221, 1, N'808F1237-9F5C-484F-8E14-63FF713A864D', CAST(365000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (241, 222, 1, N'790E96BC-2F59-4B8F-9DE2-6BB65F92216B', CAST(120000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (242, 223, 1, N'88975E00-70FD-44B6-9A1F-9E3B9CCE4382', CAST(17850.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (243, 223, 2, N'6218BE0E-185B-4B12-8696-AA976EA81B29', CAST(103650.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (244, 224, 1, N'03AC7842-CA66-4AC0-92AD-F538494D1FAE', CAST(182500.00 AS Numeric(18, 2)), CAST(17500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (245, 225, 1, N'7FF88424-96A2-4149-ABF3-21AC9FBCDD4C', CAST(22500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (246, 226, 1, N'48437CA9-988E-42EA-94F8-DC2D6DA48BA7', CAST(21500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (247, 227, 1, N'2319EA77-F4D9-4E34-9771-C42DCA3E210C', CAST(189500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (248, 228, 1, N'A6FCB276-6311-4B3E-9C99-23F197952F1C', CAST(55450.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (249, 229, 1, N'89C3293F-F665-4E93-9929-315CBA3DD498', CAST(98950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (250, 230, 1, N'59650ADF-0886-43B4-B360-3A79E0CA327E', CAST(355000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (251, 231, 1, N'4BA7F44F-422D-4AD2-84B3-2AE4F0028DB8', CAST(6000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (252, 232, 1, N'1DDF23D7-3CB8-49C7-A19B-2A9C5AB23ADF', CAST(5690.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (253, 233, 1, N'A2201698-CA26-428A-988F-ABB4A8893E21', CAST(56900.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (254, 234, 1, N'F556C096-7EFE-4827-9AFF-2FD0416B1C9B', CAST(145000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (255, 234, 2, N'9868BF47-F113-4721-BF95-26FEF8DD51D2', CAST(99500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (256, 234, 3, N'C7086D43-16DA-444F-A461-76DA9C479425', CAST(123500.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (257, 235, 1, N'20041639-9549-415A-AEC2-7159352E8CB7', CAST(310000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (258, 236, 1, N'AF51E444-D0BE-477F-8834-615824E0A89C', CAST(9800.00 AS Numeric(18, 2)), CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (259, 237, 1, N'FAB39B43-A811-4410-A69A-707C35C767E7', CAST(15950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (260, 238, 1, N'A23F2E70-66D3-44A1-982C-ADE1ECA9CC30', CAST(255000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (261, 238, 2, N'BFC6861C-8D2E-40C8-A4F7-07F9E41056DC', CAST(12950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (262, 239, 1, N'07E4BA14-7B78-4B11-9A11-1520460A5631', CAST(155000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (263, 240, 1, N'9E98DDEF-D2A3-4BEC-99DD-BEFEFC11E5EE', CAST(2500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (264, 241, 1, N'43195E1A-46B2-4554-B1A9-C849B1C0B53B', CAST(9950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (265, 242, 1, N'7808CA65-E449-4280-A128-F5B581F47B8F', CAST(39500.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (266, 243, 1, N'B2D76C72-FA30-40AE-9AB9-DFB47560348C', CAST(23500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (267, 244, 1, N'C19B3F44-9EA7-49FF-953A-86BF48B55615', CAST(45950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (268, 245, 1, N'A0F4D013-88EB-4692-B5EE-6BA800593036', CAST(55000.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (269, 246, 1, N'9CD9439F-E15F-4469-BE82-7A4041633A50', CAST(100000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (270, 247, 1, N'87A6B5EF-1E2B-49CA-85D7-263BC7E32189', CAST(44885.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (271, 248, 1, N'361E0EFF-56B8-4E0A-A1DD-41D4A51BF704', CAST(61500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (272, 249, 1, N'B89AF48B-4BB9-409B-876B-941E51D19381', CAST(950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (273, 250, 1, N'A326183E-7D45-4CF2-A353-7177A3EAB71F', CAST(195000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (274, 251, 1, N'266404D4-FBC5-4DC6-BB7C-A2ED7246D6D7', CAST(52500.00 AS Numeric(18, 2)), CAST(1575.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (275, 252, 1, N'798C76AF-985B-4B9F-B24A-4B4311AE2A08', CAST(1350.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (276, 253, 1, N'71C9EDC5-7897-4CCE-9B2F-5B04BEDC36D0', CAST(2495.00 AS Numeric(18, 2)), CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (277, 254, 1, N'61F8CF9A-F53C-4386-9BF8-578F54547CD2', CAST(269500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (278, 255, 1, N'FF62897D-E06C-4BC1-B5EA-E6BE415B0CD1', CAST(195000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (279, 256, 1, N'9555FF33-EE29-4A81-854A-69F6485BB216', CAST(25950.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (280, 257, 1, N'EA1B19C6-631A-4683-9E29-1BC601FC850E', CAST(9990.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (281, 258, 1, N'27C180A1-7C39-4E88-B5DE-ACD0C9594F3C', CAST(135000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (282, 259, 1, N'A0098927-0C7D-4CC8-8022-57A24433EF61', CAST(1250.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (283, 260, 1, N'9743A284-D059-4EEB-98AB-ACDE88C1E9F5', CAST(6590.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (284, 261, 1, N'BEC34DF7-3E37-4322-A406-04BB5DF2A0FE', CAST(89500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (285, 262, 1, N'F075AC9E-1124-4194-A05F-683F9D553335', CAST(18500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (286, 263, 1, N'05F6C06A-9CD8-448B-9F67-FDBC0A7CEDCE', CAST(3575.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (287, 264, 1, N'B1ABF9BD-1FBC-4E9A-BCCC-0B9AFEE5CFF1', CAST(6950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (288, 265, 1, N'607CA291-F642-4CBD-967B-7A36DF45D150', CAST(26500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (289, 266, 1, N'695E6D94-12E6-49BC-8E23-29AC3EB38D93', CAST(33500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (290, 267, 1, N'614ED49B-6DA9-4BFE-9560-3DB52A6593CD', CAST(24500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (291, 268, 1, N'740A7CB4-BF3F-46FD-98F3-D85748E5B9BA', CAST(99500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (292, 269, 1, N'D0B8D738-B33D-4F7F-BA25-46EC06DEB8E2', CAST(99990.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (293, 270, 1, N'23FDFA0D-C905-41A6-B95A-D5A3517293D8', CAST(6950.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (294, 271, 1, N'6A140D65-C354-48F6-A92E-40FF36CF1216', CAST(10500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (295, 272, 1, N'4AFC6EDF-49EA-4D57-85AF-D60734328922', CAST(33450.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (296, 273, 1, N'EF8621F7-41EB-4C2D-ADBD-D4287083D41F', CAST(72500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (297, 274, 1, N'E66B3E09-F02D-484A-8B9F-A8CD7833CD6B', CAST(2400.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (298, 275, 1, N'13F9FBD7-9342-4A2D-A249-E3AD6AE9A9CB', CAST(68500.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (299, 276, 1, N'E68BB825-0487-44CA-AE6C-7C650F81E22B', CAST(2350.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (300, 277, 1, N'519C0ED1-7611-4CDC-8153-5C4B81A7FD0F', CAST(18500.00 AS Numeric(18, 2)), CAST(1950.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (301, 278, 1, N'3CD0AFE8-9909-4A5D-BA9F-5C1F71B0DEE3', CAST(5500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (302, 279, 1, N'114760E3-FC54-4C31-B323-BC4B83AB80D0', CAST(128500.00 AS Numeric(18, 2)), CAST(12500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (303, 280, 1, N'757E7DB7-3688-41FD-AFB6-E49CC56BCCD8', CAST(55000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (304, 281, 1, N'BA123B46-B5DF-439B-9326-82174419FC14', CAST(1250.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (305, 282, 1, N'FCB80D65-7D65-41E4-9081-6C92D0C7F1F5', CAST(345000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (306, 283, 1, N'0318C525-58CA-438E-A5A5-BA854855A664', CAST(82590.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (307, 284, 1, N'17FA511D-1C85-4F74-A164-B4EE39F48565', CAST(113590.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (308, 285, 1, N'4B47A26E-2723-4E06-A661-21271A6759D0', CAST(45000.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (309, 286, 1, N'47572651-C884-4C1D-A433-E8641A1A1172', CAST(57600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (310, 287, 1, N'2A27FF01-DC3C-4FE2-AC8C-9145C29F651C', CAST(102500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (311, 288, 1, N'F4443E46-3EAC-4C10-902C-71257DEEE229', CAST(39500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (312, 289, 1, N'4EE854BF-A9DD-453B-815E-E0692A75A969', CAST(61550.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (313, 290, 1, N'3D2E9AD0-972B-4A09-895F-1833655CFB21', CAST(55000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (314, 291, 1, N'480D88A9-B1E5-4A79-9D2C-C1050C6DA00A', CAST(99500.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (315, 292, 1, N'EE92EE4A-977E-4BC6-BEFF-512CC468944C', CAST(56800.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (316, 293, 1, N'B8498BEE-D1C5-4D93-981F-640031A3AE6C', CAST(89500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (317, 294, 1, N'A44EE0A0-B924-4B29-9C05-BA4BFADE084B', CAST(72500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (318, 295, 1, N'C8C871B4-F08D-445A-BCD1-ACFEC616A113', CAST(56950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (319, 296, 1, N'47693731-F213-4E60-97D6-115A7BD83259', CAST(62500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (320, 297, 1, N'73FB2744-5AD9-42DC-A29C-B9B2FEF8353C', CAST(56890.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (321, 298, 1, N'DB742D0B-E562-41F4-AC94-8C58C2B0B69C', CAST(33600.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (322, 299, 1, N'51784E0D-09DB-4A40-8E92-CB09A0DE4444', CAST(30500.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (323, 300, 1, N'1A861C29-F198-4D34-BDAF-B35E8080320A', CAST(25000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (324, 300, 2, N'D0F51768-8924-4EF5-A3E9-B31AC7129BFB', CAST(25500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (325, 301, 1, N'E8FF8444-2B18-45A0-84AC-F776755E06ED', CAST(39500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (326, 302, 1, N'A3E788F8-889C-45E1-A610-881983869F6B', CAST(12500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (327, 303, 1, N'C8F49B5E-EDDB-42D0-BE0F-8C4181A6C81D', CAST(1150.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (328, 303, 2, N'1D5C9493-4BA2-415A-B4D6-7079278CA2DC', CAST(1950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (329, 303, 3, N'0A059F54-46DE-4A25-8B5D-D7373AEE6F91', CAST(2500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (330, 304, 1, N'6AE8BA09-AE75-4CA4-81EE-6CD2B3947120', CAST(69500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (331, 305, 1, N'3BDD9316-9359-464B-B98E-308494AD3056', CAST(45000.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (332, 306, 1, N'3C17F01C-25FF-463B-86AA-1A34FEA02FF2', CAST(56990.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (333, 307, 1, N'0E2AECED-5A41-412A-9414-DE7217C0B6EB', CAST(86500.00 AS Numeric(18, 2)), CAST(2450.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (334, 308, 1, N'91B4067A-EBDE-4C1E-9370-3E894FD2FD7D', CAST(17850.00 AS Numeric(18, 2)), CAST(1250.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (335, 309, 1, N'436E43FB-E015-48E4-B549-33F4A0EE8D3F', CAST(25950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (336, 310, 1, N'E166158C-F3BA-47DE-A499-A703210CF128', CAST(29500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (337, 311, 1, N'1C9E6944-A890-4D7B-8F98-32B7276A78B3', CAST(59000.00 AS Numeric(18, 2)), CAST(4500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (338, 312, 1, N'7461FB42-ECE2-4C8C-BDBB-EF26AF3069F9', CAST(9500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (339, 313, 1, N'98828061-0C7A-42C2-95D0-3095AD2EF0E4', CAST(8900.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (340, 314, 1, N'E519F3CF-BE4B-44CF-98D5-80EC33EC6CE1', CAST(11590.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (341, 315, 1, N'E6923E8C-C07A-430F-B80D-7D5F329055AB', CAST(8500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (342, 316, 1, N'0487C263-79B7-4F2B-8D0E-B0BAA41D7F24', CAST(59500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (343, 317, 1, N'92FDF39E-6565-4B68-80BA-02ED30F00A7E', CAST(123500.00 AS Numeric(18, 2)), CAST(3500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (344, 318, 1, N'5D7C9AA9-F0C7-4F8E-8524-6481BE3CC62E', CAST(99500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (345, 319, 1, N'CD2E20D3-1A10-4460-AC3B-FAC658F5F6F4', CAST(54500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (346, 319, 2, N'3C384AE3-7F59-4CD6-BAFE-5E6EFFD25FAD', CAST(1590.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (347, 320, 1, N'6556A473-CE18-428F-8F33-955E80FBA888', CAST(11500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (348, 321, 1, N'F166C930-3101-42E9-8AE8-189F47FA0014', CAST(17950.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)))
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (349, 322, 1, N'2E0E8003-F9CC-486D-9D08-D4DAC688C800', CAST(5500.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (350, 323, 1, N'C2623FF4-88AA-40E9-AF3B-8D009C25027B', CAST(950.00 AS Numeric(18, 2)), NULL)
GO
INSERT [Data].[SalesDetails] ([SalesDetailsID], [SalesID], [LineItemNumber], [StockID], [SalePrice], [LineItemDiscount]) VALUES (351, 324, 1, N'C7569243-BDDB-4250-901E-EA6034824106', CAST(145000.00 AS Numeric(18, 2)), CAST(5000.00 AS Numeric(18, 2)))
GO
SET IDENTITY_INSERT [Data].[SalesDetails] OFF