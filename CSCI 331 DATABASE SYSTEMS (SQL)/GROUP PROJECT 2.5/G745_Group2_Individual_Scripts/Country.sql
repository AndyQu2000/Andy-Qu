use [PrestigeCars]
GO

/****** Object:  Schema [Utils]    Script Date: 4/23/2021 9:21:49 AM ******/
CREATE SCHEMA [Utils]
GO
/****** Object:  UserDefinedDataType [Udt].[CountryName]    Script Date: 4/23/2021 9:21:49 AM ******/
CREATE TYPE [Udt].[CountryName] FROM [nvarchar](15) NOT NULL
GO
/****** Object:  UserDefinedDataType [Udt].[ISO2]    Script Date: 4/23/2021 9:21:49 AM ******/
CREATE TYPE [Udt].[ISO2] FROM [nchar](2) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[ISO3]    Script Date: 4/23/2021 9:21:49 AM ******/
CREATE TYPE [Udt].[ISO3] FROM [nchar](3) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[SalesRegion]    Script Date: 4/23/2021 9:21:49 AM ******/
CREATE TYPE [Udt].[SalesRegion] FROM [nvarchar](15) NULL
GO
/****** Object:  View [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint]    Script Date: 4/23/2021 9:21:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Data].[Country]    Script Date: 4/27/2021 11:22:14 AM ******/
set ansi_nulls on
go

set quoted_identifier on
go

create table [Data].[Country](
	[CountryId] [Udt].[SurrogateKeyInt] identity(1,1) not null,
	[CountryName] [Udt].[CountryName] not null,
	[CountryISO2] [Udt].[ISO2] not null,
	[CountryISO3] [Udt].[ISO3] not null,
	[SalesRegionId] [Udt].[SurrogateKeyInt] not null,
 constraint [PK_Country] primary key clustered 
(
	[CountryId] asc
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [PRIMARY]
) on [PRIMARY]
go

alter table [Data].[Country]  with check add  constraint [FK_Country_SalesRegion] foreign key([SalesRegionId])
references [Data].[SalesRegion] ([SalesRegionId])
go

alter table [Data].[Country] check constraint [FK_Country_SalesRegion]
go

alter table [Data].[Country]  with check add  constraint [CK_CountryISO2] check  (([CountryISO2] like '[A-Z][A-Z]'))
go

alter table [Data].[Country] check constraint [CK_CountryISO2]
go

alter table [Data].[Country]  with check add  constraint [CK_CountryISO3] check  (([CountryISO3] like '[A-Z][A-Z][A-Z]'))
go

alter table [Data].[Country] check constraint [CK_CountryISO3]
go

/****** Object:  Table [Data].[SalesRegion]    Script Date: 4/23/2021 9:21:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[SalesRegion](
	[SalesRegionId] [Udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[SalesRegion] [Udt].[SalesRegion] NOT NULL,
 CONSTRAINT [PK_SalesRegion] PRIMARY KEY CLUSTERED 
(
	[SalesRegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueCoutryName_idx]    Script Date: 4/23/2021 9:21:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueCoutryName_idx] ON [Data].[Country]
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueCoutryNameISO2_idx]    Script Date: 4/23/2021 9:21:49 AM ******/
CREATE NONCLUSTERED INDEX [UniqueCoutryNameISO2_idx] ON [Data].[Country]
(
	[CountryISO2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueCoutryNameISO3_idx]    Script Date: 4/23/2021 9:21:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueCoutryNameISO3_idx] ON [Data].[Country]
(
	[CountryISO3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueSalesRegionName_idx]    Script Date: 4/23/2021 9:21:49 AM ******/
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
ALTER TABLE [Data].[Country]  WITH CHECK ADD  CONSTRAINT [CK_CountryISO2] CHECK  ((len([CountryISO2])=(2)))
GO
ALTER TABLE [Data].[Country] CHECK CONSTRAINT [CK_CountryISO2]
GO
ALTER TABLE [Data].[Country]  WITH CHECK ADD  CONSTRAINT [CK_CountryISo3] CHECK  ((len([CountryISO3])=(3)))
GO
ALTER TABLE [Data].[Country] CHECK CONSTRAINT [CK_CountryISo3]
GO


GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'Belgium', N'BE', N'BEL', 1)
GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'France', N'FR', N'FRA', 1)
GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'Germany', N'DE', N'DEU', 1)
GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'Italy', N'IT', N'ITA', 1)
GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'Spain', N'ES', N'ESP', 1)
GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'United Kingdom', N'GB', N'GBR', 1)
GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'United States', N'US', N'USA', 2)
GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'China', N'CN', N'CHN', 3)
GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'India', N'IN', N'IND', 3)
GO
INSERT [Data].[Country] ([CountryName], [CountryISO2], [CountryISO3], [SalesRegionId]) VALUES (N'Switzerland', N'CH', N'CHF', 1)
GO



GO
INSERT [Data].SalesRegion ([SalesRegion]) VALUES (N'EMEA')
GO
INSERT [Data].SalesRegion ([SalesRegion]) VALUES (N'North America')
GO
INSERT [Data].SalesRegion ([SalesRegion]) VALUES (N'Asia')
GO


SELECT * FROM Data.SalesRegion
ORDER BY SalesRegionID


SELECT * FROM Data.Country