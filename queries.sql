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
    SUM(food_waste.quantity_wasted) AS food_wasted
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