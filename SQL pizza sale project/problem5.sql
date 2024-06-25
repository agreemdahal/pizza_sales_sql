-- List the top 5 most ordered pizza types along with their quantities.-- 

-- SELECT 
--     pizz1.pizza_name, 
--     SUM(order_details.quantity) AS quantity
-- FROM
--     pizz1
--         JOIN
--     pizzas ON pizz1.pizza_id = pizz1.pizza_id
--         JOIN
--     order_details ON order_details.pizza_id = pizzas.pizza_id
-- GROUP BY pizz1.pizza_name
-- ORDER BY quantity DESC
-- LIMIT 5;

SELECT 
    pizz1.pizza_name, 
    SUM(order_details.quantity) AS quantity 
FROM 
    pizz1 
JOIN 
    pizzas ON pizz1.pizza_id = pizzas.pizza_id 
JOIN 
    order_details ON order_details.pizza_id = pizzas.pizza_id 
GROUP BY 
    pizz1.pizza_name 
ORDER BY 
    quantity DESC 
LIMIT 5;

