
.open amistades
create table amigos3(
  codigo varchar(5) primary key, 
  nombre varchar(50), 
  email varchar(100), 
  edad numeric(3));

insert into amigos3 values(12345, "Pablo Emilio", "pabloemilio@gmail.com", 26);
select * from amigos3;
