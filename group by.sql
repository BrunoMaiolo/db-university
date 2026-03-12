--1 CONTARE ISCRITTI PER ANNO--
SELECT YEAR(enrolment_date) AS year, COUNT(*) AS num_students
FROM students
GROUP BY YEAR(enrolment_date);

--2 CONTARE INSEGNANTI CON UFFICIO NELLO STESSO EDIFICIO--
SELECT office_address, COUNT(*) AS num_teachers
FROM teachers 
GROUP BY office_address;

--3 CALCOLARE LA MEDIA DEI VOTI DI OGNI APPELLO D'ESAME--
SELECT exam_id, AVG(vote) AS average_vote
FROM exam_student
GROUP BY exam_id;