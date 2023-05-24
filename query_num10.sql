SELECT d.name, s.fullname AS student, t.fullname AS teacher
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id
WHERE s.id = 5 AND t.id = 3;