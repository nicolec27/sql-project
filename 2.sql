select dept_code, course# from courses c where not exists
    (select * from CLASSES
    where course# = c.course#
    and semester = 'Spring'
    and year = '2024');