/****** Object:  Table [Reference].[StaffHierarchy]    Script Date: 01/06/2018 08:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Reference].[StaffHierarchy](
	[HierarchyReference] [Udt].[Name] NULL,
	[StaffID] [Udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
) ON [PRIMARY]
GO

ALTER TABLE [Reference].[StaffHierarchy]
	ADD CONSTRAINT FK_StaffHierarchy FOREIGN KEY (StaffID) 
		REFERENCES Reference.Staff (StaffID)

SET IDENTITY_INSERT [Reference].[StaffHierarchy] ON 
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/', 1)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/1/', 2)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/2/', 3)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/3/', 4)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/3/1/', 5)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/3/2/', 6)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/3/3/', 7)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/3/4/', 8)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/3/5/', 9)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/1/1/', 10)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/1/2/', 11)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/2/1/', 12)
GO
INSERT [Reference].[StaffHierarchy] ([HierarchyReference], [StaffID]) VALUES (N'/1/1/2/1/', 13)
GO
SET IDENTITY_INSERT [Reference].[StaffHierarchy] OFF


SELECT * FROM Reference.StaffHierarchy