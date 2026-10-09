USE foodwaste;

INSERT INTO supplier
(supplier_id, name, email, phone_number)
VALUES
(1, 'Fresh Farms BV', 'info@freshfarms.nl', '+31 20 123 4567'),
(2, 'Dutch Dairy Co', 'contact@dutchdairy.nl', '+31 30 234 5678'),
(3, 'Euro Foods Wholesale', 'sales@eurofoods.nl', '+31 10 345 6789'),
(4, 'Green Harvest', 'info@greenharvest.nl', '+31 40 456 7890'),
(5, 'Bakery Direct', 'orders@bakerydirect.nl', '+31 70 567 8901'),
(6, 'Fresh Meat Suppliers', 'sales@freshmeat.nl', '+31 50 678 9012'),
(7, 'Ocean Catch BV', 'sales@oceancatch.nl', '+31 23 789 0123'),
(8, 'Nordic Snacks Trading', 'info@nordicsnacks.nl', '+31 73 890 1234'),
(9, 'Organic Valley NL', 'contact@organicvalley.nl', '+31 26 901 2345'),
(10, 'Beverage Hub', 'orders@beveragehub.nl', '+31 13 012 3456');

INSERT INTO category
(category_id, category_name)
VALUES
(1, 'Fruit'),
(2, 'Vegetables'),
(3, 'Dairy'),
(4, 'Bakery'),
(5, 'Meat'),
(6, 'Beverages'),
(7, 'Frozen Foods'),
(8, 'Pasta and Grains'),
(9, 'Seafood'),
(10, 'Snacks');

INSERT INTO supermarket
(supermarket_id, name, country)
VALUES
(1, 'FreshMart Amsterdam', 'Netherlands'),
(2, 'GreenMarket Rotterdam', 'Netherlands'),
(3, 'DailyShop Utrecht', 'Netherlands'),
(4, 'FoodPlus Eindhoven', 'Netherlands'),
(5, 'SuperSave Groningen', 'Netherlands'),
(6, 'QuickStop Maastricht', 'Netherlands'),
(7, 'MarktPlus Haarlem', 'Netherlands'),
(8, 'CityFresh Leiden', 'Netherlands'),
(9, 'ValueMart Breda', 'Netherlands'),
(10, 'FreshChoice Nijmegen', 'Netherlands');

INSERT INTO disposal_method
(disposal_method_id, method_name)
VALUES
(1, 'Composting'),
(2, 'Animal Feed'),
(3, 'Recycling'),
(4, 'General Waste'),
(5, 'Donation to Food Bank'),
(6, 'Anaerobic Digestion'),
(7, 'Incineration with Energy Recovery'),
(8, 'Landfill'),
(9, 'Rendering'),
(10, 'Discounted Resale');

INSERT INTO product
(product_id, name, price, shelf_life, category_id, supplier_id)
VALUES
(1, 'Red Apples', 2.49, 14, 1, 1),
(2, 'Bananas', 1.79, 7, 1, 1),
(3, 'Carrots', 1.29, 21, 2, 4),
(4, 'Tomatoes', 2.19, 10, 2, 4),
(5, 'Whole Milk', 1.39, 10, 3, 2),
(6, 'Greek Yogurt', 2.49, 14, 3, 2),
(7, 'White Bread', 1.99, 5, 4, 5),
(8, 'Croissants', 2.79, 4, 4, 5),
(9, 'Chicken Breast', 6.99, 5, 5, 6),
(10, 'Orange Juice', 2.29, 30, 6, 3),
(11, 'Frozen Peas', 2.49, 365, 7, 3),
(12, 'Penne Pasta', 1.19, 730, 8, 3),
(13, 'Salmon Fillet', 5.99, 3, 9, 7),
(14, 'Potato Chips', 1.99, 180, 10, 8),
(15, 'Organic Spinach', 1.89, 6, 2, 9),
(16, 'Sparkling Water', 0.89, 365, 6, 10);

INSERT INTO inventory
(inventory_id, supermarket_id, product_id, quantity, expiration_date)
VALUES
(1, 1, 1, 45, '2026-09-25'),
(2, 1, 2, 30, '2026-09-21'),
(3, 1, 5, 20, '2026-09-22'),
(4, 1, 7, 15, '2026-09-20'),
(5, 1, 9, 12, '2026-09-20'),

(6, 2, 1, 60, '2026-09-26'),
(7, 2, 3, 35, '2026-09-30'),
(8, 2, 6, 25, '2026-09-29'),
(9, 2, 10, 18, '2026-10-05'),
(10, 2, 12, 40, '2028-09-01'),

(11, 3, 2, 50, '2026-09-22'),
(12, 3, 4, 28, '2026-09-24'),
(13, 3, 5, 32, '2026-09-23'),
(14, 3, 8, 20, '2026-09-20'),
(15, 3, 11, 35, '2027-09-15'),

(16, 4, 1, 25, '2026-09-24'),
(17, 4, 3, 40, '2026-09-29'),
(18, 4, 7, 18, '2026-09-21'),
(19, 4, 9, 15, '2026-09-20'),
(20, 4, 10, 30, '2026-10-08'),

(21, 5, 2, 42, '2026-09-22'),
(22, 5, 4, 35, '2026-09-25'),
(23, 5, 6, 22, '2026-09-30'),
(24, 5, 8, 16, '2026-09-21'),
(25, 5, 11, 30, '2027-09-20'),

(26, 6, 13, 14, '2026-09-22'),
(27, 6, 15, 20, '2026-09-24'),

(28, 7, 14, 50, '2027-03-01'),
(29, 7, 16, 60, '2027-08-01'),

(30, 8, 13, 10, '2026-09-21'),
(31, 8, 5, 25, '2026-09-23'),

(32, 9, 15, 18, '2026-09-25'),
(33, 9, 3, 30, '2026-09-29'),

(34, 10, 16, 45, '2027-08-15'),
(35, 10, 9, 14, '2026-09-21');

INSERT INTO food_waste
(waste_id, supermarket_id, product_id, disposal_method_id, quantity_wasted, date, reason)
VALUES
(1, 1, 2, 1, 8, '2026-09-10', 'Overripe'),
(2, 1, 7, 4, 5, '2026-09-11', 'Expired'),
(3, 1, 9, 2, 3, '2026-09-12', 'Packaging damaged'),
(4, 1, 5, 1, 4, '2026-09-13', 'Expired'),

(5, 2, 1, 1, 12, '2026-09-10', 'Overripe'),
(6, 2, 3, 1, 6, '2026-09-12', 'Damaged during delivery'),
(7, 2, 6, 4, 4, '2026-09-14', 'Expired'),
(8, 2, 10, 4, 2, '2026-09-15', 'Expired'),

(9, 3, 2, 1, 10, '2026-09-11', 'Overripe'),
(10, 3, 4, 1, 7, '2026-09-13', 'Spoiled'),
(11, 3, 8, 4, 5, '2026-09-15', 'Expired'),
(12, 3, 5, 2, 3, '2026-09-16', 'Packaging damaged'),

(13, 4, 1, 1, 5, '2026-09-10', 'Overripe'),
(14, 4, 7, 4, 6, '2026-09-14', 'Expired'),
(15, 4, 9, 2, 4, '2026-09-15', 'Expired'),
(16, 4, 10, 3, 3, '2026-09-16', 'Damaged packaging'),

(17, 5, 2, 1, 9, '2026-09-11', 'Overripe'),
(18, 5, 4, 1, 5, '2026-09-13', 'Spoiled'),
(19, 5, 6, 4, 3, '2026-09-15', 'Expired'),
(20, 5, 8, 4, 4, '2026-09-16', 'Expired'),

(21, 6, 13, 5, 3, '2026-09-17', 'Expired'),
(22, 6, 15, 1, 6, '2026-09-18', 'Spoiled'),
(23, 7, 14, 3, 9, '2026-09-18', 'Packaging damaged'),
(24, 7, 16, 3, 4, '2026-09-18', 'Damaged during delivery'),
(25, 8, 13, 9, 2, '2026-09-19', 'Expired'),
(26, 8, 5, 5, 5, '2026-09-19', 'Expired'),
(27, 9, 15, 6, 4, '2026-09-20', 'Spoiled'),
(28, 9, 3, 1, 5, '2026-09-20', 'Damaged during delivery'),
(29, 10, 9, 7, 3, '2026-09-21', 'Expired'),
(30, 10, 16, 3, 2, '2026-09-21', 'Packaging damaged');