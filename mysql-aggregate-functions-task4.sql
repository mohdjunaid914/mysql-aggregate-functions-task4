use school_db;
select count(*) as total_students
from students;
select city, count(*) as students_in_city
from students
group by city;
select avg(age) as average_age
from students;
select min(age) as youngest, max(age) as oldest
from students;
select course_id, count(*) as total_enrollments
from enrollments
group by course_id;
SELECT c.course_name, COUNT(e.enroll_id) AS total_enrollments
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_name;
SELECT c.course_name, COUNT(e.enroll_id) AS total_enrollments
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_name
HAVING COUNT(e.enroll_id) >= 2;
SELECT c.course_name, AVG(s.age) AS avg_student_age
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_name;
SELECT MONTH(enroll_date) AS month_no, COUNT(*) AS enrollments_in_month
FROM enrollments
GROUP BY MONTH(enroll_date);
SELECT city, SUM(age) AS total_age
FROM students
GROUP BY city;



