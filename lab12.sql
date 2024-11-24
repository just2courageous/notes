-- Add an assignment with NULL due_date
INSERT INTO assignments (course_id, title, status)
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10;

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

-- version of the SQLite library being used.
SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

-- multiplying 7 by 5
SELECT 7*5;

-- combines (concatenates) multiple strings into one
SELECT concat('ABC', '-', 'xyz');

-- returs current date
SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

-- SUBSTRING(string, start, length)
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

-- Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;


SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;



SELECT course_name || ' - ' || semester AS course_info
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';


SELECT *
FROM assignments
WHERE due_date > DATE('now');


SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;


SELECT course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;


SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;


SELECT title
FROM assignments
WHERE due_date LIKE '____-09-%';


SELECT *
FROM assignments
WHERE due_date IS NULL;


SELECT c.course_id, COUNT(a.id) AS total_assignments
FROM courses c
LEFT JOIN assignments a ON c.course_id = a.course_id
GROUP BY c.course_id;



