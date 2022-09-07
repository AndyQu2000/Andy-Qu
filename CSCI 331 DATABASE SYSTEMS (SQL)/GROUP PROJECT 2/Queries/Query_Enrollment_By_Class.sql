--. How may classes that are being taught that semester grouped by course and
--aggregating the total enrollment, total class limit and the percentage of
--enrollment

SELECT
	 D.DepartmentName
	,CL.ClassNumber
	,CL.CourseDescription
	,COUNT(CS.ClassID) AS 'Classes'
	,SUM(CS.Enrolled) AS 'Total Enrollment'
	,SUM(CS.limit) AS 'Total Limit'
	,CAST(ROUND(CAST(SUM(CS.Enrolled) AS FLOAT)/ CAST(SUM(CS.limit) AS FLOAT), 2) *100 AS varchar(4)) + '%' AS 'Capacity'
FROM Schedule.Courses CS
	INNER JOIN Schedule.Class CL
		ON CS.ClassID = CL.ClassID
	INNER JOIN Facility.Department D
		ON CL.DepartmentID = D.DepartmentID
WHERE CS.limit <> 0
GROUP BY D.DepartmentName ,CL.ClassNumber, CL.CourseDescription



SELECT * FROM Schedule.Class