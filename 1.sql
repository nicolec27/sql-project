(select FIRSTNAME from Students, Enrollments, Classes
    where Classes.DEPT_CODE = 'CS'
    and Students.Sid = Enrollments.Sid
    and Enrollments.Classid = Classes.Classid)
INTERSECT
(select FIRSTNAME from Students, Enrollments, Classes
    where Classes.DEPT_CODE = 'Math'
    and Students.Sid = Enrollments.Sid
    and Enrollments.Classid = Classes.Classid);