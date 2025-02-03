SELECT menu.id
FROM menu
EXCEPT ALL
SELECT person_order.menu_id
FROM person_order
ORDER BY 1;