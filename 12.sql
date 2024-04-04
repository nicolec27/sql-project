select distinct s.sid, s.lastname from students s 
join enrollments e 
    on s.sid = e.sid
join (
    select classid, min(lgrade) g
    from enrollments 
    group by classid
) temp 
    on e.classid = temp.classid 
and e.lgrade = temp.g;