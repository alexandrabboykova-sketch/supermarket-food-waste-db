CREATE DATABASE IF NOT EXISTS foodwaste;
USE foodwaste;

CREATE TABLE supplier (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE supermarket (
    supermarket_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE disposal_method (
    disposal_method_id INT PRIMARY KEY,
    method_name VARCHAR(100)
);

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL (7,2),
    shelf_life INT,
    category_id INT, 
    supplier_id INT,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    supermarket_id INT,
    product_id INT,
    quantity INT, 
    expiration_date DATE,
    FOREIGN KEY (supermarket_id) REFERENCES supermarket (supermarket_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id)
);

CREATE TABLE food_waste (
    waste_id INT PRIMARY KEY,
    supermarket_id INT,
    product_id INT, 
    disposal_method_id INT,
    quantity_wasted INT,
    date DATE,
    reason VARCHAR(200),
    FOREIGN KEY (supermarket_id) REFERENCES supermarket (supermarket_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id),
    FOREIGN KEY (disposal_method_id) REFERENCES disposal_method (disposal_method_id)
);
