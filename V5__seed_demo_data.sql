INSERT INTO departments (name)
VALUES
    ('Computer Science'),
    ('Information Science'),
    ('Business Studies');

INSERT INTO students (
    admission_number,
    full_name,
    email,
    phone,
    department_id
)
VALUES
    ('GTC001', 'Hassan Mohamed', 'hassan@example.com', '0700000001', 1),
    ('GTC002', 'Ahmed Ali', 'ahmed@example.com', '0700000002', 2),
    ('GTC003', 'Zeynab Ibrahim', 'zeynab@example.com', '0700000003', 1);

INSERT INTO courses (
    course_code,
    course_name,
    department_id
)
VALUES
    ('CS101', 'Introduction to Programming', 1),
    ('IS101', 'Database Systems', 2),
    ('CS102', 'Data Structures', 1);

INSERT INTO enrollments (
    student_id,
    course_id,
    semester,
    academic_year
)
VALUES
    (1, 1, 'Semester 1', 2026),
    (2, 2, 'Semester 1', 2026),
    (3, 3, 'Semester 1', 2026);

INSERT INTO results (
    enrollment_id,
    marks,
    grade
)
VALUES
    (1, 85.00, 'A'),
    (2, 76.00, 'B'),
    (3, 68.00, 'B');

INSERT INTO payments (
    student_id,
    amount,
    payment_method,
    status
)
VALUES
    (1, 15000.00, 'M-Pesa', 'paid'),
    (2, 12000.00, 'Bank', 'paid'),
    (3, 10000.00, 'M-Pesa', 'paid');