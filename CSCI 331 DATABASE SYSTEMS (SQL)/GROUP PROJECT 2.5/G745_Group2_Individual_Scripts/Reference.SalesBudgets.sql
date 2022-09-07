/****** Object:  Table [Reference].[SalesBudgets]    Script Date: 01/06/2018 08:48:40 ******/
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
	[BudgetMonth] [tinyint] NULL
) ON [PRIMARY]
GO

ALTER TABLE [Reference].[SalesBudgets]
	ADD CONSTRAINT PK_SalesBudgets PRIMARY KEY (BudgetArea)


INSERT [Reference].[SalesBudgets] ([BudgetArea], [BudgetAmount], [BudgetYear], [DateUpdated], [Comments], [BudgetMonth]) VALUES (N'USA', 250000.0000, 2017, CAST(N'2016-10-05T00:00:00.000' AS DateTime), N'Forgot to add this!', 3)
GO
INSERT [Reference].[SalesBudgets] ([BudgetArea], [BudgetAmount], [BudgetYear], [DateUpdated], [Comments], [BudgetMonth]) VALUES (N'Europe', 1149500.0000, 2017, CAST(N'2016-11-05T00:00:00.000' AS DateTime), N'Required too', 3)
GO
INSERT [Reference].[SalesBudgets] ([BudgetArea], [BudgetAmount], [BudgetYear], [DateUpdated], [Comments], [BudgetMonth]) VALUES (N'Rest of world', 50000.0000, 2017, CAST(N'2016-10-05T00:00:00.000' AS DateTime), N'Effort required', 3)
GO