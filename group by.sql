--1 CONTARE ISCRITTI PER ANNO--
SELECT YEAR(enrolment_date) AS year, COUNT(*) AS num_students
FROM students
GROUP BY YEAR(enrolment_date);


