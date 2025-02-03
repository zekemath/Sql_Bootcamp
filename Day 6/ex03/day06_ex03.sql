set enable_seqscan = off;
EXPLAIN ANALYZE
SELECT *
FROM person_discounts
WHERE pizzeria_id = 2 AND person_id = 5;