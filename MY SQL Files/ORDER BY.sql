-- Monthly Sales Trend Analysis: Revenue and Order Volume
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month, 
	SUM(oi.quantity * oi.unit_price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
  
FROM orders o

left join order_items oi on o.order_id = oi.order_id

GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
 
ORDER BY
	order_year, order_month; 
    