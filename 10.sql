SELECT DISTINCT firstname
FROM students student
JOIN enrollments enroll ON student.sid = enroll.sid
JOIN classes class ON enroll.classid = class.classid
JOIN courses course ON class.dept_code = course.dept_code 
AND class.course# = course.course#
WHERE enroll.classid IN (
        SELECT en.classid
        FROM enrollments en
        WHERE en.sid = 'B002');