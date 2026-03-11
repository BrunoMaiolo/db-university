1 Studenti nati nel 1990:

```sql
SELECT *
FROM students
WHERE YEAR(date_of_birth) = 1990;
```

2 Corsi con piu di 10 crediti:

```sql
SELECT *
FROM courses
WHERE cfu > 10;
```

3 Studenti con piu di 30 anni:

```sql
SELECT *
FROM students
WHERE timestampdiff(year, date_of_birth, CURDATE()) > 30;
```

4 Corsi del primo semestre del primo anno:

```sql
SELECT *
FROM courses
WHERE period = 'I semestre'
AND year = 1;
```

5 Esami dopo le 14 del 20/06/2020:

```sql
SELECT *
FROM exams
WHERE date = '2020-06-20'
AND hour > '14:00:00';
```

6 Corsi di laurea magistrale:

```sql
SELECT *
FROM degrees
WHERE level = 'magistrale';
```

7 Numero di dipartimenti:

```sql
SELECT COUNT(*)
FROM departments;
```

8 Insegnanti senza numero di telefono:

```sql
SELECT COUNT(*)
FROM teachers
WHERE phone IS NULL;
```
