USE QueensClassSchedule;
-- Yevgeniy Sumaryev

--How many instructors are in each department
SELECT DI.DepartmentID,
       D.DepartmentName,
       COUNT(DI.DepartmentID) AS NumberOfInstructors
FROM Facility.DepartmentInstructors AS DI
    INNER JOIN Facility.Department AS D
        ON D.DepartmentID = DI.DepartmentID
GROUP BY DI.DepartmentID, D.DepartmentName
ORDER BY DI.DepartmentID;


--How many Students are enrolled in a course
--and what is the limit for the course
SELECT SC.CourseDescription,
       SUM(SO.enrolled) AS TotalEnrolled,
	   SUM(SO.limit) AS TotalLimit
FROM Schedule.Class AS SC
    INNER JOIN Schedule.Courses AS SO
        ON SC.ClassID = SO.ClassID
GROUP BY SC.CourseDescription


--What are the top 5 most enrolled courses grouped by class
--top 5 courses with most enrolled students
SELECT TOP (5)
       SO.enrolled,
       SC.CourseDescription,
	   SO.CourseCode
FROM Schedule.Class AS SC
    INNER JOIN Schedule.Courses AS SO
        ON SC.ClassID = SO.ClassID
GROUP BY SC.CourseDescription, SO.enrolled, SO.CourseCode
ORDER BY SO.enrolled desc;


--Which class has most students enrolled in in each
--department?
SELECT DISTINCT SC.CourseDescription,
       MAX(SO.enrolled) AS MaxEnrolled
FROM Schedule.Class AS SC
    INNER JOIN Schedule.Courses AS SO
        ON SC.ClassID = SO.ClassID
GROUP BY SC.CourseDescription 






