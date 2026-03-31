-- 1️⃣ Total Sales & Profit
SELECT SUM("Sales") AS total_sales, SUM("Profit") AS total_profit
FROM orders;

-- 2️⃣ Sales by Region
SELECT "Region",
       SUM("Sales") AS total_sales,
       SUM("Profit") AS total_profit
FROM orders
GROUP BY "Region"
ORDER BY total_sales DESC;

-- 3️⃣ Profit by Category
SELECT "Category",
       SUM("Profit") AS total_profit,
       SUM("Sales") AS total_sales
FROM orders
GROUP BY "Category"
ORDER BY total_profit DESC;

-- 4️⃣ Top 5 Sub-Categories by Sales
SELECT "Sub-Category",
       SUM("Sales") AS total_sales,
       SUM("Profit") AS total_profit
FROM orders
GROUP BY "Sub-Category"
ORDER BY total_sales DESC
LIMIT 5;

-- 5️⃣ Monthly Sales Trend
SELECT substr("Order Date",1,7) AS month,
       SUM("Sales") AS total_sales,
       SUM("Profit") AS total_profit
FROM orders
GROUP BY month
ORDER BY month;