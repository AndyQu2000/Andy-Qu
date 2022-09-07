USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateUserAuthorizationTable]    Script Date: 12/12/2021 3:20:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ClassScheduleProcedure].[CreateUserAuthorizationTable]
AS
BEGIN
	CREATE TABLE [DBSecurity].[UserAuthorization](
		[UserAuthorizationKey] [int] NOT NULL IDENTITY(1,1),
		[ClassTime] [UDT].[NumberCode] NULL,
		[Individual_Project] [UDT].[Description] NULL,
		[GroupMemberLastName] [UDT].[Name]  NOT NULL,
		[GroupMemberFirstName] [UDT].[Name]  NOT NULL,
		[GroupName] [UDT].[Name]  NOT NULL,
		[DateAdded] [datetime2](7) NULL,
	 CONSTRAINT [PK_UserAuthorizationKey] PRIMARY KEY CLUSTERED 
	(
		[UserAuthorizationKey] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [DbSecurity].[UserAuthorization] 
		ADD	CONSTRAINT [DFT_ClassTime]  DEFAULT ('7:45') FOR [ClassTime]

	ALTER TABLE [DbSecurity].[UserAuthorization] 
		ADD CONSTRAINT [DFT_Individual_Project]  DEFAULT ('PROJECT 3 CREATE QUEENS CLASS SCHEDULE') FOR [Individual_Project]

	ALTER TABLE [DbSecurity].[UserAuthorization] 
		ADD CONSTRAINT [DFT_GroupName]  DEFAULT ('G745_2') FOR [GroupName]

	ALTER TABLE [DbSecurity].[UserAuthorization] 
		ADD CONSTRAINT [DFT_DateAdded]  DEFAULT (sysdatetime()) FOR [DateAdded]

	INSERT INTO [DbSecurity].[UserAuthorization] (GroupMemberLastName, GroupMemberFirstName)
		VALUES (N'Sajjad', N'Muhammad Ali'),
			   (N'Sumaryev', N'Yevgeniy'),
			   (N'Jean', N'Gomez'),
			   (N'Chao', N'Wang'),
			   (N'Andy', N'Qu')
		
END
GO


