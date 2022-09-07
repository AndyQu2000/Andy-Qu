CREATE TYPE  [Udt].[Year] FROM CHAR(4) NULL  

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Model] (
	[ModelID] [Udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[MakeID] [Udt].[SurrogateKeyInt] NULL,
	[ModelName] [Udt].[Name]  NULL,
	 CONSTRAINT [PK_ModelID] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Data].[ModelYear] (
	[ModelID] [Udt].[SurrogateKeyInt] NOT NULL
		CONSTRAINT FK_ModelYear REFERENCES [Data].[Model] (ModelID),
	[YearFirstProduced] [Udt].[Year] NULL,
	[YearLastProduced]  [Udt].[Year] NULL
)

CREATE TABLE [Data].[ModelVariant] (
	[ModelID] [Udt].[SurrogateKeyInt] NOT NULL
		CONSTRAINT FK_ModelVariant REFERENCES [Data].[Model] (ModelID),
	[ModelVariant] [Udt].[Name]  NULL,
)

GO
alter table [Udt].[Model]  with check add  constraint [CK_ModelISO2] check  (([ModelName] like '[A-Z][A-Z]')) 
GO
alter table [Udt].[Model]  with check add  constraint [CK_ModelISO3] check  (([YearFirstProduced] >=0))
GO
alter table [Udt].[Model]  with check add  constraint [CK_ModelISO4] check  ((YearLastProduced >=0))
GO

-- INSERT INTO [Data].[ModelYear]
GO
INSERT [Data].[ModelYear] ([ModelID], [YearFirstProduced], [YearLastProduced]) VALUES (19, N'1970', N'1976') -- (3, N'Jarama')
GO

--INSERT INTO [Data].[ModelVariant]
GO
INSERT [Data].[ModelVariant] ([ModelID], [ModelVariant]) VALUES (48, N'Sports Pagoda') -- 8, N'250SL'
GO
INSERT [Data].[ModelVariant] ([ModelID], [ModelVariant]) VALUES (51, N'Sprint') -- 9, N'Giulia'
GO
INSERT [Data].[ModelVariant] ([ModelID], [ModelVariant]) VALUES (53, N'GTV') -- 9, N'1750'
GO
INSERT [Data].[ModelVariant] ([ModelID], [ModelVariant]) VALUES (65, N'Coupe') -- 13, N'Rosalie'
GO
INSERT [Data].[ModelVariant] ([ModelID], [ModelVariant]) VALUES (96, N'GTI') -- 23, N'205'
GO


SELECT * FROM [Data].[Model]

SELECT * FROM [Data].[ModelYear]

SELECT * FROM [Data].[ModelVariant]


--SET IDENTITY_INSERT [Data].[Model] ON 
GO
INSERT [Data].[Model] ([MakeID], [ModelName]) VALUES (1, N'Daytona')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (1, N'Testarossa')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (1, N'355')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (1, N'308')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (1, N'Dino')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (1, N'Mondial')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (1, N'F40')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (1, N'F50')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (1, N'360')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (1, N'Enzo')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (2, N'911')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (2, N'924')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (2, N'944')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (2, N'959')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (2, N'928')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (2, N'Boxster')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (3, N'Countach')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (3, N'Diabolo')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (3, N'Jarama') -- HAS MODEL YEARS
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (3, N'400GT')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (4, N'DB2')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (4, N'DB4')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (4, N'DB5')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (4, N'DB6')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (4, N'DB9')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (4, N'Virage')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (4, N'Vantage')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (4, N'Vanquish')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (4, N'Rapide')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (5, N'Mulsanne')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (5, N'Continental')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (5, N'Flying Spur')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (5, N'Arnage')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (5, N'Brooklands')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (6, N'Phantom')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (6, N'Ghost')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (6, N'Wraith')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (6, N'Silver Shadow')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (6, N'Corniche')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (6, N'Camargue')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (6, N'Silver Seraph')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (7, N'57')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (7, N'62')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (7, N'Exelero')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (8, N'280SL')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (8, N'350SL')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (8, N'500SL')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (8, N'250SL') -- HAS MODEL VARIANT
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (8, N'R107')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (8, N'W107')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (9, N'Giulia') -- MODEL VARIANT
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (9, N'Spider')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (9, N'1750') -- MODEL VARIANT
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (9, N'Giulietta')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (10, N'Lichfield')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (10, N'Princess')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (10, N'Cambridge')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (11, N'Isetta')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (11, N'Alpina')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (11, N'E30')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (12, N'35')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (12, N'Veyron')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (12, N'57C')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (13, N'Torpedo')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (13, N'Rosalie') --MODEL VARIANT
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (13, N'Traaction Avant')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (14, N'135')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (14, N'145')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (14, N'175')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (15, N'DMC 12')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (16, N'Mark V')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (16, N'Mark X')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (16, N'XJ12')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (16, N'XK120')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (16, N'XK150')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (16, N'XJS')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (16, N'E-Type')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (17, N'V12')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (17, N'3 Litre')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (18, N'P1')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (19, N'Plus 8')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (19, N'Plus 4')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (19, N'Supersport')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (20, N'M14')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (20, N'M600')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (21, N'TR4')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (21, N'TR5')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (21, N'TR6')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (21, N'TR7')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (21, N'GT6')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (21, N'Roadster')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (21, N'Stag')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (21, N'TR3A')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (22, N'500')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (22, N'600')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (23, N'205') --MODEL VARIANT*********
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (23, N'Type VA')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (23, N'404')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (23, N'203')
GO
INSERT [Data].[Model] ( [MakeID], [ModelName]) VALUES (24, N'Robin')
GO
--SET IDENTITY_INSERT [Data].[Model] OFF