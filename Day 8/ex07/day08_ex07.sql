-- Session #1
show transaction isolation level;
begin;
update pizzeria set rating = 1 where id = '2';
update pizzeria set rating = 1 where id = '1';
commit;
select sum(rating) from pizzeria;

--Session #2
show transaction isolation level;
begin;
update pizzeria set rating = 1 where id = '1';
update pizzeria set rating = 1 where id = '2';
commit;  