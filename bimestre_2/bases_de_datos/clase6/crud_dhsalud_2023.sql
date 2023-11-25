-- use dhsalud;

-- SELECT
select * from paciente;

-- INSERT
insert into paciente (num_socio, nombre, apellido)
values (default, "Juan", "Perez");

-- UPDATE
update paciente
set nombre= "Maria Veronica", apellido= "Peraza Melendez" where num_socio=2;

insert into paciente
values
(default, "Verónica", "Peraza"),
(default, "Andreina", "Peraza"),
(default, "Gabriel", "Melendez");

-- DELETE
delete from paciente where num_socio=1;