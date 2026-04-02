-- Quantidade de filmes por categoria
USE sakila;

SELECT
	cat.name AS Categoria,
    COUNT(fca.category_id) AS `Quantidade de Filmes`
FROM film fil
JOIN film_category fca ON fil.film_id = fca.film_id
JOIN category cat ON fca.category_id = cat.category_id
GROUP BY Categoria
ORDER BY `Quantidade de Filmes` DESC
