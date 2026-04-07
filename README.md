# ecommerce-analysis
#  Customer Analytics & Segmentation Project

##  Project Overview

This project focuses on **customer analytics and segmentation** using real-world eCommerce data from the Olist dataset.

The objective is to analyze customer distribution and behavior, and apply **Machine Learning  to segment customers based on engagement patterns.

---

##  Objectives

* Understand customer distribution by **state and city**
* Identify **unique vs repeat customers**
* Perform **data cleaning and preprocessing**
* Build a **customer segmentation model**
* Create a **Power BI dashboard** for business insights

---

##  Dataset
* File used: `olist_customers_dataset.csv`

### Columns:

| Column                   | Description                 |
| ------------------------ | --------------------------- |
| customer_id              | Unique ID for each order    |
| customer_unique_id       | Unique customer identifier  |
| customer_zip_code_prefix | ZIP code (region indicator) |
| customer_city            | Customer city               |
| customer_state           | Customer state              |

---

## 🏗️ Project Architecture

```
CSV Data → Python (Cleaning & Feature Engineering) → ML Model → SQL → Power BI Dashboard
```

---

## 🧹 Data Cleaning Steps

* Removed duplicate records
* Standardized text fields (city, state)
* Converted ZIP code to numeric format
* Checked and handled missing values

---

## 📊 Exploratory Data Analysis (EDA)

Key analysis performed:

* Customers by **State**
* Customers by **City**
* Unique vs Repeat customers

---

## ⚙️ Feature Engineering

Created new features for ML:

* `purchase_frequency` → Number of records per customer
* `zip_code_mean` → Average ZIP code (used as location proxy)

---

## 🤖 Machine Learning Model

### Algorithm Used:

* **KMeans Clustering**

### Steps:

1. Feature scaling using StandardScaler
2. Determined optimal clusters using **Elbow Method**
3. Applied KMeans clustering
4. Visualized customer segments

##  Power BI Dashboard

### Key Metrics:

* Total Customers
* Unique Customers
* Repeat Customers %
* Cluster Distribution

### Visuals:

* Bar Chart → Customers by State
* Bar Chart → Top Cities
* Scatter Plot → Customer Segmentation
* KPI Cards → Customer Metrics

---

##  Key Insights

* Certain states dominate customer distribution → useful for regional targeting
* Repeat customers identified  potential for loyalty programs
* Customer clusters help in segmented marketing strategies
* Geographic patterns can guide logistics and expansion

---

##  Limitations

* Dataset does **not include order or revenue data**
* Cannot perform:

  * Sales analysis
  * Revenue trends
  * Order-level insights

---

##  Future Enhancements

* Integrate additional datasets:

  * Orders
  * Payments
  * Products
* Implement:

  * RFM Analysis
  * Customer Lifetime Value (CLV)
  * Churn prediction model

---

## 🛠️ Tech Stack

* Python (Pandas, NumPy)
* Scikit-learn (KMeans, StandardScaler)
* SQL
* Power BI
* Matplotlib / Seaborn

---

## 👤 Author
       Revathy
* Data Analytics Project
  

---
