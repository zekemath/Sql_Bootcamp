SELECT  g::DATE AS missing_date
FROM (SELECT * FROM person_visits pv WHERE person_id = 1 OR person_id = 2) AS pv
RIGHT JOIN generate_series('2022-01-01', '2022-01-10', INTERVAL '1 day') AS g ON pv.visit_date = g
WHERE pv.id IS NULL
ORDER BY 1;