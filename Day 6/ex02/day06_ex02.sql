SELECT p.name, m.pizza_name, m.price, (m.price - (m.price * pd.discount/100)) AS discount_price, pz.name AS pizzeria_name
FROM person_order po
JOIN menu m ON po.menu_id = m.id
JOIN person p ON po.person_id = p.id
JOIN person_discounts pd ON p.id = pd.person_id AND pd.pizzeria_id = m.pizzeria_id
JOIN pizzeria pz ON m.pizzeria_id = pz.id
ORDER BY 1,2;