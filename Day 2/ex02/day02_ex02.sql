SELECT COALESCE(p.name, '-') AS person_name, visit_date,
       COALESCE(piz.name, '-') AS pizzeria_name
FROM person p
FULL JOIN (SELECT * FROM person_visits po WHERE visit_date BETWEEN '2020-01-01' AND '2022-01-03') pv ON p.id = pv.person_id
FULL JOIN pizzeria piz ON piz.id = pv.pizzeria_id
ORDER BY 1, 2, 3;