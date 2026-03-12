--1 STUDENTI ISCRITTI AL CORSO DI LAUREA IN ECONOMIA--
SELECT students.*
FROM students
JOIN degrees
ON students.degree_id = degrees.id
WHERE degrees.name = 'Corso di Laurea in Economia';

--2 CORSI DI LAUREA MAGISTRALE DEL DIPARTIMENTO DI NEUROSCIENZE--
SELECT degrees.*
FROM degrees
JOIN departments
ON degrees.department_id = departments.id
WHERE degrees.level = 'magistrale' AND departments.name = 'Dipartimento di Neuroscienze';