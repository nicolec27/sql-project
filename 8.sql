SELECT student.sid, firstname
FROM students student
JOIN enrollments enroll ON student.sid = enroll.sid
JOIN classes class ON enroll.classid = class.classid
JOIN courses course ON class.dept_code = course.dept_code AND class.course# = course.course#
WHERE course.dept_code = 'Math' AND course.course# BETWEEN 200 AND 299
GROUP BY student.sid, student.firstname
HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM courses
    WHERE dept_code = 'Math' AND course# BETWEEN 200 AND 299
);