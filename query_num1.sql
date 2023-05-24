SELECT s.fullname, ROUND(AVG(g.grade),2) AS averange_grade
FROM grades g
JOIN students s ON s.id = g.student_id 
GROUP BY s.fullname 
ORDER BY averange_grade DESC 
LIMIT 5;










