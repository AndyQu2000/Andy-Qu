USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateModeOfInstructionTable]    Script Date: 12/12/2021 3:10:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ClassScheduleProcedure].[CreateModeOfInstructionTable] (
	@UserAuthorizationKey INT
)
AS
BEGIN

	DECLARE @Start DATETIME2 = SYSDATETIME()

	CREATE TABLE [Schedule].[ModeOfInstruction](
		[ModeOfInstructionID] [UDT].[SurrogateKeyInt] NOT NULL IDENTITY(1, 1),
		[Description] [UDT].[ShortDescription] NULL,
		CONSTRAINT [PK_ModeOfInstruction] PRIMARY KEY CLUSTERED
	(
		[ModeOfInstructionID] asc
	)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [PRIMARY]
)

	INSERT [Schedule].[ModeOfInstruction]([Description])Values('Online');
	
	INSERT [Schedule].[ModeOfInstruction]([Description])Values('In-Person');
	
	INSERT [Schedule].[ModeOfInstruction]([Description])Values('Hybrid');
	
	INSERT [Schedule].[ModeOfInstruction]([Description])Values('Web-Enhanced');


	DECLARE @RowCount INT = (SELECT COUNT(*) FROM Schedule.ModeOfInstruction)

	EXEC [Process].usp_TrackWorkFlow 
	@StartTime = @Start,
	@WorkFlowDescription = N'Create Schedule.ModeOfInstruction',
	@WorkFlowStepTableRowCount = @RowCount,
	@UserAuthorizationKey = @UserAuthorizationKey

END
GO


