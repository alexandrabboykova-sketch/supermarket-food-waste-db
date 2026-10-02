USE foodwaste;

-- Database C: Mattias, et. al. (2012). Swedish markets - in store waste (tons converted to kgs).
-- Expiry dates: biggest dates taken: Yadav and Sinha (2024), Pinzón-Gómez et al. (2014).
-- shelf life in days
-- price / kg found on the official albert Heijn site Albert Heijn (n.d.).


INSERT INTO supermarket (supermarket_id, name, country) VALUES
  (10, NULL, 'Sweden');

INSERT INTO product (product_id, name, price, shelf_life, category_id, supplier_id) VALUES
(109, 'Sweet pepper', 3, 12, 2, 1),
(110, 'Tamarillo', 20, 4, 1, 1),
(111, 'Redcurrant', 12.63, 14, 1, 1),
(112, 'Pepino', 5, 28, 1, 1),
(113, 'Prickly pear', 3, 1.74, 1, 1),
(114, 'Oyster mushroom', 15, 7, 2, 1),
(115, 'Rambutan', 20, 5, 1, 1);

INSERT INTO food_waste (waste_id, supermarket_id, product_id, disposal_method_id, quantity_wasted, unit, period_start, period_end, reason) VALUES
  (233, 10, 29, 1, 10000.00, 'kg', NULL, NULL, NULL), 
  (234, 10, 65, 1, 7310.00, 'kg', NULL, NULL, NULL), 
  (235, 10, 25, 1, 6750.00, 'kg', NULL, NULL, NULL), 
  (236, 10, 109, 1, 5370.00, 'kg', NULL, NULL, NULL), 
  (237, 10, 45, 1, 4500.00, 'kg', NULL, NULL, NULL), 
  (238, 10, 13, 1, 4370.00, 'kg', NULL, NULL, NULL), 
  (239, 10, 21, 1, 3780.00, 'kg', NULL, NULL, NULL), 
  (240, 10, 33, 1, 3740.00, 'kg', NULL, NULL, NULL), 
  (241, 10, 38, 1, 3660.00, 'kg', NULL, NULL, NULL), 
  (242, 10, 61, 1, 3060.00, 'kg', NULL, NULL, NULL), 
  (243, 10, 110, 1, 57.50, 'kg', NULL, NULL, NULL), 
  (244, 10, 86, 1, 10.40, 'kg', NULL, NULL, NULL), 
  (245, 10, 111, 1, 52.60, 'kg', NULL, NULL, NULL), 
  (246, 10, 112, 1, 12.30, 'kg', NULL, NULL, NULL), 
  (247, 10, 113, 1, 123.00, 'kg', NULL, NULL, NULL), 
  (248, 10, 114, 1, 199.00, 'kg', NULL, NULL, NULL), 
  (249, 10, 81, 1, 179.00, 'kg', NULL, NULL, NULL), 
  (250, 10, 115, 1, 8.57, 'kg', NULL, NULL, NULL), 
  (251, 10, 84, 1, 228.00, 'kg', NULL, NULL, NULL), 
  (252, 10, 57, 1, 117.00, 'kg', NULL, NULL, NULL);
