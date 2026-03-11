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
