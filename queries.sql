USE foodwaste;
-- this is for part 4 its just to show that our queries work
INSERT INTO product
(product_id, name, price, shelf_life, category_id, supplier_id)
VALUES
(13, 'Blueberries 250g', 3.49, 7, 1, 1);

INSERT INTO inventory
(inventory_id, supermarket_id, product_id, quantity, expiration_date)
VALUES
(26, 1, 13, 20, '2026-09-25');

UPDATE product
SET price = 3.19
WHERE product_id = 13;

UPDATE inventory
SET quantity = 15
WHERE inventory_id = 26;

DELETE FROM inventory
WHERE inventory_id = 26;

DELETE FROM product
WHERE product_id = 13;


SELECT *
FROM food_waste
WHERE supermarket_id IN (6, 7, 8, 9);

SELECT
    supermarket.name AS supermarket_name,
    SUM(food_waste.quantity_wasted) AS total_food_wasted
FROM supermarket
LEFT JOIN food_waste
    ON supermarket.supermarket_id = food_waste.supermarket_id
GROUP BY supermarket.supermarket_id, supermarket.name
ORDER BY total_food_wasted DESC;

-- This Query shows which food category was wasted the most.

SELECT
    category.category_name AS category,
    SUM(food_waste.quantity_wasted) AS amount_food_wasted
FROM category
JOIN product
    ON category.category_id = product.category_id
JOIN food_waste
    ON product.product_id = food_waste.product_id
GROUP BY category.category_id, category.category_name
ORDER BY food_wasted DESC;

-- This Query answers which products were wasted because they Experied.

SELECT
    product.name AS product,
    food_waste.quantity_wasted AS food_wasted,
    food_waste.reason AS waste_reason
FROM product
JOIN food_waste
    ON product.product_id = food_waste.product_id
WHERE food_waste.reason = 'Expired'
ORDER BY food_waste.quantity_wasted DESC;

-- Query 4 - Main Reasons for Food Waste -Despina 
-- This query shows the main reasons why food waste is recorded.
-- It groups the results by waste reason and unit so that
-- different measurement units are not combined.

SELECT
    food_waste.reason AS waste_reason,
    food_waste.unit AS unit,
    COUNT(*) AS number_of_records,
    SUM(food_waste.quantity_wasted) AS total_food_wasted
FROM food_waste
WHERE food_waste.reason IS NOT NULL
GROUP BY food_waste.reason, food_waste.unit
ORDER BY total_food_wasted DESC;

-- Query 5 - Products at Risk of Food Waste -Despina 
-- This query identifies products in supermarket inventory
-- whose expiration date has already passed.

SELECT
    supermarket.name AS supermarket_name,
    product.name AS product,
    inventory.quantity AS quantity,
    inventory.expiration_date AS expiration_date
FROM inventory
JOIN product
    ON inventory.product_id = product.product_id
JOIN supermarket
    ON inventory.supermarket_id = supermarket.supermarket_id
WHERE inventory.expiration_date < CURRENT_DATE
ORDER BY inventory.expiration_date ASC;

-- Query 6 -> money lost per supermarket b/c of food waste - Aleksandra
-- This query shows how much money is lost due to food waste in euros
SELECT
    supermarket.name AS supermarket_name,
    supermarket.country AS country,
    SUM(product.price * food_waste.quantity_wasted) AS money_lost
FROM supermarket
JOIN food_waste
    ON supermarket.supermarket_id = food_waste.supermarket_id
JOIN product
    ON product.product_id =  food_waste.product_id
GROUP BY supermarket.supermarket_id, supermarket.name, supermarket.country
ORDER BY money_lost DESC;

-- Query 7 -> Food waste by shelf life - Aleksandra
-- This query shows if products with shorter shelf life are wasted more

SELECT
    product.shelf_life AS shelf_life_days,
    COUNT(*) AS number_of_waste_records,
    SUM(food_waste.quantity_wasted) AS total_food_wasted
FROM product
JOIN food_waste
    ON product.product_id = food_waste.product_id
GROUP BY product.shelf_life
ORDER BY product.shelf_life ASC;

-- Query 8: Which individual products generate the highest amount of waste: Anastasia V.
-- Answering this question could help supermarkets target specific products and reduce the quantity ordered, reduce storage quantity, etc. in order to generate less waste.
SELECT 
    product.name AS product,
    SUM(food_waste.quantity_wasted) AS total_food_wasted, 
    food_waste.unit AS unit
FROM product
JOIN food_waste
    ON product.product_id = food_waste.product_id
GROUP BY product.product_id, product.name, food_waste.unit
ORDER BY total_food_wasted DESC;

-- Query 9: What is the percentage each supermarket is 
-- contributing to the total recorded food waste?

SELECT
    supermarket.name AS supermarket_name,
    SUM(food_waste.quantity_wasted) AS total_wasted_kg,
    ROUND(
        SUM(food_waste.quantity_wasted)*100 /
        (   SELECT SUM(quantity_wasted)
            FROM food_waste
        ),
        2) 
	AS percentage_of_recorded_waste
FROM supermarket
JOIN food_waste
    ON supermarket.supermarket_id = food_waste.supermarket_id
WHERE food_waste.unit = 'kg'
GROUP BY
    supermarket.supermarket_id,
    supermarket.name
ORDER BY total_wasted_kg DESC;
