USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateInstructorTable]    Script Date: 12/12/2021 3:07:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ClassScheduleProcedure].[CreateInstructorTable] (
	@UserAuthorizationKey INT
)
AS
BEGIN

	DECLARE @Start DATETIME2 = SYSDATETIME()

	CREATE TABLE [Facility].Instructor (
		InstructorID [UDT].[SurrogateKeyInt] NOT NULL Primary key identity(1,1),
		FirstName [UDT].[Name] null,
		LastName [UDT].[Name] null
	)

	SET IDENTITY_INSERT [Facility].Instructor ON
	INSERT [Facility].Instructor (InstructorID, FirstName, LastName) VALUES (-1, N'TBA', N'TBA')
	SET IDENTITY_INSERT [Facility].Instructor OFF

	INSERT INTO [Facility].Instructor (LastName, FirstName)
		SELECT DISTINCT 
			LEFT(Instructor, CHARINDEX(',', Instructor)-1) AS 'LastName'
		   ,RIGHT(Instructor, LEN(Instructor) - CHARINDEX(',', Instructor)) AS 'FirstName'
		FROM Uploadfile.CurrentSemesterCourseOfferings
		WHERE LEFT(Instructor, CHARINDEX(',', Instructor)-1) <> ' '

	DECLARE @RowCount INT = (SELECT COUNT(*) FROM [Facility].Instructor)

	EXEC [Process].usp_TrackWorkFlow 
	@StartTime = @Start,
	@WorkFlowDescription = N'Create Facility.Instructor',
	@WorkFlowStepTableRowCount = @RowCount,
	@UserAuthorizationKey = @UserAuthorizationKey

END
GO


