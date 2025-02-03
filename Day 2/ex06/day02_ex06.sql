SELECT m.pizza_name,  p2.name AS pizzeria_name
FROM person_order
JOIN person p ON p.id = person_order.person_id
JOIN menu m ON m.id = person_order.menu_id
JOIN pizzeria p2 ON m.pizzeria_id = p2.id
WHERE p.name IN ('Denis', 'Anna')
ORDER BY 1,2;