SELECT class.classid
FROM classes class
JOIN courses course ON class.dept_code = course.dept_code AND class.course# = course.course#
JOIN enrollments enroll ON class.classid = enroll.classid
WHERE course.dept_code = 'CS'
AND class.semester = 'Spring'
AND class.year = 2024
GROUP BY class.classid
HAVING COUNT(*) < 3;