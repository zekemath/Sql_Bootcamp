SELECT address, pz.name, COUNT(*)
FROM person_order
JOIN menu m ON person_order.menu_id = m.id
JOIN person p ON p.id = person_order.person_id
JOIN pizzeria pz ON m.pizzeria_id = pz.id
GROUP BY address, pz.name
ORDER BY 1, 2;