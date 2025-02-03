DROP VIEW IF EXISTS maxIdPerson;
DROP VIEW IF EXISTS maxIdOrder;

CREATE VIEW maxIdPerson AS
SELECT MAX(id) AS maxId
FROM person;

CREATE VIEW maxIdOrder AS
SELECT MAX(id) AS maxId
FROM person_order;

INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT generate_series((SELECT maxId FROM maxIdOrder) + 1, (SELECT maxId FROM maxIdOrder) + (SELECT maxId FROM maxIdPerson), 1),
    generate_series(1, (SELECT maxId FROM maxIdPerson), 1),
    (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
    '2022-02-25';