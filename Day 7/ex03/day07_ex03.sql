SELECT
    p.name,
    COALESCE(v.total_visits, 0) + COALESCE(o.total_orders, 0) AS total_count
FROM pizzeria p
LEFT JOIN (
    SELECT pizzeria_id, COUNT(*) AS total_visits
    FROM person_visits
    GROUP BY pizzeria_id
) v ON p.id = v.pizzeria_id
LEFT JOIN (
    SELECT m.pizzeria_id, COUNT(*) AS total_orders
    FROM person_order po
    JOIN menu m ON po.menu_id = m.id
    GROUP BY m.pizzeria_id
) o ON p.id = o.pizzeria_id
ORDER BY total_count DESC, p.name ASC;