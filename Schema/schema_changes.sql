USE foodwaste;

-- Modify the schema to accommodate the real-world food waste datasets,
-- which contain missing product information and waste quantities measured in kg.

-- Allow product attributes to be NULL where information is unavailable.
ALTER TABLE product
    MODIFY price DECIMAL (7,2) NULL,
    MODIFY shelf_life INT NULL,
    MODIFY supplier_id INT NULL;

-- Update food waste records to support missing disposal methods,
-- decimal waste quantities, and data covering a period of time.
ALTER TABLE food_waste
    MODIFY disposal_method_id INT NULL,
    MODIFY quantity_wasted DECIMAL (15,2) NOT NULL,
    CHANGE date period_start DATE NOT NULL,
    ADD period_end DATE NULL;

-- Set the end date to the start date for records without an end date,
-- ensuring existing records have a complete date period.
UPDATE food_waste
SET period_end = period_start
WHERE period_end IS NULL;



ALTER TABLE food_waste
DROP COLUMN unit;


