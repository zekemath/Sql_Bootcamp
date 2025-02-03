SELECT
    p.name AS name,
    COUNT(m.id) AS count_of_orders,
    ROUND(AVG(m.price), 2) AS averag_price,
    MAX(m.price) AS max_price,
    MIN(m.price) AS min_price
FROM person_order
JOIN menu m on m.id = person_order.menu_id
JOIN pizzeria p ON m.pizzeria_id = p.id
GROUP BY p.name
ORDER BY p.name;