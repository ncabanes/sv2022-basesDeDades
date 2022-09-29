.open mascotas
select * from mascotas2;
-- 1|thor|labrador
-- 2|jack|pastor aleman
-- 3|rock|pastor belga

delete from mascotas2 where codigo =3;
sqlite> select * from mascotas2;
-- 1|thor|labrador
-- 2|jack|pastor aleman
