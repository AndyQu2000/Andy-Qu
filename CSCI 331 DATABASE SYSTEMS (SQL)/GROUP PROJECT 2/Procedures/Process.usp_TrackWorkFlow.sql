USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [Process].[usp_TrackWorkFlow]    Script Date: 12/12/2021 3:25:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [Process].[usp_TrackWorkFlow] (
	@StartTime DATETIME2,
	@WorkFlowDescription [UDT].[Description],
	@WorkFlowStepTableRowCount INT,
	@UserAuthorizationKey INT
)
AS
BEGIN
	INSERT INTO [Process].WorkFlowSteps (StartingDateTime, WorkFlowStepDescription, WorkFlowStepTableRowCount, UserAuthorizationKey)
		VALUES (@StartTime, @WorkFlowDescription, @WorkFlowStepTableRowCount, @UserAuthorizationKey)
END
GO


