select dept_code, course#, semester, year from classes 
    group by dept_code, course#, semester, year 
    having count(course#) >= 2;