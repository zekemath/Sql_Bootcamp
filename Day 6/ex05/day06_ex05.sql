COMMENT ON TABLE person_discounts
IS 'Таблица с информацией о скидках для поситителей в каждой пиццерии';
COMMENT ON COLUMN person_discounts.id
IS 'Индефикатор';
COMMENT ON COLUMN person_discounts.person_id
IS 'Индефикатор посетителя';
COMMENT ON COLUMN person_discounts.pizzeria_id
IS 'Индефикатор пиццерии';
COMMENT ON COLUMN person_discounts.discount
IS 'Скидка на человека для каждой пиццерии';