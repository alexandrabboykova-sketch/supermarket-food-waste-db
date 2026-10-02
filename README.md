# Food Waste Database

## Project Overview

This project is a relational database designed to manage and analyse food waste in supermarkets.

The database stores information about suppliers, products, product categories, supermarkets, inventory, food waste, and disposal methods.

The project demonstrates the use of SQL to create, populate, and interact with a relational database.

## Database Structure

The database consists of seven tables:

1 `supplier` - Stores information about product suppliers.
2 `category` - Stores product categories.
3 `supermarket` - Stores information about supermarkets.
4 `disposal_method` - Stores the different methods used to dispose of food waste.
5 `product` - Stores information about products, including their price, shelf life, category, and supplier.
6 `inventory` - Stores the products available at each supermarket, including quantity and expiration date.
7 `food_waste` - Records products that have been wasted, including the supermarket, product, disposal method, quantity, date, and reason.



The tables are connected using primary keys and foreign keys based on the project's ERD.

## Files

### `schema.sql`

Contains the SQL code used to create the `foodwaste` database and its tables.

It defines:

- Tables
- Primary keys
- Foreign keys
- Data types
- `NOT NULL` constraints

### `data.sql`

Contains realistic mock data used to populate the database.

The data includes:

- Suppliers
- Categories
- Supermarkets
- Disposal methods
- Products
- Inventory records
- Food waste records

### `queries.sql`

Contains SQL queries used to interact with the database.

This includes basic database operations such as:

- `INSERT` - adding data
- `UPDATE` - updating existing data
- `DELETE` - removing data

Along with advanced SQl queries that were implemented to demonstrate the use of SQL for analysing the food waste database.

### Query 1 - Food Waste by Supermarket

This query calculates the total amount of food wasted by each supermarket.

It uses:
- `LEFT JOIN` to connect supermarkets with their food waste records.
- `SUM()` to calculate the total quantity of food wasted.
- `GROUP BY` to calculate the total separately for each supermarket.
- `ORDER BY DESC` to display supermarkets from the highest amount of food waste to the lowest.

### Query 2 - Food Waste by Category

This query determines which product categories have the highest amount of food waste.

It connects the `category`, `product`, and `food_waste` tables using `JOIN`.

It uses:
- `JOIN` to connect the related tables.
- `SUM()` to calculate the total quantity wasted for each category.
- `GROUP BY` to group the waste by category.
- `ORDER BY DESC` to order the categories by total food waste.

### Query 3 - Products Wasted Due to Expiration

This query identifies products that were wasted because they expired.

It connects the `product` and `food_waste` tables using `JOIN` and filters the results using.

`WHERE food_waste.reason = 'Expired'`

The results are then ordered by the quantity wasted in descending order.

These queries demonstrate the use of table joins, aggregation, grouping, filtering, and sorting to analyse the food waste data.

## Real-world data

### Data cleaning

- Missing data : Brazil has no empty cells. US had empty "Average" and "Total" rows, which we removed. 
- Dates : Brazil mixes date format (first month, or first day). We changed them to year->month->day. The US only has years, so we used 2012.
- Duplicates: "Pepper" appeared twice in Brazil Store 3, so we added them together.
- Names: Some names differed, like "Banana" and "Bananas", so we made all names singular.
- Extra: We convereted pounds to kg. Extra US columns like percentages were not used.

### Schema changes for real data

The real data did not fit some of our constraints, so we changed some of them:

- Product price, shelf life and supplier can now be empty, because the datasets did not include them
- Disposal method can be empty , because it is not reported in the datasets
- Waste amount is now a decimal, because real data is in kg with decimals and large numbers
- The single date turned into start and end date, because real data covers a week or a year
- Added a unit column, because our sample data counts items, the real data uses kg

Changes are in `schema_changes.sql` .

Not all columns were used: from dataset B we only stored the total wasted amount
  (converted to kg). Waste percentages, retail weight and non-edible share were left out
  because our schema has no attributes for them.

## How to Use

Run the files in the following order:

All code was created and ran in dbeaver.

To try it out highlight each section and press run.


FOR MOCK DATA: 

1 `schema.sql` - creates the database structure.
2 `data.sql` - populates the database with mock data.
5 `queries.sql` - runs database operations and analysis queries.

FOR REAL DATA:

1 `schema.sql` - creates the database structure.
2 `schema_changes` - changes the schema for the real data.
3 `real_data.sql` + `real_data2.sql` - runs the real data life data that gets intergrated. 
5 `queries.sql` - runs database operations and analysis queries.

## Additional Project Files

The repository also includes a files folder containing the supporting material from the earlier stages of the project along with the ERD diagram.

