/****** Object:  Table [Reference].[Budget]    Script Date: 01/06/2018 08:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[Budget](
	[BudgetKey] [udt].SurrogateKeyInt IDENTITY(1,1) NOT NULL,
	[BudgetValue] [money] NULL,
	[Year] [int] NULL,
	[Month] [tinyint] NULL,
	[BudgetDetail] [udt].[Name] NULL,
	[BudgetElement] [udt].[Name] NULL
) ON [PRIMARY]
GO

GO
CREATE FUNCTION Reference.BudgetByYear(
	@year int
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Reference.Budget
	WHERE Year = @year
GO

SELECT * FROM Reference.BudgetByYear(2016)

ALTER TABLE [Reference].[Budget]
	ADD CONSTRAINT PK_Budget PRIMARY KEY (BudgetKey)

SET IDENTITY_INSERT [Reference].[Budget] ON 
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (1, 100000.0000, 2015, 1, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (2, 100000.0000, 2015, 2, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (3, 125000.0000, 2015, 3, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (4, 125000.0000, 2015, 4, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (5, 200000.0000, 2015, 5, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (6, 150000.0000, 2015, 6, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (7, 10000.0000, 2015, 7, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (8, 50000.0000, 2015, 8, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (9, 50000.0000, 2015, 9, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (10, 50000.0000, 2015, 10, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (11, 50000.0000, 2015, 11, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (12, 50000.0000, 2015, 12, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (13, 200000.0000, 2016, 1, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (14, 200000.0000, 2016, 2, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (15, 200000.0000, 2016, 4, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (16, 200000.0000, 2016, 5, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (17, 200000.0000, 2016, 6, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (18, 300000.0000, 2016, 7, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (19, 300000.0000, 2016, 8, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (20, 300000.0000, 2016, 9, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (21, 300000.0000, 2016, 10, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (22, 300000.0000, 2016, 11, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (23, 450000.0000, 2016, 12, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (24, 450000.0000, 2017, 1, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (25, 450000.0000, 2017, 2, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (26, 600000.0000, 2017, 3, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (27, 600000.0000, 2017, 4, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (28, 1000000.0000, 2017, 5, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (29, 600000.0000, 2017, 6, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (30, 600000.0000, 2017, 7, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (31, 150000.0000, 2017, 8, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (32, 450000.0000, 2017, 9, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (33, 250000.0000, 2017, 10, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (34, 600000.0000, 2017, 11, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (35, 300000.0000, 2017, 12, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (36, 450000.0000, 2018, 1, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (37, 450000.0000, 2018, 2, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (38, 450000.0000, 2018, 3, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (39, 500000.0000, 2018, 4, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (40, 500000.0000, 2018, 5, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (41, 500000.0000, 2018, 6, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (42, 500000.0000, 2018, 7, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (43, 500000.0000, 2018, 8, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (44, 500000.0000, 2018, 9, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (45, 700000.0000, 2018, 10, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (46, 250000.0000, 2018, 11, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (47, 500000.0000, 2018, 12, N'TotalSales', N'Sales')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (48, 250000.0000, 2015, NULL, N'Black', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (49, 250000.0000, 2015, NULL, N'Blue', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (50, 111500.0000, 2015, NULL, N'British Racing Green', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (51, 132000.0000, 2015, NULL, N'Canary Yellow', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (52, 250000.0000, 2015, NULL, N'Green', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (53, 50000.0000, 2015, NULL, N'Night Blue', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (54, 250000.0000, 2015, NULL, N'Red', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (55, 50000.0000, 2015, NULL, N'Silver', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (56, 250000.0000, 2016, NULL, N'Black', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (57, 250000.0000, 2016, NULL, N'Blue', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (58, 50000.0000, 2016, NULL, N'British Racing Green', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (59, 50000.0000, 2016, NULL, N'Canary Yellow', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (60, 50000.0000, 2016, NULL, N'Dark Purple', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (61, 250000.0000, 2016, NULL, N'Green', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (62, 400000.0000, 2016, NULL, N'Night Blue', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (63, 50000.0000, 2016, NULL, N'Pink', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (64, 500000.0000, 2016, NULL, N'Red', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (65, 450000.0000, 2016, NULL, N'Silver', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (66, 500000.0000, 2017, NULL, N'Black', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (67, 500000.0000, 2017, NULL, N'Blue', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (68, 869990.0000, 2017, NULL, N'British Racing Green', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (69, 50000.0000, 2017, NULL, N'Canary Yellow', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (70, 50000.0000, 2017, NULL, N'Dark Purple', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (71, 500000.0000, 2017, NULL, N'Green', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (72, 500000.0000, 2017, NULL, N'Night Blue', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (73, 50000.0000, 2017, NULL, N'Pink', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (74, 500000.0000, 2017, NULL, N'Red', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (75, 800000.0000, 2017, NULL, N'Silver', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (76, 500000.0000, 2018, NULL, N'Black', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (77, 500000.0000, 2018, NULL, N'Blue', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (78, 500000.0000, 2018, NULL, N'British Racing Green', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (79, 50000.0000, 2018, NULL, N'Canary Yellow', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (80, 500000.0000, 2018, NULL, N'Dark Purple', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (81, 500000.0000, 2018, NULL, N'Green', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (82, 500000.0000, 2018, NULL, N'Night Blue', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (83, 50000.0000, 2018, NULL, N'Pink', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (84, 50000.0000, 2018, NULL, N'Red', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (85, 50000.0000, 2018, NULL, N'Silver', N'Color')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (86, 100000.0000, 2016, 8, N'Belgium', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (87, 15500.0000, 2017, 2, N'Belgium', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (88, 100000.0000, 2017, 3, N'Belgium', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (89, 45950.0000, 2017, 7, N'Belgium', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (90, 34000.0000, 2017, 11, N'Belgium', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (91, 950.0000, 2018, 1, N'Belgium', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (92, 6950.0000, 2018, 6, N'Belgium', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (93, 19950.0000, 2015, 2, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (94, 19600.0000, 2015, 4, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (95, 8950.0000, 2015, 5, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (96, 22950.0000, 2015, 6, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (97, 75500.0000, 2015, 7, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (98, 2550.0000, 2016, 1, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (99, 39500.0000, 2016, 2, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (100, 49580.0000, 2016, 5, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (101, 180150.0000, 2016, 6, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (102, 231500.0000, 2016, 8, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (103, 51065.0000, 2016, 9, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (104, 100000.0000, 2016, 12, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (105, 80250.0000, 2017, 1, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (106, 100000.0000, 2017, 2, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (107, 109150.0000, 2017, 3, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (108, 360000.0000, 2017, 4, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (109, 698450.0000, 2017, 5, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (110, 29500.0000, 2017, 6, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (111, 291450.0000, 2017, 7, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (112, 77675.0000, 2017, 8, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (113, 100000.0000, 2017, 9, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (114, 100000.0000, 2017, 10, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (115, 62700.0000, 2017, 11, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (116, 7550.0000, 2017, 12, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (117, 250000.0000, 2018, 1, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (118, 250000.0000, 2018, 2, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (119, 250000.0000, 2018, 3, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (120, 9950.0000, 2018, 4, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (121, 359000.0000, 2018, 5, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (122, 345000.0000, 2018, 7, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (123, 250000.0000, 2018, 9, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (124, 154450.0000, 2018, 10, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (125, 8900.0000, 2018, 11, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (126, 5500.0000, 2018, 12, N'France', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (127, 11500.0000, 2015, 2, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (128, 71890.0000, 2016, 2, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (129, 99500.0000, 2016, 4, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (130, 81000.0000, 2016, 8, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (131, 25000.0000, 2016, 12, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (132, 250000.0000, 2017, 3, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (133, 45000.0000, 2017, 5, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (134, 99500.0000, 2017, 6, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (135, 23600.0000, 2017, 12, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (136, 11550.0000, 2018, 1, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (137, 99500.0000, 2018, 8, N'Germany', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (138, 14590.0000, 2016, 7, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (139, 54950.0000, 2016, 8, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (140, 12500.0000, 2016, 10, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (141, 99500.0000, 2016, 12, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (142, 147500.0000, 2017, 5, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (143, 44500.0000, 2017, 6, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (144, 250000.0000, 2017, 11, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (145, 46900.0000, 2017, 12, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (146, 195000.0000, 2018, 4, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (147, 135000.0000, 2018, 5, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (148, 100000.0000, 2018, 7, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (149, 12500.0000, 2018, 9, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (150, 123500.0000, 2018, 12, N'Italy', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (151, 79500.0000, 2016, 7, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (152, 12750.0000, 2016, 8, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (153, 68900.0000, 2016, 9, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (154, 132100.0000, 2016, 10, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (155, 39500.0000, 2016, 12, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (156, 29500.0000, 2017, 4, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (157, 78390.0000, 2017, 5, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (158, 12950.0000, 2017, 6, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (159, 250000.0000, 2017, 9, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (160, 89000.0000, 2017, 11, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (161, 111940.0000, 2017, 12, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (162, 45950.0000, 2018, 1, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (163, 373690.0000, 2018, 3, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (164, 114400.0000, 2018, 4, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (165, 128500.0000, 2018, 7, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (166, 57600.0000, 2018, 8, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (167, 56890.0000, 2018, 9, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (168, 11500.0000, 2018, 12, N'Spain', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (169, 285000.0000, 2015, 1, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (170, 19500.0000, 2015, 2, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (171, 155000.0000, 2015, 3, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (172, 89000.0000, 2015, 4, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (173, 364500.0000, 2015, 5, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (174, 31685.0000, 2015, 7, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (175, 37200.0000, 2015, 9, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (176, 22600.0000, 2015, 10, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (177, 22950.0000, 2015, 11, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (178, 69500.0000, 2015, 12, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (179, 263950.0000, 2016, 1, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (180, 59650.0000, 2016, 2, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (181, 141750.0000, 2016, 4, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (182, 49450.0000, 2016, 5, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (183, 57150.0000, 2016, 6, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (184, 501650.0000, 2016, 7, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (185, 354780.0000, 2016, 8, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (186, 447150.0000, 2016, 9, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (187, 172100.0000, 2016, 10, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (188, 111890.0000, 2016, 11, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (189, 414490.0000, 2016, 12, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (190, 457850.0000, 2017, 1, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (191, 8750.0000, 2017, 2, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (192, 557620.0000, 2017, 3, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (193, 295000.0000, 2017, 4, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (194, 606700.0000, 2017, 5, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (195, 83150.0000, 2017, 6, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (196, 524000.0000, 2017, 7, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (197, 60500.0000, 2017, 8, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (198, 19500.0000, 2017, 10, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (199, 25000.0000, 2017, 11, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (200, 146000.0000, 2017, 12, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (201, 295420.0000, 2018, 1, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (202, 476450.0000, 2018, 2, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (203, 9800.0000, 2018, 3, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (204, 653785.0000, 2018, 4, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (205, 66125.0000, 2018, 5, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (206, 150500.0000, 2018, 6, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (207, 318290.0000, 2018, 7, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (208, 258550.0000, 2018, 8, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (209, 189450.0000, 2018, 9, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (210, 52950.0000, 2018, 10, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (211, 8500.0000, 2018, 11, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (212, 301540.0000, 2018, 12, N'United Kingdom', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (213, 36500.0000, 2015, 4, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (214, 5500.0000, 2015, 8, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (215, 123590.0000, 2015, 10, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (216, 172150.0000, 2016, 1, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (217, 17500.0000, 2016, 4, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (218, 12500.0000, 2016, 7, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (219, 92150.0000, 2016, 8, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (220, 21500.0000, 2017, 2, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (221, 250000.0000, 2017, 5, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (222, 22600.0000, 2017, 8, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (223, 65250.0000, 2017, 9, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (224, 12500.0000, 2017, 12, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (225, 65450.0000, 2018, 1, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (226, 182500.0000, 2018, 2, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (227, 56900.0000, 2018, 3, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (228, 97000.0000, 2018, 4, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (229, 195000.0000, 2018, 5, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (230, 33500.0000, 2018, 6, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (231, 55000.0000, 2018, 7, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (232, 158590.0000, 2018, 8, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (233, 89500.0000, 2018, 9, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (234, 152990.0000, 2018, 10, N'United States', N'Country')
GO
INSERT [Reference].[Budget] ([BudgetKey], [BudgetValue], [Year], [Month], [BudgetDetail], [BudgetElement]) VALUES (235, 77450.0000, 2018, 12, N'United States', N'Country')
GO
SET IDENTITY_INSERT [Reference].[Budget] OFF



SELECT * FROM Reference.Budget