-- 1️⃣ Total Sales, Profit, and Profit Margin
SELECT 
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit,
    ROUND(SUM("Profit")/SUM("Sales")*100,2) AS profit_margin_percentage
FROM orders;

-- 2️⃣ Sales & Profit Margin by Region
SELECT 
    "Region",
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit,
    ROUND(SUM("Profit")/SUM("Sales")*100,2) AS profit_margin_percentage
FROM orders
GROUP BY "Region"
ORDER BY total_sales DESC;

-- 3️⃣ Profit & Profit Margin by Category
SELECT 
    "Category",
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit,
    ROUND(SUM("Profit")/SUM("Sales")*100,2) AS profit_margin_percentage
FROM orders
GROUP BY "Category"
ORDER BY total_profit DESC;

-- 4️⃣ Top 5 Sub-Categories by Sales & Profit
SELECT 
    "Sub-Category",
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit
FROM orders
GROUP BY "Sub-Category"
ORDER BY total_sales DESC
LIMIT 5;

