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


