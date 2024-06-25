-- Determine the top 3 most ordered pizza types based on revenue.


SELECT 
    pizz1.pizza_name, 
    SUM(order_details.quantity * pizzas.price) AS revenue 
FROM 
    pizz1 
JOIN 
    pizzas ON pizzas.pizza_id = pizz1.pizza_id 
JOIN 
    order_details ON order_details.pizza_id = pizzas.pizza_id 
GROUP BY 
    pizz1.pizza_name 
ORDER BY 
    revenue DESC 
LIMIT 1;
