USE foodwaste;

ALTER TABLE product
    MODIFY price DECIMAL (7,2) NULL,
    MODIFY shelf_life INT NULL,
    MODIFY supplier_id INT NULL;


ALTER TABLE food_waste
    MODIFY disposal_method_id INT NULL,
    MODIFY quantity_wasted DECIMAL (15,2) NOT NULL,
    CHANGE date period_start DATE NOT NULL,
    ADD period_end DATE NULL,
    ADD unit VARCHAR(10) NOT NULL DEFAULT 'item';

    UPDATE food_waste SET period_end = period_start;

