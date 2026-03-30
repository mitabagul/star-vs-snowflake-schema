CREATE TABLE dim_region (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(50)
);

CREATE TABLE dim_city (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(100),
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES dim_region(region_id)
);

CREATE TABLE dim_category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE dim_customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city_id INT,
    FOREIGN KEY (city_id) REFERENCES dim_city(city_id)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES dim_category(category_id)
);

CREATE TABLE dim_warehouse (
    warehouse_id VARCHAR(10) PRIMARY KEY,
    warehouse_city_id INT,
    FOREIGN KEY (warehouse_city_id) REFERENCES dim_city(city_id)
);

CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    day INT
);

CREATE TABLE fact_orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    product_id INT,
    warehouse_id VARCHAR(10),
    ship_date DATE,
    delivery_date DATE,
    shipping_cost DECIMAL(10,2),
    units INT,
    order_value DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES dim_warehouse(warehouse_id)
);