(SELECT p2.name
FROM person pers
JOIN person_order po ON pers.id = po.person_id
JOIN menu ON menu.id = po.menu_id
JOIN pizzeria p2 ON p2.id = menu.pizzeria_id
WHERE pers.gender = 'male'

EXCEPT

SELECT p2.name
FROM person pers
JOIN person_order po ON pers.id = po.person_id
JOIN menu ON menu.id = po.menu_id
JOIN pizzeria p2 ON p2.id = menu.pizzeria_id
WHERE pers.gender = 'female')

UNION

(SELECT p2.name
FROM person pers
JOIN person_order po ON pers.id = po.person_id
JOIN menu ON menu.id = po.menu_id
JOIN pizzeria p2 ON p2.id = menu.pizzeria_id
WHERE pers.gender = 'female'

EXCEPT

SELECT p2.name
FROM person pers
JOIN person_order po ON pers.id = po.person_id
JOIN menu ON menu.id = po.menu_id
JOIN pizzeria p2 ON p2.id = menu.pizzeria_id
WHERE pers.gender = 'male')
ORDER BY 1;