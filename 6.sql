SELECT sid, firstname FROM students
WHERE sid IN (SELECT sid FROM enrollments GROUP BY sid HAVING COUNT(*) > 2);