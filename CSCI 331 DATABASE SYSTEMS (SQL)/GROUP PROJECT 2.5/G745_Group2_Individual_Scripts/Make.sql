SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Make](
	[MakeID] [udt].SurrogateKeyInt IDENTITY(1,1) NOT NULL,
	[MakeName] [udt].[Name] NULL,
	[MakeCountry] [udt].[ISO3] NULL,
	 CONSTRAINT [PK_MakeID] PRIMARY KEY CLUSTERED 
(
	[MakeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SELECT * FROM [Data].Make
-----------------------------------------------------------------------------

--SET IDENTITY_INSERT [Data].[Make] ON 
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Ferrari', N'ITA')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Porsche', N'GER')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Lamborghini', N'ITA')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Aston Martin', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Bentley', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Rolls Royce', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Maybach', N'GER')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Mercedes', N'GER')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Alfa Romeo', N'ITA')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Austin', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'BMW', N'GER')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Bugatti', N'FRA')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Citroen', N'FRA')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Delahaye', N'FRA')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Delorean', N'USA')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Jaguar', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Lagonda', N'ITA')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'McLaren', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Morgan', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Noble', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Triumph', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Trabant', N'GER')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Peugeot', N'GER')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Reliant', N'FRA')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Riley', N'GBR')
GO
INSERT [Data].[Make] ([MakeName], [MakeCountry]) VALUES (N'Cadillac', N'USA')
GO
--SET IDENTITY_INSERT [Data].[Make] OFF