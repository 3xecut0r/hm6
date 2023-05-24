SELECT ROUND(AVG(g.grade),2) AS averange_grade, t.fullname AS teacher, s.fullname AS student
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id
JOIN students s ON s.id = g.student_id
WHERE t.id = 4 AND s.id = 45;
