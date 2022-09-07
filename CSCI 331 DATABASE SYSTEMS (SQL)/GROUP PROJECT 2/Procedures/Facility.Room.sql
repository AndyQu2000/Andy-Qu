USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateRoomTable]    Script Date: 12/12/2021 3:14:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ClassScheduleProcedure].[CreateRoomTable] (
	@UserAuthorizationKey INT
)
AS
BEGIN

	DECLARE @Start DATETIME2 = SYSDATETIME()

	CREATE TABLE [Facility].Room (
		RoomID [UDT].[SurrogateKeyInt]  NOT NULL PRIMARY KEY IDENTITY(1,1),
		BuildingID [UDT].[ForeignKeyInt] NULL FOREIGN KEY REFERENCES [Facility].[Building](BuildingID),
		RoomNumber [UDT].[NumberCode] NULL
	)

	SET IDENTITY_INSERT [Facility].Room ON
	INSERT Facility.Room (RoomID, RoomNumber) VALUES (-1, 'TBA')
	SET IDENTITY_INSERT [Facility].Room OFF

	INSERT INTO [Facility].[Room](BuildingID, RoomNumber)
		SELECT DISTINCT 
		(SELECT BuildingID FROM [Facility].[Building] WHERE LEFT([Location], CHARINDEX(' ', [Location])) = BuildingCode) AS 'BuildingID'
		,RIGHT([Location], LEN([Location]) - CHARINDEX(' ', [Location])) AS 'BuildingRoom'
		FROM Uploadfile.CurrentSemesterCourseOfferings AS CS
		WHERE CHARINDEX(' ', [Location]) <> 0

	DECLARE @RowCount INT = (SELECT COUNT(*) FROM [Facility].Room)

	EXEC [Process].usp_TrackWorkFlow 
	@StartTime = @Start,
	@WorkFlowDescription = N'Create Facility.Room',
	@WorkFlowStepTableRowCount = @RowCount,
	@UserAuthorizationKey = @UserAuthorizationKey

END
GO

