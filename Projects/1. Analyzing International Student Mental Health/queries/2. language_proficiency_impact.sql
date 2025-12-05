-- Japanese proficiency impact (for international students)
SELECT 
    japanese_cate AS japanese_proficiency,
    COUNT(*) AS student_count,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(toas), 2) AS avg_acculturative_stress,
    ROUND(AVG(tosc), 2) AS avg_social_connectedness
FROM students
WHERE inter_dom = 'International'
GROUP BY japanese_cate
ORDER BY avg_depression DESC;

-- English proficiency impact
SELECT 
    english_cate AS english_proficiency,
    inter_dom AS student_type,
    COUNT(*) AS student_count,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(tosc), 2) AS avg_social_connectedness
FROM students
GROUP BY english_cate, inter_dom
ORDER BY inter_dom, avg_depression DESC;