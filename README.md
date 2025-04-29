
# 🛒 Sales Trend Analysis – SQL Project

This project performs **Sales Trend Analysis** using SQL aggregation techniques on the `create-db-store` database. It focuses on extracting **monthly revenue** and **order volume** based on the `order` and `order_items` tables.

---

## 📂 Database Schema

- **Database Name**: `create-db-store`
- **Tables Used**:
  - **`order`**:
    - `order_id` (Primary Key)
    - `order_date` (DATE)
  - **`order_items`**:
    - `order_id` (Foreign Key)
    - `product_id`
    - `amount` (NUMERIC / DECIMAL)

---

## 🧾 Task 6: Sales Trend Analysis Using Aggregations

### 🎯 Objective:
Analyze **monthly revenue** and **order volume** using SQL aggregation functions.

### 🛠️ Tools Used:
-   MySQL 

---

## 📊 SQL Query – Monthly Revenue and Order Volume

```sql
-- Monthly Sales Trend Analysis: Revenue and Order Volume
SELECT
    EXTRACT(YEAR FROM o.order_date) AS order_year,
    EXTRACT(MONTH FROM o.order_date) AS order_month,
    SUM(oi.amount) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM
    "order" o
JOIN
    order_items oi ON o.order_id = oi.order_id
GROUP BY
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY
    order_year, order_month;
```

---

## 📌 Explanation

- `EXTRACT(YEAR FROM order_date)` and `EXTRACT(MONTH FROM order_date)` extract the year and month from the `order_date`.
- `SUM(amount)` calculates the total revenue for each month.
- `COUNT(DISTINCT order_id)` calculates the number of unique orders in each month.
- `GROUP BY` is used to aggregate data by year and month.
- `ORDER BY` sorts the results chronologically.

---

## 📁 Deliverables

- ✅ SQL Script: `sales_trend_analysis.sql`
- ✅ Output Table: Monthly revenue and order volume summary
- ✅ README Documentation: `README.md` (this file)


---

## 📬 Author

> Feel free to fork, star ⭐, and contribute to this project.  
> 💬 Questions or suggestions? Open an issue or start a discussion!
