-- 1. Count students by department

SELECT
    d.name AS department,
    COUNT(s.student_id) AS student_count
FROM departments d
LEFT JOIN students s
    ON d.department_id = s.department_id
GROUP BY d.department_id, d.name
ORDER BY student_count DESC;


-- 2. Average marks by course

SELECT
    c.course_name,
    AVG(r.marks) AS average_marks
FROM results r
JOIN enrollments e
    ON r.enrollment_id = e.enrollment_id
JOIN courses c
    ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_name
ORDER BY average_marks DESC;


-- 3. Total payments by student

SELECT
    s.full_name,
    SUM(p.amount) AS total_paid
FROM students s
JOIN payments p
    ON s.student_id = p.student_id
GROUP BY s.student_id, s.full_name
ORDER BY total_paid DESC;