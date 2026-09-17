-- BEFORE OPTIMIZATION

EXPLAIN ANALYZE
SELECT
    student_id,
    SUM(amount) AS total_paid
FROM payments
GROUP BY student_id
ORDER BY total_paid DESC
LIMIT 10;


-- OPTIMIZATION

CREATE INDEX IF NOT EXISTS idx_payments_student_optimized
ON payments(student_id);


-- AFTER OPTIMIZATION

EXPLAIN ANALYZE
SELECT
    student_id,
    SUM(amount) AS total_paid
FROM payments
GROUP BY student_id
ORDER BY total_paid DESC
LIMIT 10;