-- Session #1
show transaction isolation level;
start transaction isolation level read commited;
select * from pizzeria where name like 'Piz%';
select * from pizzeria where name like 'Piz%';
commit;
select * from pizzeria where name like 'Piz%';
-- Session #2
show transaction isolation level;
start transaction isolation level read commited;
update pizzeria set rating = 3.6 where name like 'Piz%';
commit;
select * from pizzeria where name like'Piz%';