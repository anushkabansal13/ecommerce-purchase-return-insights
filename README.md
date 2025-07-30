# 🛍️ E-commerce Customer Purchase Analysis

This project aims to uncover key insights about customer behavior, product performance, and return patterns using a dataset of customer transactions. The analysis was conducted using **Excel**, **SQL**, and **Power BI**, and is presented with an interactive dashboard.

---

## 🖥 Dashboard Overview

### 📍 Sales Overview
![Sales Overview](powerbi_dashboard/screenshots/sales_overview.png)

### 📍 Return Analysis
![Return Analysis](powerbi_dashboard/screenshots/return_analysis.png)

### 📍 Customer Insights
![Customer Insights](powerbi_dashboard/screenshots/customer_insights.png)

---

## 📁 Project Structure

ecommerce-customer-purchase-analysis/
│
├── data/
│   └── ecommerce_data.csv                # Cleaned final dataset
│
├── powerbi_dashboard/
│   └── Product_Performance_Report.pbix   # Your Power BI file
│   └── screenshots/
│       ├── sales_overview.png
│       ├── return_analysis.png
│       └── customer_insights.png
│
├── sql/
│   └── ecommerce_queries.sql             # All your 10+ SQL queries
│
├── notebooks/                            # Optional: If you clean data in Python
│   └── data_cleaning.ipynb
│
├── README.md                             # Full project documentation
│
└── requirements.txt                      # Optional, if you use Python



---

## 🎯 Objectives

- Track sales and returns performance over time
- Identify top-selling and most returned products
- Understand customer purchasing frequency
- Measure net revenue and return rate
- Analyze regional and category-level sales trends

---

## 🛠️ Tools Used

| Tool     | Purpose                     |
|----------|-----------------------------|
| Excel    | Initial data cleaning       |
| SQL      | Querying and data extraction|
| Power BI | Dashboard and insights      |

---

## 📌 Key Metrics Analyzed

- 💰 **Total Sales:** ₹8.9M
- 📦 **Total Orders:** 18,536
- 💸 **Total Returns:** ₹608.7K
- 🧾 **Avg Order Value:** ₹479.5
- 🌍 **Sales by Country**, **Category**, **Customer ID**
- 🔁 **Return Rate %** and Top Returned Categories
- 🧍‍♂️ **Customer Purchase Frequency**


---

## 📂 SQL Queries

- Total Revenue, Returns & Net Revenue
- Sales by Product / Category / Country
- Return Rate by Product / Category
- Customer Frequency Analysis
- Monthly Sales Trends
Link to: sql/ecommerce_queries.sql


---


## 📈 Power BI Dashboard Features

- 🔹 **Sales Overview Page** – Orders, revenue, top products
- 🔹 **Return Summary** – Return % by product/category, top return reasons
- 🔹 **Customer Behavior** – Repeat customers, churn rate, high-return users
- 🔹 **Navigation Buttons** – Switch between pages (Sales, Returns, Customers)
- 🔹 **Benchmarking** – Color gradient and thresholds for Return Rate %

---

## 🧹 Data Cleaning

Performed in Excel & Python (`data_cleaning.ipynb`) to fix:
- Missing or duplicate values
- Outliers in quantity and price
- Standardize column formats

---

## 🧠 Insights

- Over **90%** of returns fall into "Others" category — further breakdown recommended.
- Certain products have a **>30% return rate**, needing investigation.
- Top 5 customers contribute **15%+** of all returns.
- Return rates are highest in **specific categories and countries**.

---

## 🧮 SQL Sample Query

```sql
-- Top 10 Returned Products
SELECT 
    ProductName,
    COUNT(*) AS ReturnCount
FROM orders
WHERE ReturnFlag = 1
GROUP BY ProductName
ORDER BY ReturnCount DESC
LIMIT 10;

---

### ✅ Next Steps:

- Push your cleaned data and `.pbix` file to GitHub.
- Add the screenshot in the `powerbi_dashboard/screenshots/` folder.
- Replace placeholders like GitHub repo URL, email, and links with your actual ones.
- Add `requirements.txt` only if you used Python.

Let me know if you'd like me to create this README directly inside your repo or generate code for the `requirements.txt` or SQL queries!

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



