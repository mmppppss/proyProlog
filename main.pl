% base de conocimiento
% Hechos de películas
pelicula('Inception', 'Ciencia Ficcion', 'PG-13', 13, 'Violencia Moderada', 8.8, ['Thriller', 'Accion'], 'Netflix').
pelicula('Toy Story', 'Animacion', 'G', 0, 'Ninguno', 8.3, ['Aventura', 'Comedia'], 'Disney+').
pelicula('El Padrino', 'Drama', 'R', 18, 'Violencia Fuerte', 9.2, ['Crimen', 'Suspenso'], 'Amazon Prime').
pelicula('Titanic', 'Romance', 'PG-13', 13, 'Contenido Adulto', 7.8, ['Drama', 'Historia'], 'Disney+').
pelicula('Star Wars', 'Ciencia Ficcion', 'PG', 0, 'Ninguno', 8.7, ['Aventura', 'Ciencia Ficcion'], 'HBO').
pelicula('La La Land', 'Musical', 'PG-13', 13, 'Violencia Moderada', 8.4, ['Musical', 'Comedia'], 'HBO').
pelicula('Coco', 'Animacion', 'G', 0, 'Ninguno', 8.4, ['Animacion', 'Comedia'], 'HBO').


% ?- buscar_por_genero('Ciencia Ficcion', Pelicula).
% ?- buscar_por_edad_recomendada(13, Pelicula).
% ?- buscar_por_plataforma('Netflix', Pelicula).
% ?- buscar_por_puntaje(8.0, Pelicula).
% ?- buscar_pelicula_especifica('Ciencia Ficcion', 'PG-13', 'Netflix', Pelicula).

