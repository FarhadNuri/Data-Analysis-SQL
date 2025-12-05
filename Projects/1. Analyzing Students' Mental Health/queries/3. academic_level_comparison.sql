-- Undergraduate vs Graduate comparison
SELECT 
    academic AS academic_level,
    inter_dom AS student_type,
    COUNT(*) AS student_count,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(tosc), 2) AS avg_social_connectedness,
    ROUND(AVG(toas), 2) AS avg_acculturative_stress,
    ROUND(AVG(age), 1) AS avg_age
FROM students
GROUP BY academic, inter_dom
ORDER BY inter_dom, avg_depression DESC;