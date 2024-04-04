select FIRSTNAME from STUDENTS s where not exists
    (select * from Enrollments
    where sid = s.sid
    and lgrade = 'C');