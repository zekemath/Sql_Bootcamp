(SELECT p2.name
FROM person pers
JOIN person_visits pv ON pers.id = pv.person_id
JOIN pizzeria p2 ON p2.id = pv.pizzeria_id
WHERE pers.gender = 'male'

EXCEPT ALL

SELECT p2.name
FROM person pers
JOIN person_visits pv ON pers.id = pv.person_id
JOIN pizzeria p2 ON p2.id = pv.pizzeria_id
WHERE pers.gender = 'female')

UNION ALL

(SELECT p2.name AS pizzeria_name
FROM person pers
JOIN person_visits pv ON pers.id = pv.person_id
JOIN pizzeria p2 ON p2.id = pv.pizzeria_id
WHERE pers.gender = 'female'

EXCEPT ALL

SELECT p2.name
FROM person pers
JOIN person_visits pv ON pers.id = pv.person_id
JOIN pizzeria p2 ON p2.id = pv.pizzeria_id
WHERE pers.gender = 'male')
ORDER BY 1;