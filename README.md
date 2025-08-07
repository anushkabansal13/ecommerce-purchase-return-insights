# 🛒 E-commerce Customer Purchase & Return Rate Analysis

A data analytics project to analyze customer purchases and return patterns in an e-commerce business. This project leverages **Excel**, **SQL**, and **Power BI** to deliver actionable insights on **sales performance**, **customer behavior**, and **product returns**.

---


## 📚 Dataset Overview

This project uses a publicly available e-commerce dataset sourced from [Kaggle](https://www.kaggle.com/datasets).

**Dataset Name:** E-Commerce Data 
**Source:** UCI / Kaggle  
**Link:** [Click here to view on Kaggle]((https://www.kaggle.com/datasets/carrie1/ecommerce-data/data))  
**Size:** ~500,000 transactions  
**Duration:** Dec 2010 – Dec 2011  
**Country:** 38 countries (UK, France, Netherlands, etc.)

### 🧾 Key Columns Used:
| Column: InvoiceNo,
StockCode,
Description,
Quantity,
InvoiceDate,
UnitPrice,
CustomerID,
Country


I performed extensive data cleaning (nulls, data types, returns identification) and added new fields like:
- `TotalPrice = Quantity × UnitPrice`
- `IsReturn = 1 if InvoiceNo starts with 'C'`
- `Product_Category` (Simulated via StockCode prefix)

The cleaned data is used for SQL analysis and Power BI dashboarding.

## 🖥 Dashboard Overview

### 📍 Sales Overview
![Sales Overview](https://github.com/anushkabansal13/ecommerce-purchase-return-insights/blob/main/Sales-Performance.png?raw=true)

### 📍 Return Analysis
![Return Analysis](https://github.com/anushkabansal13/ecommerce-purchase-return-insights/blob/main/Returns-Analysis.png?raw=true)

### 📍 Customer Insights
![Customer Insights](https://github.com/anushkabansal13/ecommerce-purchase-return-insights/blob/main/Customers-Insight.png?raw=true)


---



## 🎯 Objectives

- Track sales and returns performance over time
- Identify top-selling and most returned products
- Understand customer purchasing frequency
- Measure net revenue and return rate
- Analyze regional and category-level sales trends

---

## 📌 Key Business Questions Solved

1. **What are the monthly trends of sales and returns?**
2. **Which products are top-selling vs highly returned?**
3. **What are the return rates by country and product category?**
4. **Who are the most valuable customers?**
5. **What is the frequency of customer purchases?**
6. **Which countries generate the most revenue?**

---

## 📌 Key Metrics Analyzed

- 💰 **Total Sales:** $8.9M
- 📦 **Total Orders:** 18,536
- 💸 **Total Returns:** ($608.7K)
- 🧾 **Avg Order Value:** $479.5
- 🌍 ***Net Revenue** $9.5M
- 🔁 **Return Rate %** -6.85
- 🧍‍♂️ **Unique Customers** 4372


---


## 📂 SQL Queries

- Total Revenue, Returns & Net Revenue
- Sales by Product / Category / Country
- Return Rate by Product / Category
- Customer Frequency Analysis
- Monthly Sales Trends
  LINK TO:(https://1drv.ms/w/c/DC9E68D5D2958D16/Ebzbq6VjeTxEuvq7JRiX_gQBUdBy-lh_c0Kf7d3BwiscGw?e=Rc4O51)
---


## 📈 Power BI Dashboard Features

- 🔹 **Sales Overview Page** – Orders, revenue, top products
- 🔹 **Return Summary** – Return % by product/category, top return reasons
- 🔹 **Customer Behavior** – Repeat customers, churn rate, high-return users
- 🔹 **Navigation Buttons** – Switch between pages (Sales, Returns, Customers)
- 🔹 **Benchmarking** – Color gradient and thresholds for Return Rate %
 

---


## 🧹 Data Cleaning

Performed in Excel (https://1drv.ms/x/c/b6c51eda1fffdcf4/EWy_KSkL3f1ErPfPMVLlRygBlxEWii3L7lJQZ989tiYLMA?e=4Frow6) to fix:
- Missing or duplicate values
- Outliers in quantity and price
- Standardize column formats


---


## 🔁 Future Improvements

- Add product-level profitability metrics
- Build a predictive model for return likelihood
- Integrate real-time data with Power BI service


---



### 🎯 Insights & Learnings:

- Over 90% of sales come from a few categories → potential for focused inventory
- Some products have high return rates → candidate for quality check
- Customer base shows long-tail: 1000+ customers bought only once
- Repeat customers are key to long-term growth


---

### 📌 Conclusion

This dashboard provides ecommerce managers clear visibility into sales drivers, return pain points, and customer behavior. The modular layout ensures it can scale with new data or business questions.

---

### 🙌 Connect with Me
Anushka Bansal

📧 [anushkabansalhere@gmail.com]

🌐 LinkedIn: www.linkedin.com/in/anushkabansal13

📁 Portfolio: [https://yourportfolio.site](https://www.datascienceportfol.io/anushkabansalhere)



