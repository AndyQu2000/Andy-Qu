select d.DepartmentName, cl.ClassNumber, cl.CourseDescription, i.firstName, i.lastname, m.[Description]
from Schedule.courses as c
	inner join Schedule.Class cl
		on c.ClassID = cl.ClassID
	inner join Facility.Department d
		on cl.DepartmentID = d.DepartmentID
	inner join Facility.instructor as i
		on c.instructorid = i.instructorid
	inner join schedule.modeofinstruction as m
		on c.modeofinstructionid = m.modeofinstructionid
where m.[Description] = 'Online';