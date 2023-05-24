/* 1 */
SELECT s.fullname, ROUND(AVG(g.grade),2) AS averange_grade
FROM grades g
JOIN students s ON s.id = g.student_id 
GROUP BY s.fullname 
ORDER BY averange_grade DESC 
LIMIT 5;
/* 2 */
SELECT s.fullname, d.name ROUND(AVG(g.grade),2) AS averange_grade
FROM grades g
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 2
GROUP BY s.fullname 
ORDER BY averange_grade DESC 
LIMIT 1;
/* 3 */
SELECT g2.name, d.name, ROUND(AVG(g.grade),2) AS averange_grade 
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN groups g2 ON g2.id = S.group_id
JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 3
GROUP BY g2.name
ORDER BY averange_grade DESC
LIMIT 3;
/* 4 */
SELECT ROUND(AVG(g.grade),3) AS averange_grade
FROM grades g 
LIMIT 1;
/* 5 */
SELECT d.name, t.fullname
FROM disciplines d 
JOIN teachers t ON t.id = d.teacher_id;
/* 6 */
SELECT g.name, s.fullname
FROM students s 
JOIN groups g ON g.id = s.group_id
ORDER BY g.name;
/* 7 */
SELECT s.fullname, g.grade, g2.name, d.name
FROM grades g 
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
JOIN groups g2 ON g2.id = s.group_id
WHERE g2.id = 2 AND d.id = 4
ORDER BY g.grade DESC;
/* 8 */
SELECT t.fullname, d.name, ROUND(AVG(g.grade),2) AS averange_grade
FROM grades g 
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id
GROUP BY d.name
ORDER BY averange_grade DESC;
/* 9 */
SELECT s.fullname, d.name
FROM grades g 
JOIN disciplines d ON d.id = g.discipline_id
JOIN students s ON s.id = g.student_id
WHERE s.id = 6 
GROUP BY d.name;
/* 10 */
SELECT d.name, s.fullname AS student, t.fullname AS teacher
FROM grades g 
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id
WHERE s.id = 5 AND t.id = 3;









