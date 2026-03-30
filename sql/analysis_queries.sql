--Total Revenue by Warehouse

SELECT
    warehouse_id,
    SUM(order_value) AS total_revenue
FROM fact_orders
GROUP BY warehouse_id;

--Total Units Sold by Product

SELECT
    p.product_name,
    SUM(f.units) AS total_units
FROM fact_orders f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_name;

--Revenue by Region

SELECT
    c.region,
    SUM(f.order_value) AS total_revenue
FROM fact_orders f
JOIN dim_customer c ON f.customer_id = c.customer_id
GROUP BY c.region;

--Average Shipping Cost per Warehouse

SELECT
    warehouse_id,
    AVG(shipping_cost) AS avg_shipping_cost
FROM fact_orders
GROUP BY warehouse_id;

--Delivery Time Analysis

SELECT
    warehouse_id,
    AVG(DATEDIFF(delivery_date, ship_date)) AS avg_delivery_days
FROM fact_orders
GROUP BY warehouse_id;