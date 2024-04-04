SELECT course.title
FROM courses course
JOIN classes class ON course.dept_code = class.dept_code AND course.course# = class.course#
JOIN enrollments student ON class.classid = student.classid
WHERE student.sid = 'B003'

MINUS

SELECT course.title
FROM courses course
JOIN classes class ON course.dept_code = class.dept_code AND course.course# = class.course#
JOIN enrollments student ON class.classid = student.classid
WHERE student.sid = 'B005';