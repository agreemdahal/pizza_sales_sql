-- Join relevant tables to find the category-wise distribution of pizzas.


SELECT 
    pizza_description, COUNT(pizza_name)
FROM
    pizz1
GROUP BY pizza_description