-- VUA-SEN307 Lab 5: SELECT, Filtering and Joins
-- Name: Njoku Emmanuel Somtochukwu
-- Matric: VUG/SEN/24/11680

-- USE sen30711680;

-- TASK 1
-- SELECT s.*
-- FROM Student s
-- INNER JOIN Department d ON s.dept_id = d.dept_id
-- WHERE d.dept_name = 'Software Engineering'
-- ORDER BY s.full_name ASC;

-- This Joins the Student and Department tables on dept_id to filter for students in 'Software Engineering' and sorts their names alphabetically from A to Z[cite: 3].


-- TASK2
-- SELECT c.course_title, l.full_name AS lecturer_name
-- FROM Course c
-- INNER JOIN CourseAllocation ca ON c.course_id = ca.course_id
-- INNER JOIN Lecturer l ON ca.lecturer_id = l.lecturer_id;

-- It Uses two INNER JOINs to connect Course to Lecturer via the CourseAllocation junction table, displaying each course alongside its assigned lecturer(s)[cite: 3].


-- TASK3
-- SELECT s.full_name, c.course_title
-- FROM Student s
-- LEFT JOIN Enrolment e ON s.student_id = e.student_id
-- LEFT JOIN Course c ON e.course_id = c.course_id
-- ORDER BY s.full_name;

-- It Uses LEFT JOINs starting from the Student table so every student is listed alphabetically, including those with no course enrolments (who display NULL for course_title)[cite: 1, 2, 3].

-- TASK3 (OPTIONAL PART)
-- SELECT s.full_name, c.course_title
-- FROM Student s
-- LEFT JOIN Enrolment e ON s.student_id = e.student_id
-- LEFT JOIN Course c ON e.course_id = c.course_id
-- WHERE c.course_title IS NULL
-- ORDER BY s.full_name;

-- It Filters the LEFT JOIN result to show only students who are not enrolled in any courses[cite: 3].

-- TASK4
-- SELECT *
-- FROM Student
-- WHERE gender = 'F' 
--   AND dept_id IN (1, 3) 
--   AND date_of_birth BETWEEN '2004-01-01' AND '2005-12-31';
-- It Combines AND, IN, and BETWEEN to retrieve female students belonging to departments 1 or 3 who were born between January 1, 2004, and December 31, 2005[cite: 3].

-- TASK5
-- PAGE1(ROWS 1-10)
-- SELECT *
-- FROM Enrolment
-- ORDER BY enrolment_id
-- LIMIT 10 OFFSET 0;

-- PAGE2(ROWS 11-20)
-- SELECT *
-- FROM Enrolment
-- ORDER BY enrolment_id
-- LIMIT 10 OFFSET 10;

-- It Uses ORDER BY enrolment_id to guarantee a consistent row order, then applies LIMIT and OFFSET to fetch 10 records at a time for page 1 (rows 1-10) and page 2 (rows 11-20)[cite: 4]. Always using ORDER BY with LIMIT is necessary because SQL tables have no guaranteed default order; without it, rows can shift unpredictably between pages, causing duplicates or skipped records.

-- TASK3(USING RIGHT JOIN)
-- SELECT s.full_name, c.course_title
-- FROM Course c
-- RIGHT JOIN Enrolment e ON c.course_id = e.course_id
-- RIGHT JOIN Student s ON e.student_id = s.student_id
-- ORDER BY s.full_name;

-- It Reverses the table join order and uses RIGHT JOINs to keep all rows from the rightmost table (Student). The LEFT JOIN version is much easier to read because it follows a natural left-to-right flow starting from the main entity (Student) and branching out to optional related records[cite: 1, 2, 4].