select dept_code, course# from (
    select dept_code, course#, count(*) num
    from Classes
    group by dept_code, course#
) temp
where num in (
    select min(count(*))
    from Classes
    group by dept_code, course#);