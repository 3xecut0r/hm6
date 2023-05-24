SELECT g2.name, d.name, ROUND(AVG(g.grade),2) AS averange_grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN groups g2 ON g2.id = S.group_id
JOIN disciplines d ON d.id = g.discipline_id
WHERE d.id = 3
GROUP BY g2.name
ORDER BY averange_grade DESC
LIMIT 3;