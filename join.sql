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

--3 CORSI IN CUI INSEGNA FILVIO AMATO (ID=44)--
SELECT courses.*
FROM courses
JOIN course_teacher
ON courses.id = course_teacher.course_id
WHERE course_teacher.teacher_id = 44;

--4 STUDENTI CON CORSO DI LAUREA E DIPARTIMENTO (ORDINE ALFABETICO)--
SELECT students.name, students.surname, degrees.name AS degree, departments.name AS department
FROM students
JOIN degrees
ON students.degree_id = degrees.id
JOIN departments
ON degrees.department_id = departments.id
ORDER BY students.surname, students.name;