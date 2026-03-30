# Star vs Snowflake Schema

## Project Goal
This project compares star schema and snowflake schema using a warehouse analytics business case. The goal is to show how raw operational data can be structured into analytics-ready models for reporting and decision-making.

## Scope
- Design a star schema
- Design a snowflake schema
- Create SQL table definitions
- Run analysis queries on top of both models
- Compare simplicity, normalization, and reporting usability

## Star Schema Design

### Fact Table
**fact_orders**
- order_id
- order_date
- customer_id
- product_id
- warehouse_id
- ship_date
- delivery_date
- shipping_cost
- units
- order_value

### Dimension Tables
**dim_customer**
- customer_id
- customer_name
- city
- region

**dim_product**
- product_id
- product_name
- category

**dim_warehouse**
- warehouse_id
- warehouse_city
- warehouse_region

**dim_date**
- date_id
- full_date
- year
- month
- day

## Snowflake Schema Design

### Fact Table
**fact_orders**
- order_id
- order_date
- customer_id
- product_id
- warehouse_id
- ship_date
- delivery_date
- shipping_cost
- units
- order_value

### Dimension Tables
**dim_customer**
- customer_id
- customer_name
- city_id

**dim_product**
- product_id
- product_name
- category_id

**dim_warehouse**
- warehouse_id
- warehouse_city_id

**dim_city**
- city_id
- city_name
- region_id

**dim_region**
- region_id
- region_name

**dim_category**
- category_id
- category_name

**dim_date**
- date_id
- full_date
- year
- month
- day

## Star Schema vs Snowflake Schema

| Aspect | Star Schema | Snowflake Schema |
|--------|-------------|------------------|
| Structure | Denormalized dimensions | Normalized dimensions |
| Query Performance | Faster for reporting | Slightly slower due to more joins |
| Simplicity | Easier to understand | More complex |
| Storage Redundancy | Higher | Lower |
| Maintenance | Simpler for analysts | Better for structured data governance |
| Best Use Case | BI dashboards and reporting | Complex enterprise data models |

## Key Takeaway
The star schema is more user-friendly and efficient for reporting and dashboarding, while the snowflake schema is more normalized and better suited for maintaining structured hierarchical data. In this project, both schemas support warehouse analytics, but they differ in simplicity, storage design, and query complexity.

## Project Structure

```text
star-vs-snowflake-schema/
│
├── data/
│   └── raw/
│       └── raw_orders.csv
│
├── sql/
│   ├── star_schema.sql
│   ├── snowflake_schema.sql
│   └── analysis_queries.sql
│
├── notebooks/
├── diagrams/
├── README.md
└── requirements.txt