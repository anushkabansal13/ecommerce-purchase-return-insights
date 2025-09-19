/* ----------------------------------------------------------
   SQL Analysis – Product Performance & Return Project
   Author: Anushka Bansal
   Purpose: Compute KPIs, answer key business questions,
   and prepare insights for Power BI dashboard
   ----------------------------------------------------------- */
/* =======================
   A. KPI CALCULATIONS
======================= */

-- 1. Total Sales Revenue
SELECT 
    SUM(Total_Price) AS Total_Revenue 
FROM sales_data 
WHERE Quantity > 0;

-- 2. Total Number of Orders
SELECT 
    COUNT(DISTINCT Invoice_No) AS Total_Orders
FROM sales_data
WHERE Quantity > 0;

-- 3. Average Order Value (AOV)
SELECT 
    SUM(Total_Price) / COUNT(DISTINCT Invoice_No) AS AOV
FROM sales_data
WHERE Quantity > 0;

-- 4. Total Returns (Revenue Lost)
SELECT 
    SUM(Total_Price) AS Total_Returns
FROM sales_data
WHERE IsReturn = 1;

-- 5. Net Revenue (Sales – Returns)
SELECT  
    SUM(CASE WHEN IsReturn = 0 AND Quantity > 0 THEN Total_Price ELSE 0 END) -
    SUM(CASE WHEN IsReturn = 1 THEN Total_Price ELSE 0 END) AS Net_Revenue
FROM sales_data;

-- 6. Total Unique Customers
SELECT 
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM sales_data
WHERE Customer_ID IS NOT NULL;

-- 7. Return Rate (%)
SELECT  
    ROUND(
        SUM(CASE WHEN IsReturn = 1 THEN Total_Price ELSE 0 END) * 100.0 /
        NULLIF(SUM(CASE WHEN Quantity > 0 THEN Total_Price ELSE 0 END), 0),
    2) AS ReturnRatePercent
FROM sales_data;

/* =======================
   B. BUSINESS QUESTIONS
======================= */

-- 1. Monthly Sales & Return Trends
SELECT  
    FORMAT(Invoice_Date, 'MM-yyyy') AS Month,
    SUM(CASE WHEN IsReturn = 0 THEN Total_Price ELSE 0 END) AS Total_Sales,
    SUM(CASE WHEN IsReturn = 1 THEN Total_Price ELSE 0 END) AS Total_Returns
FROM sales_data
GROUP BY FORMAT(Invoice_Date, 'MM-yyyy')
ORDER BY Month;

-- 2. Top 10 Selling Products by Revenue
SELECT TOP 10 
    Description,
    SUM(Total_Price) AS Total_Sales
FROM sales_data
WHERE IsReturn = 0
GROUP BY Description
ORDER BY Total_Sales DESC;

-- 3. Total Sales by Country
SELECT  
    Country,
    SUM(Total_Price) AS Total_Sales
FROM sales_data
WHERE IsReturn = 0
GROUP BY Country
ORDER BY Total_Sales DESC;

-- 4. Sales Performance by Product Category
SELECT  
    Product_Category,
    SUM(Total_Price) AS Category_Sales
FROM sales_data
WHERE IsReturn = 0
GROUP BY Product_Category
ORDER BY Category_Sales DESC;

-- 5. Returns by Country
SELECT  
    Country,
    COUNT(*) AS Total_Returns
FROM sales_data
WHERE IsReturn = 1
GROUP BY Country
ORDER BY Total_Returns DESC;

-- 6. Top Returned Product Categories (Return Rate %)
SELECT  
    Product_Category,
    COUNT(CASE WHEN IsReturn = 1 THEN 1 END) * 100.0 / COUNT(*) AS ReturnRate
FROM sales_data
GROUP BY Product_Category
ORDER BY ReturnRate DESC;

-- 7. Top 10 Customers by Revenue
SELECT TOP 10 
    Customer_ID,
    SUM(Total_Price) AS Customer_Sales
FROM sales_data
WHERE IsReturn = 0
GROUP BY Customer_ID
ORDER BY Customer_Sales DESC;

-- 8. Customer Distribution by Geography
SELECT  
    Country,
    COUNT(DISTINCT Customer_ID) AS CustomerCount
FROM sales_data
WHERE IsReturn = 0
GROUP BY Country
ORDER BY CustomerCount DESC;
