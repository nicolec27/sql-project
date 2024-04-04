select distinct LASTNAME from STUDENTS s where exists
    (select * from Enrollments
    where lgrade is not null
    and sid = s.sid
    group by sid
    having min(lgrade) = max(lgrade) 
    and min(lgrade) = 'A');