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