/****** Object:  Table [Reference].[Staff]    Script Date: 01/06/2018 08:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reference].[Staff](
	[StaffID] [udt].SurrogateKeyInt IDENTITY(1,1) NOT NULL,
	[StaffName] [udt].[Name] NULL,
	[ManagerID] [int] NULL,
	[Department] [udt].[Name] NULL
) ON [PRIMARY]
GO


ALTER TABLE [Reference].[Staff]
	ADD CONSTRAINT PK_Staff PRIMARY KEY (StaffID)

GO
CREATE FUNCTION Reference.GetManager (
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

SELECT * FROM Reference.GetManager(7)

SELECT * FROM Reference.Staff


SET IDENTITY_INSERT [Reference].[Staff] ON 
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (1, N'Amelia', NULL, NULL)
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (2, N'Gerard', 1, N'Finance')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (3, N'Chloe', 1, N'Marketing')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (4, N'Susan', 1, N'Sales')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (5, N'Andy', 4, N'Sales')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (6, N'Steve', 4, N'Sales')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (7, N'Stan', 4, N'Sales')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (8, N'Nathan', 4, N'Sales')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (9, N'Maggie', 4, N'Sales')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (10, N'Jenny', 2, N'Finance')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (11, N'Chris', 2, N'Finance')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (12, N'Megan', 3, N'Marketing')
GO
INSERT [Reference].[Staff] ([StaffID], [StaffName], [ManagerID], [Department]) VALUES (13, N'Sandy', 11, N'Finance')
GO
SET IDENTITY_INSERT [Reference].[Staff] OFF