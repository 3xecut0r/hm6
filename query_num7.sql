SELECT s.fullname, g.grade, g2.name, d.name
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
JOIN groups g2 ON g2.id = s.group_id
WHERE g2.id = 2 AND d.id = 4
ORDER BY g.grade DESC;