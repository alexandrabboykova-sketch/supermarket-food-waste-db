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

## How to Use

Run the files in the following order:

All code was created and ran in dbeaver.

To try it out highlight each section and press run.

1 `schema.sql` - creates the database structure.
2 `data.sql` - populates the database with mock data.
3 `queries.sql` - runs database operations and analysis queries.




