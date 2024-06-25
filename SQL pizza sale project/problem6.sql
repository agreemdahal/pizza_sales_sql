-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pizz1.pizza_description,
    SUM(order_details.quantity) AS quantity
FROM
    pizz1
        JOIN
    pizzas ON pizz1.pizza_id = pizzas.pizza_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizz1.pizza_description
ORDER BY quantity DESC;
