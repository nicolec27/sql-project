select distinct co.dept_code, co.course#, co.title
from Courses co
join Classes c on co.course# = c.course#
where co.title like '%data%'
    and not exists (
        select * from Students s
        where s.gpa > 3.3
    and not exists ( 
        select * from Enrollments e
        where e.sid = s.sid
        and e.classid = c.classid));