USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateClassTable]    Script Date: 12/12/2021 2:48:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ClassScheduleProcedure].[CreateClassTable](
	@UserAuthorizationKey INT
)
AS
BEGIN

	DECLARE @Start DATETIME2 = SYSDATETIME()

	CREATE TABLE [Schedule].[Class] (
		ClassID [UDT].[SurrogateKeyInt] NOT NULL PRIMARY KEY IDENTITY(1, 1),
		DepartmentID [UDT].[ForeignKeyInt] NOT NULL FOREIGN KEY REFERENCES [Facility].[Department](DepartmentID),
		ClassNumber [UDT].[NumberCode] NULL,
		CourseDescription [UDT].[Description] NULL,
		ClassHours [UDT].[NumberCode] NULL,
		ClassCredits [UDT].[ColumnInt]NULL, 
	)

	INSERT INTO Schedule.Class(DepartmentID, ClassNumber, CourseDescription, ClassHours, ClassCredits)
		SELECT DISTINCT
			(SELECT DepartmentID FROM Facility.Department WHERE DepartmentName = LEFT([Course (hr, crd)], CHARINDEX(' ', [Course (hr, crd)]))) AS 'DepartmentID'
			,SUBSTRING([Course (hr, crd)], CHARINDEX(' ', [Course (hr, crd)])+1, CHARINDEX('(', [Course (hr, crd)])-2 - CHARINDEX(' ', [Course (hr, crd)])+1) AS 'ClassNumber'
			,[Description] AS 'CourseDescription'
			,SUBSTRING([Course (hr, crd)], CHARINDEX('(', [Course (hr, crd)])+1, CHARINDEX(',', [Course (hr, crd)]) - CHARINDEX('(', [Course (hr, crd)]) - 1) AS 'ClassHours'
			,CAST(SUBSTRING(RIGHT([Course (hr, crd)], 2), 1, 1) AS INT) AS 'ClassCredits'
		FROM Uploadfile.CurrentSemesterCourseOfferings

	DECLARE @RowCount INT = (SELECT COUNT(*) FROM Schedule.Class)

	EXEC [Process].usp_TrackWorkFlow 
	@StartTime = @Start,
	@WorkFlowDescription = N'Create Schedule.Class',
	@WorkFlowStepTableRowCount = @RowCount,
	@UserAuthorizationKey = @UserAuthorizationKey
END 
GO


