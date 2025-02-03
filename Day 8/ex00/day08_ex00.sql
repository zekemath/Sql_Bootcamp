 -- Session #1
BEGIN;

update pizzeria
set rating = 5
where name like 'Piz%';

select *
rom pizzeria
where name like 'Piz%';

COMMIT;

--Session #2
select *
from pizzeria
where name  like 'Piz%';