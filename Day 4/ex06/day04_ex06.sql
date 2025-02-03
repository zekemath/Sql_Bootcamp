CREATE MATERIALIZED VIEW mv_dmitry_visits_and_eats AS
SELECT person.name AS pizzeria_name
FROM menu
JOIN pizzeria person ON person.id = menu.pizzeria_id
JOIN person_visits pv ON menu.pizzeria_id = pv.pizzeria_id
JOIN person p2 ON p2.id = pv.person_id
WHERE p2.name = 'Dmitry' AND price < 800 AND visit_date = '2022-01-08';

SELECT *
FROM mv_dmitriy_visits_and_eats;