-- Calculate the percentage contribution of each pizza type to total revenue.

-- SELECT 
--     pizz1.pizza_description,
--     (SUM(order_details.quantity * pizzas.price) / (SELECT 
--                 ROUND(SUM(order_details.quantity * pizzas.price),
--                         2) AS total_sales
--         FROM
--             order_details
--                 JOIN
--             pizzas ON pizzas.pizza_id = pizz1.pizza_id) * 100 , 2) as revenue
-- FROM
--     pizz1
--         JOIN
--     pizzas ON pizz1.pizza_id = pizzas.pizza_id
--         JOIN
--     order_details ON order_details.pizza_id = pizzas.pizza_id
-- GROUP BY pizz1.pizza_description
-- ORDER BY revenue DESC;
SELECT 
    pizz1.pizza_description, 
    ROUND(SUM(order_details.quantity * pizzas.price) / 
        (SELECT SUM(order_details.quantity * pizzas.price)
         FROM order_details 
         JOIN pizzas ON pizzas.pizza_id = order_details.pizza_id) * 100, 2) AS revenue_percentage
FROM 
    pizz1 
JOIN 
    pizzas ON pizz1.pizza_id = pizzas.pizza_id 
JOIN 
    order_details ON order_details.pizza_id = pizzas.pizza_id 
GROUP BY 
    pizz1.pizza_description 
ORDER BY 
    revenue_percentage DESC;
