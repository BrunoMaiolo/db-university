--1 CONTARE ISCRITTI PER ANNO--
SELECT YEAR(enrolment_date) AS year, COUNT(*) AS num_students
FROM students
GROUP BY YEAR(enrolment_date);

--2 CONTARE INSEGNANTI CON UFFICIO NELLO STESSO EDIFICIO--
SELECT office_address, COUNT(*) AS num_teachers
FROM teachers 
GROUP BY office_address;

