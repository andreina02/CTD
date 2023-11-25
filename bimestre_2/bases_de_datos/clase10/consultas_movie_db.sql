use movies_db;

-- 1. ¿Cuántas películas hay?
select count(*)
from movies;
-- devuelve 1 fila, 21 peliculas

-- 2. ¿Cuántas películas tienen entre 3 y 7 premios?
select count(*)
from movies
where awards between 3 and 7;
-- devuelve 1 fila, 8 peliculas

-- 3. ¿Cuántas películas tienen entre 3 y 7 premios y un rating mayor a 7?
select count(*)
from movies
where rating >7 and awards between 3 and 7;
-- devuelve 1 fila, 8 peliculas

-- 4. Crear un listado a partir de la tabla de películas, mostrar un reporte de la
-- cantidad de películas por id. de género.
select genre_id, count(genre_id) as cantidad
from movies
group by genre_id;
-- devuelve 8 filas

-- 5. De la consulta anterior, listar sólo aquellos géneros que tengan como suma
-- de premios un número mayor a 5.
select genre_id, count(genre_id) as cantidad, sum(awards) as suma
from movies
group by genre_id
having suma > 5;
-- devuelve 4 fila

-- Join
-- 1. Utilizando la base de datos de movies, queremos conocer, por un lado, los
-- títulos y el nombre del género de todas las series de la base de datos.
select series.title, genres.name
from series
inner join genres
on genres.id= series.genre_id;
-- devuelve 6 filas

-- 2. Por otro, necesitamos listar los títulos de los episodios junto con el nombre y
-- apellido de los actores que trabajan en cada uno de ellos.
select episodes.title, actors.first_name, actors.last_name
from episodes
inner join actor_episode
on episodes.id=actor_episode.episode_id
inner join actors
on actors.id=actor_episode.actor_id;
-- devuelve 148 filas

-- 3. Para nuestro próximo desafío, necesitamos obtener a todos los actores o
-- actrices (mostrar nombre y apellido) que han trabajado en cualquier película
-- de la saga de La Guerra de las galaxias.
select a.first_name, a.last_name, m.title
from actors a
inner join actor_movie
on a.id=actor_movie.actor_id
inner join movies m
on m.id=actor_movie.movie_id
where m.title like "La Guerra de las galaxias%";
-- devuelve 6 filas

-- 4. Crear un listado a partir de la tabla de películas, mostrar un reporte de la
-- cantidad de películas por nombre de género.
select g.name, count(g.name) as cantidad
from movies m
inner join genres g
on g.id= m.genre_id
group by g.name;
-- devuelve 7 filas






