USE foodwaste;


CREATE TABLE supplier (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(20)
);


CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);


CREATE TABLE supermarket (
    supermarket_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50) NOT NULL
);


CREATE TABLE disposal_method (
    disposal_method_id INT PRIMARY KEY,
    method_name VARCHAR(100) NOT NULL
);


CREATE TABLE product (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(7,2) NOT NULL,
    shelf_life INT NOT NULL,
    category_id INT NOT NULL,
    supplier_id INT NOT NULL,

    FOREIGN KEY (category_id)
        REFERENCES category(category_id),

    FOREIGN KEY (supplier_id)
        REFERENCES supplier(supplier_id)
);


CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    supermarket_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    expiration_date DATE NOT NULL,

    FOREIGN KEY (supermarket_id)
        REFERENCES supermarket(supermarket_id),

    FOREIGN KEY (product_id)
        REFERENCES product(product_id)
);


CREATE TABLE food_waste (
    waste_id INT PRIMARY KEY,
    supermarket_id INT NOT NULL,
    product_id INT NOT NULL,
    disposal_method_id INT NOT NULL,
    quantity_wasted INT NOT NULL,
    date DATE NOT NULL,
    reason VARCHAR(200),

    FOREIGN KEY (supermarket_id)
        REFERENCES supermarket(supermarket_id),

    FOREIGN KEY (product_id)
        REFERENCES product(product_id),

    FOREIGN KEY (disposal_method_id)
        REFERENCES disposal_method(disposal_method_id)
);