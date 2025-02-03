-- Session #1
show transaction isolation level;
start transaction isolation level read commited, read write;
select sum(rating) from pizzeria;
select sum(rating) from pizzeria;
commit;
select sum(rating) from pizzeria;

--Session #2
show transaction isolation level;
start transaction isolation level read commited, read write;
update pizzeria set rating = 3.0 where name like 'Piz%';
commit;
select sum(rating) from pizzeria; 