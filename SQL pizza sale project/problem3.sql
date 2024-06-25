-- Identify the highest-priced pizza.-- 

select  max(price) as highest_price from pizzas -- 

-- SELECT 
--     pizz1.name, pizzas.price
-- FROM
--     pizz1
--         JOIN
--     pizzas ON pizz1.pizza_id = pizzas.pizza_id
-- ORDER BY pizzas.price DESC
-- LIMIT 1; 