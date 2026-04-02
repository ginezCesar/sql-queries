-- Top 5 clientes que mais gastaram
USE sakila;

SELECT
	cus.customer_id AS ID,
    cus.first_name AS Nome,
    cus.last_name AS Sobrenome,
    SUM(pay.amount) AS `Total Gasto`
FROM customer cus
JOIN payment pay ON cus.customer_id = pay.customer_id
GROUP BY ID, Nome, Sobrenome
ORDER BY `Total Gasto` DESC
LIMIT 5;