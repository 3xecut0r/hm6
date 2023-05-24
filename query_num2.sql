SELECT s.fullname, d.name, ROUND(AVG(g.grade),2) AS averange_grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
WHERE d.id = 2
GROUP BY s.fullname
ORDER BY averange_grade DESC
LIMIT 1;