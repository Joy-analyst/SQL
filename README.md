# SQL

# 🧠SQL Sales Analysis

This project contains SQL queries and insights derived from a retail sales dataset for a company. The data includes information about customers, products, sales, and stores. The analysis was conducted using Microsoft SQL Server.

---

## 📌 Project Objectives

- Analyze customer behavior and purchasing trends
- Evaluate product and category performance
- Examine sales trends across stores and payment channels
- Identify data quality issues like missing values
- Present results visually using PowerPoint charts

---

## 🗃️ Dataset Overview

Tables analyzed:
- **Orders** – Sales transactions with quantity, date, channel, and amount
- **Customers** – Customer demographic details
- **Products** – Product information including price, category, and subcategory
- **Stores & Sales Personnel** – Store and employee details

---

## 🔍 Key SQL Queries

### 📈 Customer Insights
- Count total customers and filter by conditions (e.g., name starting with 'A')
- Detect missing emails and marital statuses
- Use pattern matching (`LIKE`) for customer search

### 📦 Product Insights
- Identify top 5 most expensive products
- Count products per category and subcategory
- Use `MAX`, `MIN`, `ROUND`, and `AVG` for price analysis

### 💸 Sales & Order Insights
- Total sales by store, date, and payment method
- Filter sales by date ranges, channels (e.g., Online)
- Generate total sales amount using `Quantity * SalesAmount`

### 🧹 Data Quality
- Use `DISTINCT` to eliminate duplicates
- Identify null values across key fields

---

## 📊 Visualizations

Visual charts were created in the PowerPoint file:

- **Bar Chart**: Product count by category
- **Pie Chart**: Total sales by payment mode (Store ID 7)
- **Line Chart**: Daily order trends (Store 5 & 7) in June 2023

View the visual insights in:  
📂 `SalesDB.pptx`

---

## 📁 Files Included

| File Name                                | Description                                      |
|-----------------------------------------|--------------------------------------------------|
| `SQLQuery1_NEBIANT.sql`                 | Advanced filtering, joins, and category analysis |
| `SQLQuery2_NEBIANT.sql`                 | Data cleaning, top product filters, and logic    |
| `SQLQuery2_NEBIANT_2.sql`               | Aggregations, groupings, and date logic          |
| `SalesDB.pptx` | Visual summary of findings with charts           |

---

## 🚀 How to Run

1. Open the SQL files using **SQL Server Management Studio (SSMS)**
2. Run queries individually based on your analysis goal
3. Use the presentation to communicate key findings visually

---

## ✨ Author

**Joy Uko**  
*Data Analyst & Data Scientist*

---

