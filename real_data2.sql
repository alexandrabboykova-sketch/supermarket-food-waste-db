USE foodwaste;

-- Database C: Mattias, et. al. (2012). Swedish markets - in store waste (tons converted to kgs)

INSERT INTO supermarket (supermarket_id, name, country) VALUES
  (10, NULL, 'Sweden');

INSERT INTO product (product_id, name, price, shelf_life, category_id, supplier_id) VALUES
(109, 'Sweet pepper', NULL, NULL, 2, NULL),
(110, 'Tamarillo', NULL, NULL, 1, NULL),
(111, 'Redcurrant', NULL, NULL, 1, NULL),
(112, 'Pepino', NULL, NULL, 1, NULL),
(113, 'Prickly pear', NULL, NULL, 1, NULL),
(114, 'Oyster mushroom', NULL, NULL, 2, NULL),
(115, 'Rambutan', NULL, NULL, 1, NULL);

INSERT INTO food_waste (waste_id, supermarket_id, product_id, disposal_method_id, quantity_wasted, unit, period_start, period_end, reason) VALUES
  (233, 10, 29, NULL, 10000.00, 'kg', NULL, NULL, NULL), 
  (234, 10, 65, NULL, 7310.00, 'kg', NULL, NULL, NULL), 
  (235, 10, 25, NULL, 6750.00, 'kg', NULL, NULL, NULL), 
  (236, 10, 109, NULL, 5370.00, 'kg', NULL, NULL, NULL), 
  (237, 10, 45, NULL, 4500.00, 'kg', NULL, NULL, NULL), 
  (238, 10, 13, NULL, 4370.00, 'kg', NULL, NULL, NULL), 
  (239, 10, 21, NULL, 3780.00, 'kg', NULL, NULL, NULL), 
  (240, 10, 33, NULL, 3740.00, 'kg', NULL, NULL, NULL), 
  (241, 10, 38, NULL, 3660.00, 'kg', NULL, NULL, NULL), 
  (242, 10, 61, NULL, 3060.00, 'kg', NULL, NULL, NULL), 
  (243, 10, 110, NULL, 57.50, 'kg', NULL, NULL, NULL), 
  (244, 10, 86, NULL, 10.40, 'kg', NULL, NULL, NULL), 
  (245, 10, 111, NULL, 52.60, 'kg', NULL, NULL, NULL), 
  (246, 10, 112, NULL, 12.30, 'kg', NULL, NULL, NULL), 
  (247, 10, 113, NULL, 123.00, 'kg', NULL, NULL, NULL), 
  (248, 10, 114, NULL, 199.00, 'kg', NULL, NULL, NULL), 
  (249, 10, 81, NULL, 179.00, 'kg', NULL, NULL, NULL), 
  (250, 10, 115, NULL, 8.57, 'kg', NULL, NULL, NULL), 
  (251, 10, 84, NULL, 228.00, 'kg', NULL, NULL, NULL), 
  (252, 10, 57, NULL, 117.00, 'kg', NULL, NULL, NULL);
