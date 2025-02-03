(SELECT p.name, count(*) AS count, 'order' AS action_type
FROM person_order JOIN menu m ON m.id = person_order.menu_id
JOIN pizzeria p ON p.id = m.pizzeria_id
GROUP BY p.name
ORDER BY 2 DESC
limit 3)
UNION
(SELECT p.name, count(*) AS count, 'visit' AS action_type
FROM person_visits JOIN pizzeria p ON p.id = person_visits.pizzeria_id
GROUP BY p.name
ORDER BY 2 DESC
LIMIT 3)
ORDER BY 3, 2 DESC;