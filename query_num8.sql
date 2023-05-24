SELECT t.fullname, d.name, ROUND(AVG(g.grade),2) AS averange_grade
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id
GROUP BY d.name
ORDER BY averange_grade DESC;