SELECT g.name, s.fullname
FROM students s
JOIN groups g ON g.id = s.group_id
ORDER BY g.name;