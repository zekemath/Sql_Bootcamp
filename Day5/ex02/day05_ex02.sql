CREATE INDEX idx_person_name ON person (UPPER(name));

SET enable_seqscan = off;

EXPLAIN ANALYZE
SELECT *
FROM person p
WHERE UPPER(p.name) = 'Dmitry';