 -- Session #1
show transaction isolation level;
start transaction isolation level serializable, read write;
select rating from pizzeria where name like 'Piz%';
select rating from pizzeria where name like 'Piz%';
commit;
select rating from pizzeria where name like 'Piz%';

--Session #2
show transaction isolation level;
start transaction isolation level serializable, read write;
update pizzeria set rating = 3.0 where name like 'Piz%';
commit;
select rating from pizzeria where name like 'Piz%';
