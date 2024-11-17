SELECT * FROM courses;

-- Display the first 10 rows from the assignments table
SELECT * FROM assignments
LIMIT 10;

SELECT count(*) FROM courses;

-- total number of courses
SELECT count(*) FROM courses;

-- earliest due date
SELECT min(due_date) from assignments;

-- names starting with "Intro"
SELECT *
from courses
where course_name like 'Intro%';

-- not yet completed
SELECT *
FROM assignments
WHERE status != 'Completed'
ORDER by due_date;

 -- Writing Exercise Queries

SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- the earliest due_date in assignments
SELECT min(due_date)
FROM assignments;

-- latest due_date in assignments
SELECT max(due_date)
FROM assignments;

SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- Assignments due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

SELECT max(due_date)
FROM assignments
WHERE status = 'Completed';

SELECT count(*)
FROM assignments
WHERE status = 'Not Started';

