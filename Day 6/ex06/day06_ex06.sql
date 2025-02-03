CREATE SEQUENCE  seq_person_discounts START WITH 1;
SELECT setval('seq_person_discounts', (SELECT count(*)+1 FROM person_discounts));
ALTER TABLE person_discounts
ALTER column id SET default nextval('seq_person_discounts');