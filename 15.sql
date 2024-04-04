select s.sid, s.lastname, c.cgpa
from Students s 
join (select e.sid, sum(g.ngrade) / count(e.classid) cgpa
    from Enrollments e
    join (select lgrade, ngrade from Grades) g 
        on g.lgrade = e.lgrade 
    group by e.sid
    ) c 
    on s.sid = c.sid
    order by c.cgpa asc;