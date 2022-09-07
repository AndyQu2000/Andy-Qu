USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateDepartmentTable]    Script Date: 12/12/2021 3:03:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ClassScheduleProcedure].[CreateDepartmentTable](
	@UserAuthorizationKey INT
)
AS
BEGIN

	DECLARE @Start DATETIME2 = SYSDATETIME()

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	CREATE TABLE [Facility].[Department](
	[DepartmentID] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[DepartmentName] [UDT].[NameCode] NULL
	)

    -- Insert statements for procedure here
	INSERT INTO [Facility].[Department]      
		(DepartmentName)
	SELECT DISTINCT LEFT([Course (hr, crd)], CHARINDEX(' ', [Course (hr, crd)]))
	FROM Uploadfile.CurrentSemesterCourseOfferings 
	
	DECLARE @RowCount INT = (SELECT COUNT(*) FROM [Facility].Department)

	EXEC [Process].usp_TrackWorkFlow 
	@StartTime = @Start,
	@WorkFlowDescription = N'Create Facility.Department',
	@WorkFlowStepTableRowCount = @RowCount,
	@UserAuthorizationKey = @UserAuthorizationKey

END
GO


