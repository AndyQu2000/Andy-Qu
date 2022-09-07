USE [QueensClassSchedule]
GO

/****** Object:  StoredProcedure [ClassScheduleProcedure].[CreateUDTs]    Script Date: 12/14/2021 12:44:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [ClassScheduleProcedure].[CreateUDTs]
AS
BEGIN
	
	DECLARE @Start DATETIME2 = SYSDATETIME()

	CREATE TYPE [UDT].[SurrogateKeyInt] FROM INT NOT NULL

	CREATE TYPE [UDT].[ForeignKeyInt] FROM INT NULL

	CREATE TYPE [UDT].[ColumnInt] FROM INT NULL

	CREATE TYPE [UDT].[Abbreviation] FROM NVARCHAR(2) NULL

	CREATE TYPE [UDT].[Name] FROM NVARCHAR(30) NULL

	CREATE TYPE [UDT].[NameCode] FROM NVARCHAR(10) NULL

	CREATE TYPE [UDT].[NumberCode] FROM NVARCHAR(5) NULL

	CREATE TYPE [UDT].[Description] FROM VARCHAR(50) NULL

	CREATE TYPE [UDT].[ShortDescription] FROM VARCHAR(20)

END
GO


