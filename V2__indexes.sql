CREATE INDEX idx_students_department
ON students(department_id);

CREATE INDEX idx_courses_department
ON courses(department_id);

CREATE INDEX idx_enrollments_student
ON enrollments(student_id);

CREATE INDEX idx_enrollments_course
ON enrollments(course_id);

CREATE INDEX idx_results_enrollment
ON results(enrollment_id);

CREATE INDEX idx_payments_student
ON payments(student_id);

CREATE INDEX idx_payments_date
ON payments(payment_date);