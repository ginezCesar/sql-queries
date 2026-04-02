-- Total gasto por país (apenas países com alto volume)
USE sakila;

SELECT 
	cou.country AS Pais,
    SUM(pay.amount) AS `Total Gasto`
FROM customer cus
JOIN address adr ON cus.address_id = adr.address_id
JOIN city cit ON adr.city_id = cit.city_id
JOIN country cou ON cit.country_id = cou.country_id
JOIN payment pay ON cus.customer_id = pay.customer_id
GROUP BY Pais
HAVING `Total Gasto` > 500
ORDER BY `Total Gasto` DESC;