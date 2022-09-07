--How many room are being used in the IB building( buildingID 1)
SELECT COUNT(R.RoomID) AS NumberOfRoom
FROM  Facility.Building AS B
INNER JOIN Facility.Room AS R  ON  R.BuildingID = B.BuildingID
WHERE B.BuildingID=1

--how many class in the IB building which class hours are 3 and classCredits are 3
SELECT COUNT(R.RoomID) AS NumberOfRoom
FROM  Facility.Building AS B
INNER JOIN Facility.Room AS R  ON  R.BuildingID = B.BuildingID
INNER JOIN Schedule.courses AS C ON   C.roomID = R.RoomID
INNER JOIN Schedule.Class AS CL ON CL.ClassID =C.ClassID
WHERE B.BuildingID=1 AND CL.ClassHours=3 AND CL.ClassCredits=3


-- find the instructor whose first letter of his Last name is W 
SELECT i.InstructorID,i.LastName,I.FirstName
FROM Facility.Instructor  AS I 
INNER JOIN Facility.DepartmentInstructors AS DI ON DI.InstructorID = I.InstructorID
WHERE  I.LastName LIKE N'[W]%' AND I.InstructorID >1000

-- Students B is a acct student and  would like to enroll the  in person classes  
-- find the classes that are in person  
SELECT *
FROM Schedule.Courses AS CO
INNER JOIN Schedule.Class AS C
ON C.ClassID = CO.ClassID
WHERE CO.ModeOfInstructionID =
(
    SELECT MF.ModeOfInstructionID
    FROM Schedule.ModeOfInstruction AS MF
    WHERE MF.ModeOfInstructionID = 2
) AND c.ClassID=1
AND CO.Enrolled <CO.Limit