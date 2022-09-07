USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateWorkFlowStepsTable]    Script Date: 12/12/2021 3:22:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [ClassScheduleProcedure].[CreateWorkFlowStepsTable]
AS
BEGIN
	CREATE TABLE [Process].[WorkFlowSteps](
		[WorkFlowStepKey] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
		[WorkFlowStepDescription] [UDT].[Description] NOT NULL,
		[WorkFlowStepTableRowCount] [UDT].[ColumnInt] NULL,
		[StartingDateTime] [datetime2](7) NULL,
		[EndingDateTime] [datetime2](7) NULL,
		[ClassTime] [UDT].[NumberCode] NULL,
		[UserAuthorizationKey] [UDT].[ForeignKeyInt] NOT NULL FOREIGN KEY REFERENCES DBSecurity.UserAuthorization(UserAuthorizationKey),
	 CONSTRAINT [PK_WorkFlowSteps] PRIMARY KEY CLUSTERED 
	(
		[WorkFlowStepKey] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [Process].[WorkFlowSteps] 
		ADD DEFAULT ((0)) FOR [WorkFlowStepTableRowCount]

	ALTER TABLE [Process].[WorkFlowSteps] 
		ADD DEFAULT (sysdatetime()) FOR [StartingDateTime]

	ALTER TABLE [Process].[WorkFlowSteps] 
		ADD DEFAULT (sysdatetime()) FOR [EndingDateTime]

	ALTER TABLE [Process].[WorkFlowSteps] 
		ADD DEFAULT ('07:15') FOR [ClassTime]
END
GO


