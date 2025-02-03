SELECT p.name AS pizzeria_name
FROM menu
JOIN pizzeria p ON p.id = menu.pizzeria_id
JOIN person_visits pv ON menu.pizzeria_id = pv.pizzeria_id
JOIN person p1 ON p1.id = pv.person_id
WHERE price  < 800 AND visit_date = '2022-01-08' AND p1.name = 'Dmitriy';