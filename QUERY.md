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
