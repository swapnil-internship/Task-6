-- Monthly Sales Trend Analysis: Revenue and Order Volume
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month
   
FROM
    orders
    

