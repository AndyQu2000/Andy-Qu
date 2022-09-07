USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateCoursesTable]    Script Date: 12/12/2021 2:18:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [ClassScheduleProcedure].[CreateCoursesTable](
	@UserAuthorizationKey INT
)
AS
BEGIN
	
	DECLARE @Start DATETIME2 = SYSDATETIME()

	CREATE TABLE [Schedule].[Courses] (
		CourseID [UDT].[SurrogateKeyInt] PRIMARY KEY IDENTITY(1,1),
		CourseCode [UDT].[NameCode] NULL DEFAULT(-1),
		ClassID [UDT].[ForeignKeyInt] FOREIGN KEY REFERENCES [Schedule].[Class](ClassID) DEFAULT(-1),
		InstructorID [UDT].[ForeignKeyInt] FOREIGN KEY REFERENCES [Facility].[Instructor](InstructorID) DEFAULT (-1),
		RoomID [UDT].[ForeignKeyInt] FOREIGN KEY REFERENCES [Facility].[Room](RoomID) DEFAULT (-1),
		ModeOfInstructionID [UDT].[ForeignKeyInt] FOREIGN KEY REFERENCES [Schedule].[ModeOfInstruction](ModeOfInstructionID) DEFAULT (-1),
		Section [UDT].[NumberCode] NULL DEFAULT('TBA'),
		[Day] [UDT].[NameCode] NULL DEFAULT('TBA'),
		StartTime [UDT].[NameCode] NULL DEFAULT('TBA'),
		EndTime [UDT].[NameCode] NULL DEFAULT('TBA'),
		Enrolled [UDT].[ColumnInt] NULL DEFAULT(0),
		Limit [UDT].[ColumnInt] NULL DEFAULT(0),
	)
	INSERT INTO [Schedule].Courses
		SELECT 
			Code AS 'CourseCode'
			,(SELECT ClassID FROM Schedule.Class C
				WHERE C.DepartmentID = (SELECT DepartmentID FROM Facility.Department D WHERE D.DepartmentName = LEFT([Course (hr, crd)], CHARINDEX(' ', [Course (hr, crd)])))
					AND C.ClassNumber = SUBSTRING([Course (hr, crd)], CHARINDEX(' ', [Course (hr, crd)])+1, CHARINDEX('(', [Course (hr, crd)])-2 - CHARINDEX(' ', [Course (hr, crd)])+1)
					AND C.CourseDescription = [Description]
					AND C.ClassHours = SUBSTRING([Course (hr, crd)], CHARINDEX('(', [Course (hr, crd)])+1, CHARINDEX(',', [Course (hr, crd)]) - CHARINDEX('(', [Course (hr, crd)]) - 1)
					AND C.ClassCredits = CAST(SUBSTRING(RIGHT([Course (hr, crd)], 2), 1, 1) AS INT)
			 ) AS 'ClassID'
			,COALESCE((SELECT InstructorID FROM [Facility].Instructor I
				WHERE I.FirstName = RIGHT(Instructor, LEN(Instructor) - CHARINDEX(',', Instructor))
					AND I.LastName = LEFT(Instructor, CHARINDEX(',', Instructor)-1)
			 ), -1) AS 'InstructorID'
			,COALESCE((SELECT RoomID FROM [Facility].[Room] R
				WHERE R.BuildingID = (SELECT BuildingID FROM Facility.Building B WHERE B.BuildingCode = SUBSTRING([Location], 1, 2)
					AND R.RoomNumber = RIGHT([Location], LEN([Location]) - CHARINDEX(' ', [Location])))
			 ), -1) AS 'RoomID'
			,(SELECT ModeOfInstructionID FROM Schedule.ModeOfInstruction M WHERE M.[Description] = [Mode of Instruction]
			 ) AS 'ModeOfInstructionID'
			 ,Sec
			 ,CASE 
				WHEN [Day] = ' ' THEN 'TBA'
				ELSE [Day]
			  END AS 'Day'
			 ,CASE
				WHEN LEFT([Time], CHARINDEX('-', [Time])-1) = ' ' THEN 'TBA'
				ELSE LEFT([Time], CHARINDEX('-', [Time])-1)
			  END AS 'StartTime'
			 ,CASE
				WHEN SUBSTRING([Time], CHARINDEX('-', [Time])+2, LEN([Time]) - CHARINDEX('-', [Time])+2) = ' ' THEN 'TBA'
				ELSE SUBSTRING([Time], CHARINDEX('-', [Time])+2, LEN([Time]) - CHARINDEX('-', [Time])+2)
			  END AS 'EndTime'
			 ,Enrolled
			 ,Limit
		FROM Uploadfile.CurrentSemesterCourseOfferings

		DECLARE @RowCount INT = (SELECT COUNT(*) FROM Schedule.Courses)

		EXEC [Process].usp_TrackWorkFlow 
		@StartTime = @Start,
		@WorkFlowDescription = N'Create Schedule.Courses',
		@WorkFlowStepTableRowCount = @RowCount,
		@UserAuthorizationKey = @UserAuthorizationKey
END
GO