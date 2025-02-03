INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES((SELECT max(id) FROM person_visits) +1 ,(SELECT id FROM person WHERE name= 'Dmitriy'),
(SELECT pizzeria.id FROM pizzeria JOIN menu ON pizzeria.id = pizzeria_id
WHERE price < 800 ORDER BY 1 LIMIT 1),'2022-01-08');

SELECT *
FROM mv_dmitriy_visits_and_eats;