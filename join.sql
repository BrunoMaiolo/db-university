--1 STUDENTI ISCRITTI AL CORSO DI LAUREA IN ECONOMIA--
SELECT students.*
FROM students
JOIN degrees
ON students.degree_id = degrees.id
WHERE degrees.name = 'Corso di Laurea in Economia';