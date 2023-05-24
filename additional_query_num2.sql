SELECT g.grade, gr.name, d2.name, g.date_of AS date_of
FROM grades g
JOIN disciplines d2 ON d2.id = g.discipline_id
JOIN students s2 ON s2.id = g.student_id
JOIN groups gr ON gr.id = s2.group_id
WHERE date_of = (SELECT MAX(date_of)
				 FROM grades g
				 JOIN disciplines d ON d.id = g.discipline_id
				 JOIN students s ON s.id = g.student_id
				 JOIN groups gr2 ON gr2.id = s.group_id
				 WHERE gr2.id = 1 AND d.id = 5)
ORDER BY date_of DESC;