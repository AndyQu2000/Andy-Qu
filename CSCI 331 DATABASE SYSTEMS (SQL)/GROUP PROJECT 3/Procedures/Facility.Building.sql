USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateBuildingTable]    Script Date: 12/12/2021 2:41:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ClassScheduleProcedure].[CreateBuildingTable] (
	@UserAuthorizationKey INT
)
AS

DECLARE @Start DATETIME2 = SYSDATETIME()

CREATE TABLE [Facility].Building (
	BuildingID [UDT].[SurrogateKeyInt] NOT NULL PRIMARY KEY IDENTITY(1,1),
	BuildingCode [UDT].[Abbreviation] NULL,
	BuildingName [UDT].[Name] NULL
)

INSERT INTO [Facility].Building (BuildingCode)
	SELECT DISTINCT SUBSTRING([Location], 1, 2) FROM Uploadfile.CurrentSemesterCourseOfferings
	WHERE [Location] <> ''

UPDATE [Facility].[Building] 
	SET BuildingName = 
		CASE 
			WHEN BuildingCode = N'IB' THEN N'I Building'
			WHEN BuildingCode = N'GC' THEN N'Gertz Center' 
			WHEN BuildingCode = N'QH' THEN N'Queens Hall' 
			WHEN BuildingCode = N'SU' THEN N'Student Union'
			WHEN BuildingCode = N'RA' THEN N'Rathaus Hall'
			WHEN BuildingCode = N'MU' THEN N'Music Building'
			WHEN BuildingCode = N'KY' THEN N'Kiely Hall'
			WHEN BuildingCode = N'RZ' THEN N'Razran Hall'
			WHEN BuildingCode = N'SB' THEN N'Science Building'
			WHEN BuildingCode = N'CH' THEN N'Colwin Hall'
			WHEN BuildingCode = N'HH' THEN N'Honors Hall'
			WHEN BuildingCode = N'AR' THEN N'AR Building'          
			WHEN BuildingCode = N'DY' THEN N'Delany Hall'
			WHEN BuildingCode = N'PH' THEN N'Powdermaker Hall'
			WHEN BuildingCode = N'RO' THEN N'Rosenthal Library'
			WHEN BuildingCode = N'FG' THEN N'FitzGerald Gym'
			WHEN BuildingCode = N'CD' THEN N'Campbell Dome' 		
			WHEN BuildingCode = N'KG' THEN N'King Hall'
			WHEN BuildingCode = N'JH' THEN N'Jefferson Hall'
			WHEN BuildingCode = N'RE' THEN N'Remsen Hall'
			WHEN BuildingCode = N'KP' THEN N'Klapper Hall'
			WHEN BuildingCode = N'GT' THEN N'Goldstein Theatre'
			WHEN BuildingCode = N'GB' THEN N'G Building'
		END

		DECLARE @RowCount INT = (SELECT COUNT(*) FROM [Facility].Building)

		EXEC [Process].usp_TrackWorkFlow 
		@StartTime = @Start,
		@WorkFlowDescription = N'Create Facility.Building',
		@WorkFlowStepTableRowCount = @RowCount,
		@UserAuthorizationKey = @UserAuthorizationKey
GO


