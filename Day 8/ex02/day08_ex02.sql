-- Session #1
show transaction isolation level;
start transaction isolation level repeatable read, read write;
select rating from pizzeria where name like 'Piz%';
update pizzeria set rating = 4 where name like 'Piz%';;
commit;
select rating from pizzeria where name like 'Piz%';;

--Session #2
show transaction isolation level;
start transaction isolation level repeatable read, read write;
select rating from pizzeria where name like 'Piz%';
update pizzeria set rating = 3.6 where name like 'Piz%';
commit;
select rating from pizzeria where name like 'Piz%';