ALTER PROCEDURE [Process].[CreateQueensClassSchedule]
AS
BEGIN
	--EXEC ClassScheduleProcedure.CreateUDTs

	EXEC ClassScheduleProcedure.CreateUserAuthorizationTable

	EXEC ClassScheduleProcedure.CreateWorkFlowStepsTable

	EXEC ClassScheduleProcedure.CreateBuildingTable @UserAuthorizationKey = 1

	EXEC ClassScheduleProcedure.CreateInstructorTable @UserAuthorizationKey = 3

	EXEC ClassScheduleProcedure.CreateDepartmentTable @UserAuthorizationKey = 2

	EXEC ClassScheduleProcedure.CreateModeOfInstructionTable @UserAuthorizationKey = 5

	EXEC ClassScheduleProcedure.CreateRoomTable @UserAuthorizationKey = 4

	EXEC ClassScheduleProcedure.CreateDepartmentInstructorsTable @UserAuthorizationKey = 1

	EXEC ClassScheduleProcedure.CreateClassTable @UserAuthorizationKey = 1

	EXEC ClassScheduleProcedure.CreateCoursesTable @UserAuthorizationKey = 1

	EXEC Process.usp_ShowWorkFlowSteps
END 


-- for testing purposes
DROP TABLE Process.WorkFlowSteps
DROP TABLE DBSecurity.UserAuthorization
DROP TABLE Schedule.Courses
DROP TABLE Schedule.Class
DROP TABLE Schedule.ModeOfInstruction
DROP TABLE Facility.DepartmentInstructors
DROP TABLE Facility.Room
DROP TABLE Facility.Building
DROP TABLE Facility.Department
DROP TABLE Facility.Instructor

EXEC Process.CreateQueensClassSchedule

SELECT * FROM DBSecurity.UserAuthorization
SELECT * FROM Process.WorkFlowSteps
SELECT * FROM Schedule.Courses
SELECT * FROM Schedule.Class
SELECT * FROM Schedule.ModeOfInstruction
SELECT * FROM Facility.Building
SELECT * FROM Facility.Room
SELECT * FROM Facility.Department
SELECT * FROM Facility.Instructor
SELECT * FROM Facility.DepartmentInstructors

SELECT * FROM Uploadfile.CurrentSemesterCourseOfferings