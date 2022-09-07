USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateDepartmentInstructorsTable]    Script Date: 12/12/2021 3:00:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ClassScheduleProcedure].[CreateDepartmentInstructorsTable](
	@UserAuthorizationKey INT
)
AS
BEGIN

	DECLARE @Start DATETIME2 = SYSDATETIME()

	CREATE TABLE [Facility].[DepartmentInstructors](
		InstructorID [UDT].[ForeignKeyInt] NOT NULL FOREIGN KEY REFERENCES [Facility].Instructor(InstructorID),
		DepartmentID [UDT].[ForeignKeyInt] NOT NULL FOREIGN KEY REFERENCES [Facility].Department(DepartmentID)
	)

	INSERT INTO [Facility].[DepartmentInstructors] (InstructorID, DepartmentID)
		SELECT DISTINCT
			(SELECT InstructorID FROM [Facility].Instructor 
				WHERE FirstName = RIGHT(Instructor, LEN(Instructor) - CHARINDEX(',', Instructor))
				AND LastName = LEFT(Instructor, CHARINDEX(',', Instructor)-1)) AS 'InstructorID'
			,(SELECT DepartmentID FROM [Facility].Department
				WHERE DepartmentName = LEFT([Course (hr, crd)], CHARINDEX(' ', [Course (hr, crd)]))) AS 'DepartmentID'
		FROM Uploadfile.CurrentSemesterCourseOfferings
		WHERE LEFT(Instructor, CHARINDEX(',', Instructor)-1) <> ' '

		DECLARE @RowCount INT = (SELECT COUNT(*) FROM [Facility].DepartmentInstructors)

		EXEC [Process].usp_TrackWorkFlow 
		@StartTime = @Start,
		@WorkFlowDescription = N'Create Facility.DepartmentInstructors',
		@WorkFlowStepTableRowCount = @RowCount,
		@UserAuthorizationKey = @UserAuthorizationKey
END
GO


