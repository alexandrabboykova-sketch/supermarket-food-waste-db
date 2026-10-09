# Food Waste Database

## Project Overview

This project is a relational database designed to manage and analyse food waste in supermarkets.

The database stores information about suppliers, products, product categories, supermarkets, inventory, food waste, and disposal methods.

The project demonstrates the use of SQL to create, populate, and interact with a relational database.

## Database Structure

The database consists of seven tables:

1. `supplier` - Stores information about product suppliers.
2. `category` - Stores product categories.
3. `supermarket` - Stores information about supermarkets.
4. `disposal_method` - Stores the different methods used to dispose of food waste.
5. `product` - Stores information about products, including their price, shelf life, category, and supplier.
6. `inventory` - Stores the products available at each supermarket, including quantity and expiration date.
7. `food_waste` - Records products that have been wasted, including the supermarket, product, disposal method, quantity, date, and reason.

The tables are connected using primary keys and foreign keys based on the project's ERD.

## Project Structure

### Repository Breakdown

```text
foodwaste/
├── README.md
├── Schema/
│   ├── schema.sql
│   └── schema_changes.sql
├── Data/
│   ├── mock_data.sql
│   ├── data_Brazil_US.sql
│   └── data_Sweden.sql
├── Files/
│   ├── ERD.jpeg
│   ├── Week1_SocialChallange.pdf
│   ├── Week2_Normalisation.pdf
│   └── Week2_RWD.pdf
├── Queries/
│   └── queries.sql
│   └── results.sql
├── CSVFiles/
│   ├── A_food_waste_data.csv
│   ├── Food waste data - combined.csv
│   └── food waste 2 - combined.csv
├── Dump/
│   └── foodwaste_food_dump.sql
└── Sources/
    └── [PDF source documents]

```

## How to Use

Run the files in the following order:

All code was created and ran in dbeaver.

To try it out highlight each section and press run.

### FOR MOCK DATA

1. `schema.sql` - creates the database structure.
2. `mock_data.sql` - populates the database with mock data.
3. `queries.sql` - runs database operations and analysis queries.

### FOR REAL DATA

1. `schema.sql` - creates the database structure.
2. `schema_changes` - changes the schema for the real data.
3. `data_Brazil_US.sql` + `data_Sweden.sql` - runs the real data life data that gets intergrated.
4. `queries.sql` - runs database operations and analysis queries.

## Files

### `schema.sql` and `schema_changes.sql`

Contains the SQL code used to create the `foodwaste` database and its tables.

It defines:

* Tables
* Primary keys
* Foreign keys
* Data types
* `NOT NULL` constraints

### `mock_data.sql`

Contains realistic mock data used to populate the database.

The data includes:

* Suppliers
* Categories
* Supermarkets
* Disposal methods
* Products
* Inventory records
* Food waste records

### `queries.sql`

Contains SQL queries used to interact with the database.

This includes basic database operations such as:

* `INSERT` - adding data
* `UPDATE` - updating existing data
* `DELETE` - removing data

Along with advanced SQL queries that were implemented to demonstrate the use of SQL for analysing the food waste database such as:

* `JOIN ... ON ...` - combining data from multiple tables based on a matching condition
* `GROUP BY` - grouping rows that share the same values for specified columns
* `ORDER BY` - sorting query results in ascending or descending order

All queries are further explained and broken down in queries.sql found in the Queries folder.

A simple break down is found below:

### Query Breakdown

* `Query 1` - calculating and ranking the total food waste per supermarket
* `Query 2` - identifying which food categories account for the highest amount of food waste
* `Query 3` - identifying products wasted due to rejection at delivery and in-store waste
* `Query 4` - identifying the main reasons for food waste and calculating the quantity wasted for each reason
* `Query 5` - identifying inventory products whose expiration dates have passed
* `Query 6` - estimating the financial loss caused by food waste at each supermarket
* `Query 7` - analysing food waste quantities in relation to product shelf life
* `Query 8` - identifying and ranking individual products that generate the most food waste
* `Query 9` - calculating each supermarket's percentage contribution to total food waste and comparing the contribution of its country

### `data_Brazil_US.sql` and `data_Sweden.sql`

Contains realistic real data used to populate the database. With sources found in section Week 5 - Integration --> Data Used (References). 

## Week 4 - Stakeholder video

https://github.com/user-attachments/assets/ec88a187-d4df-4767-9bfd-6a7f35e458e8

## Week 5 - Integration of real world data

### Step 1: Data cleaning

* Missing data : Brazil has no empty cells. US had empty "Average" and "Total" rows, which we removed. This is as they were not useful to the data. This was simply done by removing them in the CSV file.
* Dates : Brazil mixes date format (first month, or first day). We changed them to year->month->day. This was specifically done so it is transferable to all countries. The US only has years, so we used 2012.
* Duplicates: "Pepper" appeared twice in Brazil Store 3, so we added them together.
* Names: Some names differed, like "Banana" and "Bananas", so we made all names singular. Again, we added these values together to create one unitary value.
* Extra: We convereted pounds to kg. Extra US columns like percentages were not used.

### Schema changes for real data

The real data did not fit some of our constraints, so we changed some of them:

* Product price, shelf life and supplier can now be empty, because the datasets did not include them
* Disposal method can be empty , because it is not reported in the datasets
* Waste amount is now a decimal, because real data is in kg with decimals and large numbers
* The single date turned into start and end date, because real data covers a week or a year
* Added a unit column, because our sample data counts items, the real data uses kg

Changes are in `schema_changes.sql` .

Not all columns were used: from dataset B we only stored the total wasted amount
(converted to kg). Waste percentages, retail weight and non-edible share were left out
because our schema has no attributes for them.

## Normalisation

Upon adding in our real life data there were no normalisation issues found.

The only change we added was removing 'units', this is as we had taken the data and made sure that it was all the same unit (eg. kg).

More information of this can be found under Files --> Week5_IntegrationRWD (Integration of Real World Data). In this file we discuss multiple factors like normalisation, and some limitations.

## Data used (References)

For the real life data, the following articles/studies were used to obtain the csv files:

### Article 1

Authors: Mattias Eriksson, Ingrid Strid and Per-Anders Hansson

Date: November 2012

Description: This research investigates vegetable and fruit waste in 6 different Swedish supermarkets. The data distinguishes between pre-store waste, recorded in-store waste and unrecorded in-store waste - which is an estimate, alluding to the fact that supermarkets don't always probably record their waste.4.3% of fresh fruit where found to be wasted. This source supports the Swedish supermarket food-waste data used in the database.

File path: sources/Food losses in Six Swedish Retail Stores.pdf

URL: https://doi.org/10.1016/j.resconrec.2012.08.001

### Article 2

Authors: Jean C. Buzby, Jeanine T. Bentley, Beth Padera, Cara Ammon, and Jennifer Campuzano

Date: 4 August 2015

Description: This research uses shipment sales data from approximately 2,900 stores. It covers 24 types of fruit and 31 types of vegetables, using data from 2011–2012. The study provides estimates of retail food loss, making it a useful reference for understanding differences in food waste between products.

File path: sources/Estimated Fresh Produce Shrink and Food Loss.pdf

URL: https://doi.org/10.3390/agriculture5030626

### Article 3

Author: Suzana Márcia Marangoni; Pedro Brancoli; Andréa Rossi Scalco

DATE: March 2026

Description: This study includes primary data collection through a waste composition analysis. Three supermarkets where looked at for seven days and researchers sorted, categorized, and weighed unsold fruit and vegetables. The study also estimated greenhouse gas emissions using the life cycle assessment. The study included individual product names and waste quantities in kgs.

File path: sources/Enviromental Impacts Caused by Food Waste

URL: https://doi.org/10.1016/j.clwas.2026.100468

## Reflections and future work

### Future works

Overall, the general direction of the future work stays about the same as stated in the Week 4 stakeholder video: creating more factors that affect food waste. In general this means that we would like to create more similarly minded databases, but for other contributing factors of food waste such as: household waste. This would be specifically useful because then we would be able to document and follow a majority of the life cycle of food (such as from the seller to the household to what happens within that household).

### Reflections

Previously, after our stakeholder video, the main factor moving forward hinged on the addition of real life data. This has been addressed in Week 5 - Integration of real data.

Overall, our database assumes that one supplier has a one to many relationship with Products. This assumption therefore allows our database to be normalised. However, in reality, product has many suppliers (as a product can come from many different places). This would make the database more messy, and would require more junction tables to fix the many to many relationship.

More limitations are noted in Week5_IntegrationRWD. These limitations would further be addressed through the process of finding more real data, however, this might be difficult as food_waste data is usually not counted nor publicly available. 

## SQL Dump

The SQL dump is published to Zenodo (I am unsure if we should post the link here, so the link will be in the comments of the submission).

