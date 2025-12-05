SELECT 
    inter_dom AS student_type,
    COUNT(*) AS student_count,
    ROUND(AVG(todep), 2) AS avg_depression_score,
    ROUND(MIN(todep), 2) AS min_depression_score,
    ROUND(MAX(todep), 2) AS max_depression_score,
    ROUND(STDDEV(todep), 2) AS std_dev_depression
FROM students
GROUP BY inter_dom
ORDER BY avg_depression_score DESC;