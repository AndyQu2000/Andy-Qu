SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TABLE [Data].[Stock](
	[StockID] [Udt].[SurrogateKeyInt] IDENTITY(1, 1) NOT NULL,
	[StockCode] [Udt].[Name] NOT NULL,
	[ModelID] [Udt].[SurrogateKeyInt] NULL,
	[Cost] [money] NULL,
	[RepairsCost] [money] NULL,
	[PartsCost] [money] NULL,
	[TransportInCost] [money] NULL,
	[IsRHD] [bit] NULL,
	[Color] [nvarchar](50) NULL,
	[BuyerComments] [nvarchar](4000) NULL,
	[DateBought] [date] NULL,
	[TimeBought] [time](7) NULL,
	constraint [PK_Stock] PRIMARY KEY CLUSTERED
(
    [StockID] asc
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [PRIMARY]
) on [PRIMARY]
go

Alter table [Data].[Stock] with check add constraint [FK_Stock_Model] foreign key([ModelId])
references [Data].[model] ([ModelId])

Alter table [Data].[Stock] check constraint [FK_Stock_Model]

SELECT * FROM [Data].Stock

GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B1C3B95E-3005-4840-8CE3-A7BC5F9CFB3F', 2, 52000.0000, 2175.0000, 1500.0000, 750.0000, 1, N'Red', N'Superb Car! Wish I could afford a second one!', CAST(N'2015-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A2C3B95E-3005-4840-8CE3-A7BC5F9CFB5F', 3, 176000.0000, 5500.0000, 2200.0000, 1950.0000, 1, N'Blue', NULL, CAST(N'2015-01-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'558620F5-B9E8-4FFF-8F73-A83FA9559C41', 11, 15600.0000, 660.0000, 0.0000, 150.0000, 1, N'British Racing Green', N'An absolute example of the pinnacle of British engineering. This is a wonderful piece of kit.', CAST(N'2015-01-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'72443561-FAC4-4C25-B8FF-0C47361DDE2D', 12, 9200.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2015-02-14' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2189D556-D1C4-4BC1-B0C8-4053319E8E9D', 13, 15960.0000, 1360.0000, 500.0000, 150.0000, 1, N'Red', NULL, CAST(N'2015-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'DE3096AD-76F9-4AAF-B2E1-49FA8E2C377F', 2, 176000.0000, 1000.0000, 3150.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2015-03-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C1459308-7EA5-4A2D-82BC-38079BB4049B', 22, 23600.0000, 500.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2015-03-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E6E6270A-60B0-4817-AA57-17F26B2B8DAF', 23, 39600.0000, 2500.0000, 1500.0000, 550.0000, 1, N'Black', N'FAbulous motor!', CAST(N'2015-03-15' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'CEDFB8D2-BD98-4A08-BC46-406D23940527', 24, 60800.0000, 3250.0000, 750.0000, 750.0000, 0, N'Canary Yellow', NULL, CAST(N'2015-03-26' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8BD326B3-8DE8-4DC9-9F96-FD132C5E1BF2', 2, 172000.0000, 750.0000, 150.0000, 1950.0000, 1, N'Red', NULL, CAST(N'2015-04-04' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6081DBE7-9AD6-4C64-A676-61D919E64979', 11, 15680.0000, 890.0000, 500.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2015-04-04' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D63C8CC9-DB19-4B9C-9C8E-6C6370812041', 23, 29200.0000, 1950.0000, 500.0000, 550.0000, 1, N'Blue', NULL, CAST(N'2015-04-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F3A2712D-20CA-495D-9F6A-8A4CA195248D', 13, 6800.0000, 250.0000, 225.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2015-04-15' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'EDCCE461-5DA8-4E2E-8F08-798431841575', 24, 36000.0000, 1250.0000, 750.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2015-04-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4C57F13A-E21B-4AAC-9E9D-A219D4C691C6', 32, 64400.0000, 500.0000, 750.0000, 750.0000, 1, N'British Racing Green', NULL, CAST(N'2015-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'98C1E31A-4258-4F78-95D4-2365167E6F3F', 3, 135600.0000, 5500.0000, 2200.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2015-05-15' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'951195C4-7B69-418B-9AC2-61CCB7FE7C09', 13, 7160.0000, 500.0000, 750.0000, 150.0000, 1, N'Green', NULL, CAST(N'2015-05-26' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'91CF8133-EF19-4C92-BEFB-6A24FD85EF3A', 2, 156000.0000, 6000.0000, 1500.0000, 1950.0000, 1, N'Green', NULL, CAST(N'2015-06-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BCCB9C13-AEDA-4467-A014-48F0C7A0D6A4', 45, 18360.0000, 550.0000, 500.0000, 150.0000, 1, N'Red', NULL, CAST(N'2015-06-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'94FF5451-471C-4F17-BE27-BA55D3ECF5DC', 51, 6956.0000, 400.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2015-07-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'325F4D73-D44A-44BD-B109-AD25D924D38F', 75, 18392.0000, 390.0000, 150.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2015-07-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'FDCDF3F0-F0AD-4E7F-8793-8B146700D035', 76, 15600.0000, 290.0000, 750.0000, 150.0000, 1, N'Silver', NULL, CAST(N'2015-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'34CEE6C8-985B-4005-AB2F-AD3235C6A16D', 24, 44800.0000, 1785.0000, 500.0000, 550.0000, 1, N'Canary Yellow', NULL, CAST(N'2015-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'CE0A56A6-8218-4F4C-A0E2-63F3DC9E4AE6', 13, 7040.0000, 140.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2015-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BEECAE2C-0A38-473D-893F-7C8917A779C2', 86, 4400.0000, 500.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2015-08-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'5672C4AF-78E1-4BA4-B1D1-19383DCBE43C', 87, 10120.0000, 320.0000, 750.0000, 150.0000, 1, N'Green', NULL, CAST(N'2015-08-24' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C001858B-0B5D-4648-8F0D-80269964C921', 3, 125200.0000, 2200.0000, 3150.0000, 1950.0000, 1, N'British Racing Green', NULL, CAST(N'2015-09-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F95052DB-3E09-4070-ADA4-5114CCAD96C0', 12, 7160.0000, 360.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2015-09-28' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A6FCB276-6311-4B3E-9C99-23F197952F1C', 32, 44360.0000, 490.0000, 225.0000, 550.0000, 1, N'Red', NULL, CAST(N'2015-09-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'646C802F-C868-40F0-AF81-1BF387AFB82B', 74, 12480.0000, 1100.0000, 500.0000, 150.0000, 1, N'Red', NULL, CAST(N'2015-10-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1BB4B941-79F4-4E98-9E13-46875CA7EB67', 76, 18080.0000, 660.0000, 750.0000, 150.0000, 0, N'Red', NULL, CAST(N'2015-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'86450D0C-EAA5-4B83-A9DA-55D742E9C2D8', 86, 9352.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2015-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'26A3D067-DCEA-4FF1-9A97-E7AEE0D2BC14', 24, 43000.0000, 2000.0000, 750.0000, 550.0000, 1, N'British Racing Green', NULL, CAST(N'2015-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'18E980AB-452D-42EF-8728-12822AD20C60', 26, 98872.0000, 2175.0000, 2200.0000, 750.0000, 1, N'Black', NULL, CAST(N'2015-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F2DE934E-62C3-45F6-AFA8-2FFA963F5360', 11, 18360.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2015-11-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0CC75388-9A95-4F14-8D9A-8373E3B44D8A', 24, 55600.0000, 1490.0000, 1500.0000, 750.0000, 1, N'Silver', NULL, CAST(N'2015-11-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'5CCF4F6B-43B3-4C7F-B674-6CAFD056E52A', 86, 10000.0000, 500.0000, 225.0000, 150.0000, 1, N'Silver', NULL, CAST(N'2015-12-22' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E264504D-3451-4670-AAB8-E4C66F2387B0', 13, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2015-12-23' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A926BB6C-FC26-4EBB-997E-2DF7EDC48E92', 3, 127600.0000, 2000.0000, 3150.0000, 1950.0000, 1, N'Silver', NULL, CAST(N'2015-12-24' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'202B3C90-188F-413E-A44A-B99F16F03464', 2, 132000.0000, 3950.0000, 2200.0000, 1950.0000, 1, N'Night Blue', NULL, CAST(N'2015-12-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'486C65E8-5CB9-4A33-9507-E2E5E3CB91CC', 51, 2040.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2016-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3F3BED8D-1203-4D3E-8AC0-3ACAC73BDE17', 11, 23600.0000, 1360.0000, 500.0000, 150.0000, 0, N'Black', NULL, CAST(N'2016-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'281946B6-D061-455A-801B-A0EDF3E37530', 13, 10120.0000, 500.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2016-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'98A92DA3-2B99-4625-998B-2BB2FBB8F167', 31, 45560.0000, 2000.0000, 750.0000, 550.0000, 0, N'Pink', NULL, CAST(N'2016-01-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A9D335E7-2389-4DE1-9484-DC4EC6BA81D4', 24, 44800.0000, 1360.0000, 500.0000, 550.0000, 1, N'British Racing Green', NULL, CAST(N'2016-01-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'53C088BA-6E14-4758-826A-56FC57D3EEDA', 32, 52712.0000, 1490.0000, 1500.0000, 750.0000, 1, N'Canary Yellow', NULL, CAST(N'2016-02-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6C76FDEC-683F-45E1-B027-20ACFD2F501C', 51, 4800.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2016-02-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'373B7D39-B5A3-4018-883C-AC81EF3B5D8F', 24, 38280.0000, 660.0000, 750.0000, 550.0000, 1, N'Red', NULL, CAST(N'2016-02-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C82D133F-3442-464B-A16A-D5419A9E1CDF', 3, 125560.0000, 2000.0000, 750.0000, 1950.0000, 1, N'Red', NULL, CAST(N'2016-02-27' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A7A80CA3-06D6-40AF-A558-09146A650340', 12, 31600.0000, 500.0000, 1500.0000, 550.0000, 1, N'Green', NULL, CAST(N'2016-03-15' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A2112C27-FE1F-48C5-A3BE-A019EE17DDD6', 17, 2920.0000, 500.0000, 750.0000, 150.0000, 1, N'Green', NULL, CAST(N'2016-03-19' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'88AFBF67-13A6-4BC5-AE50-8C64F0F25453', 18, 176400.0000, 5500.0000, 3150.0000, 1950.0000, 0, N'Blue', NULL, CAST(N'2016-04-17' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'11790E1E-859C-4E05-B6B3-6D72DDCC8DAE', 6, 82360.0000, 2175.0000, 2200.0000, 750.0000, 1, N'Black', NULL, CAST(N'2016-04-26' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B165CAEF-FF77-4E63-98C1-59D97F97E7C9', 11, 14000.0000, 2000.0000, 500.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2016-04-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'23E7F9FA-67D4-47C1-8D66-F1CFBC33540F', 9, 79600.0000, 500.0000, 750.0000, 750.0000, 1, N'Black', NULL, CAST(N'2016-05-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'07F0D746-085B-4FB9-9F82-6CEAC851FBC3', 51, 14000.0000, 1360.0000, 225.0000, 150.0000, 0, N'Green', NULL, CAST(N'2016-05-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7BABE805-CE07-4C06-AAF1-6B5D83645CD8', 52, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-05-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D7BF8DD9-1841-4FDE-8469-66B09FA30A74', 76, 7960.0000, 500.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2016-05-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8F278478-CA0B-4CDB-8F02-1A054AAE88A9', 77, 31600.0000, 2000.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2016-05-28' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4FFB74AD-C031-4BD9-9589-A87F462E6842', 24, 39664.0000, 660.0000, 500.0000, 550.0000, 1, N'Black', NULL, CAST(N'2016-05-28' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'055F7639-30EA-4975-A8CB-29F5C1C1C48E', 86, 4400.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-05-28' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'518125AE-9A67-45A6-B3FD-557C785796FC', 11, 17720.0000, 1360.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2016-05-28' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'18974E49-6B03-4C6E-BA0C-D564CFF868E0', 31, 62000.0000, 2000.0000, 1500.0000, 750.0000, 1, N'Dark Purple', NULL, CAST(N'2016-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'65F89D52-9B2D-4363-8A07-4A5CE90197DB', 74, 28000.0000, 500.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2016-06-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'54A66D7C-9E0B-40E9-B1B1-CA655F060CDE', 75, 23720.0000, 660.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2016-06-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D93AF620-4F69-475A-98ED-829E0F8A3A40', 24, 36400.0000, 500.0000, 750.0000, 550.0000, 1, N'Red', NULL, CAST(N'2016-06-04' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'62611547-0F2D-41B1-BA32-E34AB67E10A3', 21, 26800.0000, 1360.0000, 750.0000, 550.0000, 0, N'Canary Yellow', NULL, CAST(N'2016-06-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0BE222D6-9254-4FC8-892D-76563CA81F9B', 32, 79600.0000, 2175.0000, 750.0000, 750.0000, 1, N'Silver', NULL, CAST(N'2016-06-06' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'521659A4-8FF2-441A-8D2E-C584D561301F', 13, 12520.0000, 500.0000, 225.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2016-06-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1A210C04-C981-4EA4-83B9-A6E76B5B9BDB', 11, 39600.0000, 500.0000, 500.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2016-07-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'66CCEBEA-00EA-44B3-BBFE-AC5EC2DE456D', 51, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2016-07-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B36188E4-3684-4337-91FE-84BB33736476', 2, 156000.0000, 3950.0000, 3150.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2016-07-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'66C9034C-23A3-44F1-B946-2DDA65E684D8', 3, 164000.0000, 9250.0000, 750.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2016-07-07' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E00D10E9-7F7F-49A9-BDC0-4C2611580B4E', 14, 53200.0000, 1490.0000, 750.0000, 750.0000, 1, N'Black', NULL, CAST(N'2016-07-08' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'AAF61ECC-0BAC-4EAF-9E50-01749253329A', 15, 15600.0000, 1360.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2016-07-09' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A1A4180E-B929-467D-91A6-73D2D0F34C65', 32, 63600.0000, 2000.0000, 1500.0000, 750.0000, 1, N'Blue', NULL, CAST(N'2016-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B5E7DD25-9D69-464C-9327-A8C5E706F534', 86, 11672.0000, 500.0000, 750.0000, 150.0000, 1, N'Silver', NULL, CAST(N'2016-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0B0E0FC2-E72B-4BD4-9C46-1AF98F17BEC4', 87, 10200.0000, 970.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2016-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7F08368D-B6EA-4DFC-A1EC-B1A1B0221F04', 24, 180000.0000, 5500.0000, 3150.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2016-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'356EE84B-F4FD-4923-9423-D58E2863E9A1', 25, 36480.0000, 500.0000, 500.0000, 550.0000, 1, N'Dark Purple', NULL, CAST(N'2016-07-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'92D7DE8E-0BA7-4221-B2B1-A01F7FAFDD3E', 88, 5200.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-07-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'5BE0098D-511F-4CF1-B87C-2CE2532F1B31', 26, 82000.0000, 2175.0000, 1500.0000, 750.0000, 1, N'Pink', NULL, CAST(N'2016-07-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F0235F1B-636C-4E8B-8617-927F45DA97DB', 76, 20400.0000, 660.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-08-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BDC5E621-D976-478D-A620-A0751FCBEF96', 74, 79600.0000, 2000.0000, 750.0000, 750.0000, 1, N'Canary Yellow', NULL, CAST(N'2016-08-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'72EF5AA5-997C-4AC0-A32E-591D1E009818', 28, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'Dark Purple', NULL, CAST(N'2016-08-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4BFD3782-0B79-4F4E-981A-96CEF827497F', 29, 49200.0000, 1360.0000, 750.0000, 550.0000, 1, N'Red', NULL, CAST(N'2016-08-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E6E23C74-39AF-4A44-BAAE-7CD48B0F6161', 25, 63600.0000, 1490.0000, 750.0000, 750.0000, 1, N'Red', NULL, CAST(N'2016-08-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'420701D6-5F66-4885-8A72-8B54541965A6', 12, 13200.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2016-08-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'870C2B0A-A6AE-4F84-91EF-806C985A02E5', 11, 26880.0000, 500.0000, 500.0000, 550.0000, 1, N'Black', NULL, CAST(N'2016-08-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6BF8C577-E615-4667-A48C-25E8D825AAC6', 11, 53200.0000, 2175.0000, 1500.0000, 750.0000, 1, N'British Racing Green', NULL, CAST(N'2016-08-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'74F717DA-B4DA-44F2-857A-F062AC60052E', 13, 15600.0000, 660.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-08-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'98C3863B-7A70-4FAD-B3C7-2B5702956E18', 23, 36000.0000, 500.0000, 150.0000, 550.0000, 1, N'Red', NULL, CAST(N'2016-08-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8C1E8506-711C-442A-89A4-EDA28EB5B788', 13, 15600.0000, 500.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2016-08-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BC4D491E-764B-48AE-BEDC-07DE123B7200', 32, 61200.0000, 2000.0000, 750.0000, 750.0000, 1, N'Pink', NULL, CAST(N'2016-08-20' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4C00023A-47C5-4F98-A9B1-F222EDE2F563', 26, 36720.0000, 500.0000, 500.0000, 550.0000, 0, N'Red', NULL, CAST(N'2016-08-20' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'170FAF32-4223-4806-B483-D89F4D38AC16', 27, 100000.0000, 500.0000, 2200.0000, 750.0000, 1, N'Green', NULL, CAST(N'2016-08-22' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9CFAF367-ED4B-4A3E-8CB2-394F1F7A58C1', 28, 52400.0000, 500.0000, 750.0000, 750.0000, 1, N'Green', NULL, CAST(N'2016-08-22' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'126C36BB-9C33-4BC5-9127-F941731DD0C8', 32, 73720.0000, 2175.0000, 225.0000, 750.0000, 1, N'Blue', NULL, CAST(N'2016-08-22' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'98B3C1C2-7AE2-4A88-A3C9-484483C6EC66', 15, 7600.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-08-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4A40B2AA-A76B-4C08-A59B-19CDE0ED868C', 88, 7960.0000, 500.0000, 225.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2016-08-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'100EE806-DFE5-4C5E-9AB4-8F881615F8BD', 87, 4544.0000, 500.0000, 150.0000, 150.0000, 1, N'Canary Yellow', NULL, CAST(N'2016-08-26' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'00DDC5C0-E266-49E4-A785-E4F8BC3C9B24', 89, 15600.0000, 2000.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-08-28' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'97AFC7D5-91BF-47E3-8568-01B704E956C2', 90, 2800.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-09-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6A2699A6-ED27-42A9-B811-06D19EB5FA3C', 89, 3160.0000, 500.0000, 150.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-09-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'70C9BE5C-3CCA-4FB2-B4DE-E5F0A61BB84D', 11, 16760.0000, 1360.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2016-09-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B76D6985-E106-4213-AACC-288088795C92', 13, 6000.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2016-09-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'955E8BC5-C31B-4EE5-A48D-76517063C334', 26, 45200.0000, 500.0000, 1500.0000, 550.0000, 1, N'Dark Purple', NULL, CAST(N'2016-09-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2FCD3EBC-CBA7-4B3C-B6A0-A3A011D3A47B', 27, 39600.0000, 660.0000, 500.0000, 550.0000, 1, N'British Racing Green', NULL, CAST(N'2016-09-06' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'155E940E-7AA7-47EA-B83F-B3521F0B5718', 11, 55120.0000, 500.0000, 750.0000, 750.0000, 1, N'Dark Purple', NULL, CAST(N'2016-09-09' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B25CB659-C0A2-451E-AADB-7A006414D6E1', 28, 44000.0000, 500.0000, 150.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2016-09-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'19D1000C-178F-4BBA-9B19-C93804D047AC', 73, 2860.0000, 500.0000, 750.0000, 150.0000, 1, N'Silver', NULL, CAST(N'2016-09-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'DD6A0129-40CF-449F-8427-1C97BF14B2BD', 73, 28200.0000, 500.0000, 750.0000, 550.0000, 1, N'British Racing Green', NULL, CAST(N'2016-09-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'66D70810-1EE2-4BCA-B1B4-1E5B86C75002', 74, 15680.0000, 1360.0000, 150.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2016-09-15' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'384778FF-C28D-4FE6-9BEF-D787EFDC23CF', 74, 22312.0000, 970.0000, 500.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-09-15' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B760CF74-6468-4A0D-9485-36C7F7710EB0', 11, 36760.0000, 970.0000, 750.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2016-09-16' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E1350CBE-B916-4F18-B5BF-F7D53A31205A', 12, 7960.0000, 500.0000, 150.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-09-17' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9D74A1A9-7342-4FEA-9C21-6AC4EFE92018', 87, 5240.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-09-18' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6943ADF3-01A4-4281-B0CE-93384FE60418', 88, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2016-10-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BB4B9483-7AE3-47B4-A788-7EB5D12A7516', 33, 61200.0000, 2175.0000, 750.0000, 750.0000, 1, N'Canary Yellow', NULL, CAST(N'2016-10-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2319EA77-F4D9-4E34-9771-C42DCA3E210C', 34, 151600.0000, 500.0000, 1500.0000, 1950.0000, 1, N'Blue', NULL, CAST(N'2016-10-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6120D922-6703-4267-969B-A9A9D3CAE787', 35, 95680.0000, 1490.0000, 2200.0000, 750.0000, 0, N'Green', NULL, CAST(N'2016-10-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'30DC26F7-E98B-4FE8-B834-D625EC7E12F3', 33, 68520.0000, 2175.0000, 750.0000, 750.0000, 0, N'Silver', NULL, CAST(N'2016-10-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3D993E95-26AF-416D-B89E-688873C03AA7', 88, 12760.0000, 660.0000, 750.0000, 150.0000, 0, N'Blue', NULL, CAST(N'2016-10-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'34A69512-CDC3-4BEB-ADCB-AAE360CA7CF4', 89, 7960.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3EDC8773-9603-4D38-9DC9-64E1C4768F7D', 88, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9FF62C70-89E4-4815-912F-C5DFBF8BDF0F', 22, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'EC25FA02-2692-42E1-85A0-71F0775C8F8A', 23, 45512.0000, 2000.0000, 750.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2016-11-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E368D03E-239C-499F-A41A-CC4D2AE1AFF8', 24, 44000.0000, 660.0000, 500.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2016-11-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4C1762AE-F7FD-4F2C-875B-CAC022B0DF63', 88, 7992.0000, 500.0000, 750.0000, 150.0000, 0, N'Black', NULL, CAST(N'2016-11-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'DB8869B2-1EC0-48D5-9DA6-FDF1665155F0', 25, 37200.0000, 2000.0000, 750.0000, 550.0000, 1, N'British Racing Green', NULL, CAST(N'2016-11-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'DD651733-FE5C-46B9-AC97-727F8CD170A6', 89, 7600.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2016-11-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F810FAB0-6BAE-4AC0-BDBC-F14A71AC35B9', 26, 100400.0000, 3950.0000, 1500.0000, 1950.0000, 1, N'Red', NULL, CAST(N'2016-12-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3CF2C0F8-21E1-4ADE-AE72-AB9DFE3790DD', 35, 79600.0000, 1490.0000, 750.0000, 750.0000, 1, N'Dark Purple', NULL, CAST(N'2016-12-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A017241D-3A92-4EA7-A3EE-22FC119542F8', 36, 48400.0000, 500.0000, 1500.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2016-12-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4537B83B-2444-4389-B2DE-F30E15608163', 17, 98800.0000, 2000.0000, 750.0000, 750.0000, 0, N'Black', NULL, CAST(N'2016-12-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7CEA62B1-9CBE-4E13-BECC-54E7EED128EF', 18, 20000.0000, 1360.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2016-12-07' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'102A734C-3212-4708-85A5-A96FE8E14641', 18, 135600.0000, 9250.0000, 1500.0000, 1950.0000, 1, N'British Racing Green', NULL, CAST(N'2016-12-07' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9B8B87E1-7770-4136-8EB4-B7173C8783A6', 34, 79600.0000, 2175.0000, 750.0000, 750.0000, 1, N'Black', NULL, CAST(N'2016-12-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C0E2E06D-AE60-4223-9E7C-B8387F2A4335', 14, 31600.0000, 500.0000, 500.0000, 550.0000, 1, N'Canary Yellow', NULL, CAST(N'2016-12-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3EEC687A-759C-4D8A-8776-E257E8230376', 16, 18000.0000, 1360.0000, 750.0000, 150.0000, 1, N'Pink', NULL, CAST(N'2016-12-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'09FA3947-726D-4987-B9DD-2F4CF7CD7C45', 26, 100000.0000, 500.0000, 1500.0000, 750.0000, 1, N'Green', NULL, CAST(N'2016-12-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'52CE8210-53B8-4C09-B821-6389A09733C5', 38, 68000.0000, 1490.0000, 1500.0000, 750.0000, 1, N'Black', NULL, CAST(N'2016-12-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'DE44149E-1225-4B7C-97E5-8089A4F21C1C', 99, 1000.0000, 500.0000, 750.0000, 150.0000, 1, N'Silver', NULL, CAST(N'2017-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'CF9A23D7-6F8A-4CA6-A037-95EA7385B539', 45, 18000.0000, 500.0000, 750.0000, 150.0000, 1, N'Silver', NULL, CAST(N'2017-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E9FE6FE1-1957-4BD4-8643-D8326BC43255', 46, 18760.0000, 500.0000, 750.0000, 150.0000, 1, N'Green', NULL, CAST(N'2017-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'98299E86-0B98-42D8-A549-37D89435B4E3', 3, 100760.0000, 9250.0000, 2200.0000, 1950.0000, 0, N'Black', NULL, CAST(N'2017-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F187F74F-3909-4291-A15B-F793AB88DE3B', 5, 156000.0000, 5500.0000, 1500.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2017-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'DD8D9340-29B0-4E0D-89B3-BD33B70E087D', 89, 7080.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BBDFB7CF-FBA6-4463-BC1E-FE79522431EE', 87, 7960.0000, 500.0000, 750.0000, 150.0000, 1, N'Pink', NULL, CAST(N'2017-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'837C835A-5341-46C7-A282-14612449DDB0', 46, 18800.0000, 2000.0000, 500.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-01-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'47077B33-09BC-4FF2-B71B-58E243952BAA', 28, 45200.0000, 500.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-01-20' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A48E5430-ACA4-41FD-BC6F-446BE2B46DF8', 29, 44000.0000, 500.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-01-21' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'AB327B58-DD8E-46F9-BF23-DE6D1C0F7AD8', 28, 62800.0000, 500.0000, 750.0000, 750.0000, 1, N'Red', NULL, CAST(N'2017-01-21' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E869D5E4-CAC0-48ED-8961-03D0405EA2FD', 28, 45560.0000, 1360.0000, 750.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2017-01-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'74DD8FE1-B205-4400-A951-1E54E7C22E40', 10, 292000.0000, 3950.0000, 750.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2017-02-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'579AD98F-B7A5-456A-8F17-5B77A5479767', 9, 125200.0000, 9250.0000, 1500.0000, 1950.0000, 0, N'Night Blue', NULL, CAST(N'2017-02-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7392B5F6-783C-4D4B-B687-74A98411A7CB', 10, 316000.0000, 9250.0000, 2200.0000, 1950.0000, 1, N'British Racing Green', NULL, CAST(N'2017-02-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'01B087C6-00D1-40B2-808F-B4B5BC1E344D', 54, 17200.0000, 500.0000, 500.0000, 150.0000, 1, N'Dark Purple', NULL, CAST(N'2017-02-04' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'11BCE306-33ED-4C8D-9198-2A4B653D9F8A', 55, 5200.0000, 500.0000, 750.0000, 150.0000, 1, N'Pink', NULL, CAST(N'2017-02-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A08FCF25-5B27-4215-BF50-E94D0F7C8CD6', 56, 1800.0000, 500.0000, 750.0000, 150.0000, 1, N'Canary Yellow', NULL, CAST(N'2017-02-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8F100F91-FE3C-4338-AA52-7BF61A540199', 98, 2800.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-02-28' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'84BE4607-F8D7-49DA-8C27-D87FE529DF96', 89, 4544.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-02-28' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'EB59DB36-5E67-4AF1-AE8A-46E8999EEF45', 87, 6840.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-02-28' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7372D1C7-800F-4DE4-B3BC-FFA46CE77099', 78, 125200.0000, 2000.0000, 1500.0000, 1950.0000, 1, N'Blue', NULL, CAST(N'2017-03-08' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E267042F-449B-4CA9-8BDE-5C197DC8A647', 25, 45200.0000, 660.0000, 750.0000, 550.0000, 0, N'Silver', NULL, CAST(N'2017-03-08' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2C377634-90F1-4BC1-A366-0F0EBD26910D', 29, 69200.0000, 2000.0000, 1500.0000, 750.0000, 1, N'Silver', NULL, CAST(N'2017-03-08' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'49D19AE8-FBBF-496C-BC1E-9450544DD193', 27, 53200.0000, 2175.0000, 1500.0000, 750.0000, 0, N'Black', NULL, CAST(N'2017-03-08' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0B3AEBF5-0997-447D-B0E8-B399B7343742', 14, 44480.0000, 660.0000, 750.0000, 550.0000, 1, N'Green', NULL, CAST(N'2017-03-12' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'643800B3-AD63-4B67-8ACF-672B91F04C57', 19, 244000.0000, 3950.0000, 3150.0000, 1950.0000, 0, N'Green', NULL, CAST(N'2017-03-12' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'5F898C04-BDFB-437B-A640-AE520F14031E', 91, 23200.0000, 500.0000, 750.0000, 150.0000, 1, N'Dark Purple', NULL, CAST(N'2017-03-12' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4831A9DA-09BD-4AC3-8984-947F284CD4A8', 22, 43992.0000, 970.0000, 500.0000, 550.0000, 1, N'Green', NULL, CAST(N'2017-03-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0588AA57-B6B5-47F5-910F-5A1099B0476D', 23, 34360.0000, 970.0000, 750.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2017-03-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'32C41EC9-CB3C-4D0F-9C85-2500CE2E4813', 65, 792.0000, 500.0000, 150.0000, 150.0000, 0, N'British Racing Green', NULL, CAST(N'2017-03-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1909CD9B-9C06-4CFB-B8AD-292967E55E2F', 68, 23600.0000, 970.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1B77D0BA-45C9-4C76-952E-B2FA2859B7AB', 41, 111600.0000, 9250.0000, 2200.0000, 1950.0000, 1, N'British Racing Green', NULL, CAST(N'2017-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'CD06C0DF-D3A2-4593-BF40-7DAE6B73F58C', 63, 236000.0000, 5500.0000, 750.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2017-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'08B3555E-47A2-4365-AED8-2DF054FF73E2', 62, 176400.0000, 9250.0000, 2200.0000, 1950.0000, 1, N'Red', NULL, CAST(N'2017-04-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C1A812F1-5FA1-48BA-8787-16F2F0A704BC', 35, 63600.0000, 500.0000, 750.0000, 750.0000, 1, N'Red', NULL, CAST(N'2017-04-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3A8161E3-C69D-4CC0-83DA-18EDE07CC83A', 36, 45592.0000, 970.0000, 750.0000, 550.0000, 1, N'Red', NULL, CAST(N'2017-04-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'05AB94D5-2F8D-4B06-878D-615956C94EC2', 37, 130000.0000, 3950.0000, 3150.0000, 1950.0000, 1, N'Red', NULL, CAST(N'2017-04-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B607E8E1-5ECA-4DE2-BC46-909DBF9371D3', 75, 63600.0000, 2175.0000, 750.0000, 750.0000, 0, N'Black', NULL, CAST(N'2017-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'57137FAF-3144-4CB7-BAAB-BA533A710E72', 74, 29200.0000, 500.0000, 500.0000, 550.0000, 1, N'Canary Yellow', NULL, CAST(N'2017-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7A12CA8A-DC67-4A4F-B6F4-8B150873523A', 64, 52712.0000, 500.0000, 750.0000, 750.0000, 1, N'Blue', NULL, CAST(N'2017-05-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4A4A1D5E-1682-4ACA-A60D-0072693FE190', 21, 49200.0000, 1360.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-05-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C4ACB04E-C8D4-465E-8D66-8BA033443D61', 12, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-05-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'5D11974B-326C-44C5-BA1D-57968CAB0DEE', 10, 204000.0000, 9250.0000, 1500.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2017-05-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F8B48177-FB78-4245-935F-FB6FBCE8D870', 8, 204760.0000, 5500.0000, 750.0000, 1950.0000, 1, N'Blue', NULL, CAST(N'2017-05-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6AEAC4F1-4C81-4FAA-A97C-3DCC0E6CB5DE', 7, 200000.0000, 3950.0000, 3150.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2017-05-12' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A5BDB4E0-1544-449F-8596-D63D70548675', 54, 5200.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-05-15' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'06FD2864-8415-44A5-B022-B98BEFB7E490', 90, 7400.0000, 500.0000, 750.0000, 150.0000, 1, N'Silver', NULL, CAST(N'2017-05-18' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'ECC534C7-B2DD-425C-98D3-98D2332B373C', 100, 760.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-05-19' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'589E8DB1-B2D4-4921-A11B-9A2A80EA73D9', 80, 236000.0000, 9250.0000, 3150.0000, 1950.0000, 1, N'Silver', NULL, CAST(N'2017-05-20' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BD15948E-42F0-41BC-920C-343E0816B0AB', 70, 79600.0000, 1490.0000, 750.0000, 750.0000, 1, N'Night Blue', NULL, CAST(N'2017-05-21' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E0760EF4-3939-4063-821F-5923EF8760B4', 60, 26800.0000, 500.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-05-22' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D3C15454-EF60-415F-860D-99D41F0A485F', 21, 36000.0000, 500.0000, 750.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2017-05-23' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'DF5411FC-24C5-4CAB-89DF-54741054D8DD', 22, 29200.0000, 500.0000, 500.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-05-24' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8BB5BBD3-E03C-457C-86E2-67199FCB302A', 25, 62000.0000, 1490.0000, 1500.0000, 750.0000, 1, N'Canary Yellow', NULL, CAST(N'2017-05-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3A0070F8-C340-4B6F-9F36-4A1CBDB39FE9', 65, 1880.0000, 500.0000, 225.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2017-05-26' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'638FCDD5-AFFF-4DCA-AAEC-17F527FB9D02', 45, 26000.0000, 1360.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-05-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0C3EBD09-B9DF-414D-AD00-90F5819812D0', 85, 36000.0000, 500.0000, 750.0000, 550.0000, 1, N'Blue', NULL, CAST(N'2017-05-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A0098927-0C7D-4CC8-8022-57A24433EF61', 95, 1000.0000, 500.0000, 225.0000, 150.0000, 1, N'Red', NULL, CAST(N'2017-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8BB7FF86-2D80-40B7-B216-254C16843529', 87, 6800.0000, 500.0000, 750.0000, 150.0000, 1, N'Green', NULL, CAST(N'2017-06-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9743A284-D059-4EEB-98AB-ACDE88C1E9F5', 86, 5272.0000, 500.0000, 750.0000, 150.0000, 1, N'Dark Purple', NULL, CAST(N'2017-06-08' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'57E2BA34-6397-448F-8A8C-1306CC922231', 25, 79600.0000, 2175.0000, 750.0000, 750.0000, 1, N'Green', NULL, CAST(N'2017-06-09' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2EE943CB-2473-4333-8626-FC94FCD0947E', 458, 20000.0000, 500.0000, 150.0000, 150.0000, 1, N'Canary Yellow', NULL, CAST(N'2017-06-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1A80A54C-D98D-41D6-87EE-8F67F3B06FA8', 985, 15600.0000, 1360.0000, 500.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-06-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D32D55B7-3546-4CCA-B4C0-DBA976572CA2', 91, 10360.0000, 1360.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-06-12' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D05D6642-FABF-4F56-8A7E-D8C47A8AAB70', 52, 4520.0000, 500.0000, 150.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-06-21' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'658F0B06-2357-4DAA-803C-4DD7F569F270', 75, 23600.0000, 500.0000, 150.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-06-22' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2866BF16-7A79-4DB7-8657-30958E4035A9', 74, 45512.0000, 500.0000, 500.0000, 550.0000, 1, N'Red', NULL, CAST(N'2017-06-23' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'760F5558-3C9E-4B70-A412-0448B90B0D89', 96, 3160.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-06-23' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B09E4DDD-C2DD-45BE-B5F1-19FBF5970352', 85, 23600.0000, 1360.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-06-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B4CC6E9A-8473-4A84-A811-73EABAFDC582', 52, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-06-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2595D5C0-5002-464B-8F2B-C873FB29B4F9', 41, 79960.0000, 1490.0000, 750.0000, 750.0000, 1, N'Blue', NULL, CAST(N'2017-06-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D69ABA72-1B0D-4073-8B7D-D6CA65C4DDF7', 63, 268000.0000, 2000.0000, 2200.0000, 1950.0000, 0, N'Silver', NULL, CAST(N'2017-07-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'332CE8D2-E19F-4656-BCC6-E3E45AD09D85', 25, 45200.0000, 500.0000, 750.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2017-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'306507B9-D2E1-4C5D-8F01-C93C90C93B6E', 29, 79600.0000, 2175.0000, 750.0000, 750.0000, 1, N'Night Blue', NULL, CAST(N'2017-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2B0FC8E5-82CB-4804-8691-0586F2255E9E', 38, 108000.0000, 2000.0000, 1500.0000, 1950.0000, 1, N'Silver', NULL, CAST(N'2017-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'ACB85DBA-4914-4222-8D24-6D87B0DAE10A', 39, 71600.0000, 500.0000, 750.0000, 750.0000, 1, N'British Racing Green', NULL, CAST(N'2017-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'23E43063-5402-4946-8830-0723F6B3CE1C', 37, 132000.0000, 9250.0000, 3150.0000, 1950.0000, 1, N'Dark Purple', NULL, CAST(N'2017-08-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E59BFE04-E70B-4BAC-9269-ADC311ED0032', 48, 18080.0000, 1360.0000, 500.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-08-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8979136A-B34A-4CD3-B119-A6B158D15FFF', 46, 26140.0000, 660.0000, 500.0000, 550.0000, 1, N'Dark Purple', NULL, CAST(N'2017-08-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'34A4BB21-60B3-4B0D-8DDB-8189C471A581', 47, 36000.0000, 2000.0000, 500.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2017-08-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'AFAF5C3E-80C9-4C5A-9D2A-CDD238E40264', 58, 4400.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-08-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7FCABEE5-E116-4AE3-B7B1-483C2F0D18CA', 85, 44000.0000, 500.0000, 500.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-08-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B84575EE-2E61-482C-8B72-5A6A90ADC3FE', 21, 39600.0000, 1360.0000, 500.0000, 550.0000, 1, N'Green', NULL, CAST(N'2017-08-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'DB2AF439-6293-4925-B905-1A57A0118B1A', 2, 200000.0000, 500.0000, 2200.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2017-09-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'15108517-AD0C-4FF2-A7D4-57679C374A68', 3, 124000.0000, 9250.0000, 750.0000, 1950.0000, 1, N'Red', NULL, CAST(N'2017-09-03' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'10AD713C-C997-48BB-A5FB-F0B5FD26479B', 13, 12600.0000, 1360.0000, 750.0000, 150.0000, 1, N'Pink', NULL, CAST(N'2017-09-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C1C9D15D-9E57-4D22-8997-D1333EEC6B13', 15, 15600.0000, 1360.0000, 750.0000, 150.0000, 0, N'Black', NULL, CAST(N'2017-10-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8A275CE2-D116-49F7-8571-FD91F21ADAAA', 18, 188000.0000, 500.0000, 1500.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2017-10-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'009A5323-23E5-48BE-95DB-BA94E1897419', 51, 20000.0000, 1360.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'EBE7AD85-117F-4781-A5E5-13920EE2B546', 19, 196000.0000, 500.0000, 3150.0000, 1950.0000, 1, N'British Racing Green', NULL, CAST(N'2017-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B822FA7C-5FA5-4F17-A3A6-7199CB00F7F8', 93, 31600.0000, 970.0000, 500.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F1997A16-CB98-4D67-BCA3-DD22D990D1D2', 92, 1800.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2017-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'ECD53BA8-3C63-4938-92C4-C955AEA6C4BC', 91, 18800.0000, 1360.0000, 500.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-11-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'26199C63-95B5-419B-A827-C0EEAF594A5B', 51, 8400.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-11-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C9D8FCFE-4A88-479C-A2CA-E2474AF4D8DF', 52, 9200.0000, 500.0000, 150.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-11-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'43195E1A-46B2-4554-B1A9-C849B1C0B53B', 53, 7960.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-11-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'05D4115C-3F27-4059-BDC8-C0C3FFC85E8B', 11, 40960.0000, 1360.0000, 500.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-11-11' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B503DD91-24FA-4F4A-AF49-1EB15347A33D', 21, 36760.0000, 500.0000, 150.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-11-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'896B39D5-8040-4947-94D0-0234B4E78B23', 12, 17280.0000, 1360.0000, 750.0000, 150.0000, 0, N'Red', NULL, CAST(N'2017-11-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BCA945A6-8F87-4A00-93ED-6F2A08F8F923', 94, 1276.0000, 500.0000, 225.0000, 150.0000, 0, N'Red', NULL, CAST(N'2017-12-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'38264675-F235-412B-9B67-8F8CD86CF40D', 939, 20000.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-12-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2657F22B-5D29-4A7A-B3F9-3A04C14D7C93', 55, 18880.0000, 1360.0000, 750.0000, 150.0000, 0, N'Night Blue', NULL, CAST(N'2017-12-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7005E3EC-5DBF-4409-8545-AC401CF204DB', 44, 340000.0000, 2000.0000, 2200.0000, 1950.0000, 1, N'Canary Yellow', NULL, CAST(N'2017-12-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9BFDC1FA-8416-4F58-BE6C-3CCFA7A51860', 33, 79960.0000, 1490.0000, 750.0000, 750.0000, 1, N'Black', NULL, CAST(N'2017-12-07' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A88F114F-3808-4B2D-92BE-BD43EEA71742', 22, 37520.0000, 500.0000, 1500.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2017-12-07' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1860F37A-EBC7-42E9-B339-3F6D6048322F', 11, 36760.0000, 2000.0000, 500.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-12-09' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'00E07EB4-4A3A-434F-B3FC-76A312BEEF5D', 12, 6040.0000, 500.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2017-12-09' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C72ABA1C-D1FA-4A4B-9E16-9FE066D509BA', 12, 9592.0000, 500.0000, 750.0000, 150.0000, 1, N'Green', NULL, CAST(N'2017-12-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B8F3827A-5689-42B9-A1DE-26AFE7E2343E', 13, 10000.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2017-12-19' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A21CAFB1-7242-42D1-80AC-E5D26941E2BE', 13, 6000.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2017-12-20' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'76D2E902-DF33-4BE5-8181-B9DA01869131', 22, 45480.0000, 500.0000, 1500.0000, 550.0000, 1, N'Canary Yellow', NULL, CAST(N'2017-12-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2309FF52-564A-4A2C-B6EB-D94AA321D687', 23, 31600.0000, 1360.0000, 500.0000, 550.0000, 0, N'Black', NULL, CAST(N'2017-12-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2CE57C5E-98DE-402F-884A-A6227FD7FB5F', 22, 45560.0000, 500.0000, 1500.0000, 550.0000, 1, N'Pink', NULL, CAST(N'2017-12-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'61B73BA2-9EA0-4DB9-8D89-6E8D2A5D32DA', 21, 50000.0000, 500.0000, 750.0000, 550.0000, 1, N'British Racing Green', NULL, CAST(N'2017-12-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8BED3FBE-29EA-48AF-A8CE-7770F51A548F', 22, 34000.0000, 2000.0000, 150.0000, 550.0000, 1, N'Black', NULL, CAST(N'2017-12-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B0559A26-5CE0-4C70-89EC-C73C0837B1E8', 25, 52360.0000, 500.0000, 1500.0000, 750.0000, 1, N'Black', NULL, CAST(N'2017-12-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'99DF9E69-9DAF-4D81-8334-D7058F1030E2', 99, 1560.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D231E90A-140A-4623-AA79-16970966DDF3', 56, 920.0000, 500.0000, 750.0000, 150.0000, 0, N'Black', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'26122425-FE14-4318-8713-15C8F9EED630', 54, 9240.0000, 500.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'80B21E0F-66E3-4582-838A-D7EC560C7C0B', 87, 10056.0000, 2000.0000, 500.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'8D9BF815-FAE4-47CE-ADBB-33339D382319', 89, 7912.0000, 500.0000, 225.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F6C384B6-B768-4031-AC12-81C8CE37049E', 32, 45560.0000, 2000.0000, 500.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F9EF8BCC-5744-4EBC-91AD-739775C597D9', 85, 36760.0000, 660.0000, 1500.0000, 550.0000, 1, N'Dark Purple', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'457046F9-68AC-468E-9C5E-9C1B957FE9B9', 96, 760.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3DCFE242-5286-404C-A37E-5207E6F51BB1', 74, 17240.0000, 970.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BF9128E0-D61A-4214-8128-44A9880E20C2', 52, 4760.0000, 500.0000, 225.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'808F1237-9F5C-484F-8E14-63FF713A864D', 63, 284000.0000, 9250.0000, 7500.0000, 1950.0000, 1, N'Red', NULL, CAST(N'2018-01-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'790E96BC-2F59-4B8F-9DE2-6BB65F92216B', 41, 96000.0000, 2175.0000, 750.0000, 750.0000, 1, N'Black', NULL, CAST(N'2018-02-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'88975E00-70FD-44B6-9A1F-9E3B9CCE4382', 15, 14280.0000, 1360.0000, 150.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2018-02-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6218BE0E-185B-4B12-8696-AA976EA81B29', 26, 82920.0000, 1490.0000, 750.0000, 750.0000, 1, N'Pink', NULL, CAST(N'2018-02-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'03AC7842-CA66-4AC0-92AD-F538494D1FAE', 35, 146000.0000, 5500.0000, 1500.0000, 1950.0000, 1, N'Green', NULL, CAST(N'2018-02-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7FF88424-96A2-4149-ABF3-21AC9FBCDD4C', 57, 18000.0000, 1360.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-02-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'48437CA9-988E-42EA-94F8-DC2D6DA48BA7', 59, 17200.0000, 500.0000, 750.0000, 150.0000, 0, N'Black', NULL, CAST(N'2018-02-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'CDF97188-5367-4CCF-94DF-AC41093B9A48', 89, 6000.0000, 500.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2018-02-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E010830C-E636-49F7-ABA6-2DFDF502A587', 96, 1800.0000, 500.0000, 750.0000, 150.0000, 0, N'Canary Yellow', NULL, CAST(N'2018-02-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F5F70D13-C9BD-48E6-A903-ABC5F289A758', 69, 18120.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2018-02-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'89C3293F-F665-4E93-9929-315CBA3DD498', 36, 79160.0000, 1490.0000, 750.0000, 750.0000, 1, N'Blue', NULL, CAST(N'2018-02-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'59650ADF-0886-43B4-B360-3A79E0CA327E', 63, 284000.0000, 9250.0000, 2200.0000, 1950.0000, 1, N'Blue', NULL, CAST(N'2018-02-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4BA7F44F-422D-4AD2-84B3-2AE4F0028DB8', 56, 4800.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-03-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1DDF23D7-3CB8-49C7-A19B-2A9C5AB23ADF', 54, 4552.0000, 500.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2018-03-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A2201698-CA26-428A-988F-ABB4A8893E21', 25, 45520.0000, 1360.0000, 500.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2018-03-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F556C096-7EFE-4827-9AFF-2FD0416B1C9B', 20, 116000.0000, 9250.0000, 1500.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2018-03-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9868BF47-F113-4721-BF95-26FEF8DD51D2', 1, 79600.0000, 500.0000, 1500.0000, 750.0000, 1, N'Silver', NULL, CAST(N'2018-03-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C7086D43-16DA-444F-A461-76DA9C479425', 5, 98800.0000, 2175.0000, 1500.0000, 750.0000, 1, N'Dark Purple', NULL, CAST(N'2018-03-08' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'20041639-9549-415A-AEC2-7159352E8CB7', 8, 248000.0000, 9250.0000, 7900.0000, 1950.0000, 0, N'Silver', NULL, CAST(N'2018-03-08' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'AF51E444-D0BE-477F-8834-615824E0A89C', 13, 7840.0000, 500.0000, 750.0000, 150.0000, 1, N'Canary Yellow', NULL, CAST(N'2018-03-08' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'FAB39B43-A811-4410-A69A-707C35C767E7', 15, 12760.0000, 500.0000, 500.0000, 150.0000, 0, N'Silver', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A23F2E70-66D3-44A1-982C-ADE1ECA9CC30', 18, 204000.0000, 2000.0000, 150.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1D997989-769F-4879-B7E1-837015CEEFC5', 85, 19600.0000, 660.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BFC6861C-8D2E-40C8-A4F7-07F9E41056DC', 48, 10360.0000, 1360.0000, 750.0000, 150.0000, 1, N'Green', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'07E4BA14-7B78-4B11-9A11-1520460A5631', 6, 124000.0000, 3950.0000, 3150.0000, 1950.0000, 1, N'Black', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9E98DDEF-D2A3-4BEC-99DD-BEFEFC11E5EE', 56, 2000.0000, 500.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A4A2F089-526E-4C69-AACC-F58488B2E1C7', 25, 36400.0000, 500.0000, 750.0000, 550.0000, 0, N'Green', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7808CA65-E449-4280-A128-F5B581F47B8F', 45, 31600.0000, 500.0000, 750.0000, 550.0000, 1, N'Green', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B2D76C72-FA30-40AE-9AB9-DFB47560348C', 46, 18800.0000, 1360.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C19B3F44-9EA7-49FF-953A-86BF48B55615', 24, 36760.0000, 500.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A0F4D013-88EB-4692-B5EE-6BA800593036', 25, 44000.0000, 500.0000, 750.0000, 550.0000, 1, N'Blue', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9CD9439F-E15F-4469-BE82-7A4041633A50', 26, 80000.0000, 500.0000, 750.0000, 750.0000, 1, N'Blue', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'87A6B5EF-1E2B-49CA-85D7-263BC7E32189', 24, 35908.0000, 2000.0000, 750.0000, 550.0000, 1, N'British Racing Green', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'361E0EFF-56B8-4E0A-A1DD-41D4A51BF704', 78, 49200.0000, 500.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B89AF48B-4BB9-409B-876B-941E51D19381', 98, 760.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'15A09123-FE51-47D2-A7B0-600CB300F826', 100, 1200.0000, 500.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'FBF39066-2C13-469D-B913-EBCF22CCFD63', 4, 156000.0000, 2000.0000, 2200.0000, 1950.0000, 0, N'Black', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A326183E-7D45-4CF2-A353-7177A3EAB71F', 5, 156000.0000, 9250.0000, 750.0000, 1950.0000, 1, N'British Racing Green', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'266404D4-FBC5-4DC6-BB7C-A2ED7246D6D7', 21, 42000.0000, 500.0000, 750.0000, 550.0000, 0, N'Green', NULL, CAST(N'2018-04-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'798C76AF-985B-4B9F-B24A-4B4311AE2A08', 65, 1080.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'71C9EDC5-7897-4CCE-9B2F-5B04BEDC36D0', 98, 1996.0000, 500.0000, 750.0000, 150.0000, 1, N'Canary Yellow', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'61F8CF9A-F53C-4386-9BF8-578F54547CD2', 7, 215600.0000, 5500.0000, 1500.0000, 1950.0000, 1, N'Dark Purple', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'FF62897D-E06C-4BC1-B5EA-E6BE415B0CD1', 8, 156000.0000, 3950.0000, 1500.0000, 1950.0000, 1, N'Green', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'9555FF33-EE29-4A81-854A-69F6485BB216', 85, 20760.0000, 1360.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'EA1B19C6-631A-4683-9E29-1BC601FC850E', 86, 7992.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'27C180A1-7C39-4E88-B5DE-ACD0C9594F3C', 9, 108000.0000, 5500.0000, 5600.0000, 1950.0000, 1, N'British Racing Green', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'52F665EA-2D6D-4ECA-8A14-553522A45B04', 13, 12760.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BEC34DF7-3E37-4322-A406-04BB5DF2A0FE', 14, 71600.0000, 1490.0000, 750.0000, 750.0000, 1, N'Black', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F075AC9E-1124-4194-A05F-683F9D553335', 54, 14800.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2018-05-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'39CEB089-BC4F-4724-A47B-CDB0E2401714', 52, 12440.0000, 1360.0000, 750.0000, 150.0000, 1, N'Green', NULL, CAST(N'2018-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'05F6C06A-9CD8-448B-9F67-FDBC0A7CEDCE', 53, 2860.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B1ABF9BD-1FBC-4E9A-BCCC-0B9AFEE5CFF1', 86, 5560.0000, 500.0000, 457.0000, 150.0000, 1, N'Red', NULL, CAST(N'2018-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3D2907ED-A866-4E81-B7CB-723EA2254718', 84, 12480.0000, 1360.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'607CA291-F642-4CBD-967B-7A36DF45D150', 75, 21200.0000, 500.0000, 750.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2018-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'695E6D94-12E6-49BC-8E23-29AC3EB38D93', 71, 26800.0000, 2000.0000, 750.0000, 550.0000, 0, N'Black', NULL, CAST(N'2018-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'614ED49B-6DA9-4BFE-9560-3DB52A6593CD', 72, 19600.0000, 1360.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2018-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'532B985F-94AC-45DF-AE17-431FBCC66D0C', 21, 39600.0000, 970.0000, 750.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2018-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'740A7CB4-BF3F-46FD-98F3-D85748E5B9BA', 31, 79600.0000, 500.0000, 1050.0000, 750.0000, 1, N'Night Blue', NULL, CAST(N'2018-06-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D0B8D738-B33D-4F7F-BA25-46EC06DEB8E2', 21, 79992.0000, 2000.0000, 750.0000, 750.0000, 1, N'Silver', NULL, CAST(N'2018-07-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'23FDFA0D-C905-41A6-B95A-D5A3517293D8', 51, 5560.0000, 500.0000, 1050.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-07-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6A140D65-C354-48F6-A92E-40FF36CF1216', 54, 8400.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-07-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4AFC6EDF-49EA-4D57-85AF-D60734328922', 45, 26760.0000, 1360.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-07-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'EF8621F7-41EB-4C2D-ADBD-D4287083D41F', 26, 58000.0000, 2175.0000, 1500.0000, 750.0000, 1, N'Night Blue', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E66B3E09-F02D-484A-8B9F-A8CD7833CD6B', 98, 1920.0000, 500.0000, 750.0000, 150.0000, 1, N'Canary Yellow', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'13F9FBD7-9342-4A2D-A249-E3AD6AE9A9CB', 74, 54800.0000, 500.0000, 1500.0000, 750.0000, 1, N'Dark Purple', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E68BB825-0487-44CA-AE6C-7C650F81E22B', 98, 1880.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'519C0ED1-7611-4CDC-8153-5C4B81A7FD0F', 82, 14800.0000, 970.0000, 1050.0000, 150.0000, 1, N'Pink', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3CD0AFE8-9909-4A5D-BA9F-5C1F71B0DEE3', 84, 4400.0000, 500.0000, 750.0000, 150.0000, 0, N'Blue', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'114760E3-FC54-4C31-B323-BC4B83AB80D0', 9, 102800.0000, 3950.0000, 2200.0000, 1950.0000, 1, N'Blue', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'757E7DB7-3688-41FD-AFB6-E49CC56BCCD8', 25, 44000.0000, 1360.0000, 1500.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'BA123B46-B5DF-439B-9326-82174419FC14', 98, 1000.0000, 500.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'FCB80D65-7D65-41E4-9081-6C92D0C7F1F5', 63, 276000.0000, 5500.0000, 457.0000, 1950.0000, 1, N'Red', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'51451AC8-A35F-4597-B4BC-94E92C150C3D', 21, 37520.0000, 2000.0000, 750.0000, 550.0000, 1, N'Red', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B56F7C8F-0452-49C2-BEE2-C4C53BF38AD8', 25, 28760.0000, 500.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0318C525-58CA-438E-A5A5-BA854855A664', 24, 66072.0000, 1490.0000, 457.0000, 750.0000, 1, N'Green', NULL, CAST(N'2018-07-25' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'17FA511D-1C85-4F74-A164-B4EE39F48565', 24, 90872.0000, 500.0000, 225.0000, 750.0000, 1, N'Night Blue', NULL, CAST(N'2018-07-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4B47A26E-2723-4E06-A661-21271A6759D0', 26, 36000.0000, 1360.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-07-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'47572651-C884-4C1D-A433-E8641A1A1172', 28, 46080.0000, 2000.0000, 1500.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2018-07-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2A27FF01-DC3C-4FE2-AC8C-9145C29F651C', 27, 82000.0000, 2175.0000, 1500.0000, 750.0000, 1, N'Black', NULL, CAST(N'2018-08-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F4443E46-3EAC-4C10-902C-71257DEEE229', 21, 31600.0000, 970.0000, 750.0000, 550.0000, 1, N'Blue', NULL, CAST(N'2018-08-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'4EE854BF-A9DD-453B-815E-E0692A75A969', 25, 49240.0000, 660.0000, 750.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-08-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3D2E9AD0-972B-4A09-895F-1833655CFB21', 26, 44000.0000, 1360.0000, 1500.0000, 550.0000, 1, N'Blue', NULL, CAST(N'2018-08-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'480D88A9-B1E5-4A79-9D2C-C1050C6DA00A', 30, 79600.0000, 2000.0000, 750.0000, 750.0000, 1, N'Silver', NULL, CAST(N'2018-08-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'EE92EE4A-977E-4BC6-BEFF-512CC468944C', 33, 45440.0000, 500.0000, 750.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2018-08-02' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B8498BEE-D1C5-4D93-981F-640031A3AE6C', 31, 71600.0000, 1490.0000, 750.0000, 750.0000, 1, N'Dark Purple', NULL, CAST(N'2018-08-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A44EE0A0-B924-4B29-9C05-BA4BFADE084B', 32, 58000.0000, 1490.0000, 225.0000, 750.0000, 1, N'British Racing Green', NULL, CAST(N'2018-08-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C8C871B4-F08D-445A-BCD1-ACFEC616A113', 30, 45560.0000, 970.0000, 750.0000, 550.0000, 0, N'Red', NULL, CAST(N'2018-08-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'47693731-F213-4E60-97D6-115A7BD83259', 45, 50000.0000, 500.0000, 225.0000, 550.0000, 1, N'Canary Yellow', NULL, CAST(N'2018-09-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'73FB2744-5AD9-42DC-A29C-B9B2FEF8353C', 45, 45512.0000, 1360.0000, 750.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2018-09-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'DB742D0B-E562-41F4-AC94-8C58C2B0B69C', 46, 26880.0000, 2000.0000, 457.0000, 550.0000, 1, N'Dark Purple', NULL, CAST(N'2018-09-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'51784E0D-09DB-4A40-8E92-CB09A0DE4444', 47, 24400.0000, 1360.0000, 750.0000, 150.0000, 1, N'Silver', NULL, CAST(N'2018-09-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1A861C29-F198-4D34-BDAF-B35E8080320A', 66, 20000.0000, 1360.0000, 457.0000, 150.0000, 1, N'Green', NULL, CAST(N'2018-09-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'D0F51768-8924-4EF5-A3E9-B31AC7129BFB', 67, 20400.0000, 1360.0000, 750.0000, 150.0000, 1, N'Dark Purple', NULL, CAST(N'2018-09-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E8FF8444-2B18-45A0-84AC-F776755E06ED', 68, 31600.0000, 970.0000, 750.0000, 550.0000, 1, N'Night Blue', NULL, CAST(N'2018-09-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'A3E788F8-889C-45E1-A610-881983869F6B', 69, 10000.0000, 500.0000, 457.0000, 150.0000, 1, N'Pink', NULL, CAST(N'2018-09-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C8F49B5E-EDDB-42D0-BE0F-8C4181A6C81D', 94, 920.0000, 500.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2018-09-30' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1D5C9493-4BA2-415A-B4D6-7079278CA2DC', 95, 1560.0000, 500.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2018-10-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0A059F54-46DE-4A25-8B5D-D7373AEE6F91', 94, 2000.0000, 500.0000, 750.0000, 150.0000, 1, N'Blue', NULL, CAST(N'2018-10-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6AE8BA09-AE75-4CA4-81EE-6CD2B3947120', 23, 55600.0000, 2000.0000, 457.0000, 750.0000, 1, N'Blue', NULL, CAST(N'2018-10-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3BDD9316-9359-464B-B98E-308494AD3056', 25, 36000.0000, 500.0000, 750.0000, 550.0000, 1, N'Silver', NULL, CAST(N'2018-10-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3C17F01C-25FF-463B-86AA-1A34FEA02FF2', 28, 45592.0000, 970.0000, 457.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-10-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6FF2BEFA-53A6-40CB-A427-ECD8197D0CC5', 71, 24400.0000, 1360.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-10-10' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'30EC553A-ADEA-4503-B748-C908A979EC45', 71, 17880.0000, 970.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2D512849-C35D-4B54-BDC8-C5523C1ABF86', 72, 44000.0000, 500.0000, 457.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0E2AECED-5A41-412A-9414-DE7217C0B6EB', 72, 69200.0000, 2175.0000, 750.0000, 750.0000, 1, N'Red', NULL, CAST(N'2018-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'91B4067A-EBDE-4C1E-9370-3E894FD2FD7D', 73, 14280.0000, 970.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'436E43FB-E015-48E4-B549-33F4A0EE8D3F', 71, 20760.0000, 1360.0000, 457.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E166158C-F3BA-47DE-A499-A703210CF128', 75, 23600.0000, 660.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'1C9E6944-A890-4D7B-8F98-32B7276A78B3', 74, 47200.0000, 2000.0000, 750.0000, 550.0000, 0, N'Blue', NULL, CAST(N'2018-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'CF66838B-8A21-4084-9771-07A82CDBEBD8', 86, 7160.0000, 500.0000, 228.0000, 150.0000, 1, N'Dark Purple', NULL, CAST(N'2018-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'7461FB42-ECE2-4C8C-BDBB-EF26AF3069F9', 87, 7600.0000, 500.0000, 750.0000, 150.0000, 1, N'Green', NULL, CAST(N'2018-10-29' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F287EE1D-48C6-4E75-9595-E0AE235FBEA8', 86, 7600.0000, 500.0000, 330.0000, 150.0000, 1, N'Green', NULL, CAST(N'2018-11-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'98828061-0C7A-42C2-95D0-3095AD2EF0E4', 87, 7120.0000, 500.0000, 750.0000, 150.0000, 1, N'British Racing Green', NULL, CAST(N'2018-11-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E519F3CF-BE4B-44CF-98D5-80EC33EC6CE1', 86, 9272.0000, 500.0000, 250.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-11-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'E6923E8C-C07A-430F-B80D-7D5F329055AB', 86, 6800.0000, 500.0000, 750.0000, 150.0000, 1, N'Red', NULL, CAST(N'2018-11-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'0487C263-79B7-4F2B-8D0E-B0BAA41D7F24', 25, 47600.0000, 500.0000, 500.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-12-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'92FDF39E-6565-4B68-80BA-02ED30F00A7E', 26, 98800.0000, 2000.0000, 3150.0000, 750.0000, 1, N'Black', NULL, CAST(N'2018-12-01' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'5D7C9AA9-F0C7-4F8E-8524-6481BE3CC62E', 25, 79600.0000, 1490.0000, 750.0000, 750.0000, 1, N'Night Blue', NULL, CAST(N'2018-12-05' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'CD2E20D3-1A10-4460-AC3B-FAC658F5F6F4', 24, 43600.0000, 970.0000, 289.0000, 550.0000, 1, N'Black', NULL, CAST(N'2018-12-07' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'3C384AE3-7F59-4CD6-BAFE-5E6EFFD25FAD', 95, 1272.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-12-07' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'6556A473-CE18-428F-8F33-955E80FBA888', 87, 9200.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-12-15' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'F166C930-3101-42E9-8AE8-189F47FA0014', 54, 14360.0000, 2000.0000, 1050.0000, 150.0000, 1, N'Night Blue', NULL, CAST(N'2018-12-16' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'2E0E8003-F9CC-486D-9D08-D4DAC688C800', 65, 4400.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-12-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C2623FF4-88AA-40E9-AF3B-8D009C25027B', 100, 760.0000, 500.0000, 750.0000, 150.0000, 1, N'Black', NULL, CAST(N'2018-12-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'C7569243-BDDB-4250-901E-EA6034824106', 1, 116000.0000, 3950.0000, NULL, 1950.0000, 1, N'Black', NULL, CAST(N'2018-12-31' AS Date), CAST(N'12:55:00' AS Time))
GO
INSERT [Data].[Stock] ([StockCode], [ModelID], [Cost], [RepairsCost], [PartsCost], [TransportInCost], [IsRHD], [Color], [BuyerComments], [DateBought], [TimeBought]) VALUES (N'B9F1708F-3396-4755-A8C0-288FBE4EAF9C', NULL, NULL, NULL, 500.0000, NULL, 1, NULL, NULL, NULL, NULL)
GO