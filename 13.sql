select c.dept_code, c.course#, co.title, NVL(e.lgrade, 'To be assigned') grade
from enrollments e join classes c 
    on e.classid = c.classid
join courses co 
    on c.course# = co.course#
where e.sid = 'B007';