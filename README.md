# Brazilian E-Commerce Analysis (Olist Dataset)

A data analysis project built on the [Olist public e-commerce dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce), covering order processing, customer behavior, product performance, and payment trends across Brazil.

---

## Project Structure

```
├── data/
│   ├── raw/                  # Original Olist CSV files
│   └── processed/            # Cleaned and merged dataset
├── notebooks/
│   └── datacleaning.ipynb    # Data cleaning and preprocessing
├── powerbi/
│   └── dash.pbix             # Power BI dashboard file
├── reports/
│   └── datacleaning.html     # Exported notebook report
└── sql/                      # SQL queries (in progress)
```

---


## Dataset

The raw data consists of 8 relational tables from Olist:

| File | Description |
|------|-------------|
| `olist_customers_dataset.csv` | Customer location and ID info |
| `olist_orders_dataset.csv` | Order status and timestamps |
| `olist_order_items_dataset.csv` | Items per order with pricing |
| `olist_order_payments_dataset.csv` | Payment type and installments |
| `olist_order_reviews_dataset.csv` | Customer review scores |
| `olist_products_dataset.csv` | Product dimensions and category |
| `olist_sellers_dataset.csv` | Seller location info |
| `olist_geolocation_dataset.csv` | ZIP code geolocation data |

---

## Data Cleaning

Handled in `notebooks/datacleaning.ipynb`:

- Merged orders, customers, items, products, and payments into a single flat table
- Standardized date columns and extracted `year` and `month` features
- Filled or flagged missing product category names as `unknown`
- Removed duplicates and irrelevant columns
- Output saved to `data/processed/cleaned_ecommerce.csv`

**Tools used:** Python, pandas, numpy, matplotlib, seaborn, scikit-learn

---

## Power BI Dashboard

The cleaned dataset was loaded into Power BI to build an interactive executive dashboard.

### Overview Dashboard

![Ecommerce Dashboard Overview](https://github.com/Revashan/ecommerce-data-analysis/blob/main/powerbi/dashboard-screenshot/Ecommerce_dashboard_overview.png)

### Executive Dashboard

![Ecommerce Executive Dashboard](https://github.com/Revashan/ecommerce-data-analysis/blob/main/powerbi/dashboard-screenshot/Ecommerce_exec_dashboard.png)

The dashboard covers:
- Revenue and order trends over time
- Top product categories by sales
- Customer distribution by state
- Payment method breakdown
- Delivery performance metrics

The `.pbix` file is available at `powerbi/dash.pbix`.

---

## Getting Started

1. Clone the repo
2. Create a virtual environment and install dependencies:
   ```bash
   pip install pandas numpy matplotlib seaborn scikit-learn jupyter
   ```
3. Run `notebooks/datacleaning.ipynb` to reproduce the cleaned dataset
4. Open `powerbi/dash.pbix` in Power BI Desktop to explore the dashboard

  ## Key Business Insights
   1. Revenue Concentration
A small number of states contribute majority of total revenue
 Insight: Business is geographically

2.Product Performance
Few categories generate most revenue
Long-tail categories contribute very little

3.Customer Behavior
Majority of customers are one-time buyers
Repeat customers form a small but high-value segment

4.Sales Trend
Sales show seasonal spikes
Certain months outperform significantly

5.Revenue vs Orders
High number of orders does not always mean high revenue

## Advanced Insights
1.Customer Segmentation

Using clustering:

## High-value customers
Medium-value customers
Low-value customers

## Order Value Distribution
Most orders are low to medium value
Few high-value outliers

## Business Recommendations
🔹 1. Improve Customer Retention
Launch loyalty programs
Offer discounts for repeat purchases
Personalized marketing campaigns

2.Focus on High-Performing Regions
Increase marketing in top states
Expand logistics in high-demand areas

3.Optimize Product Strategy
Promote top-performing categories
Reduce low-performing inventory

4.Increase Average Order Value (AOV)
Bundle products
Offer free shipping above threshold
Cross-sell related products

5.Seasonal Campaign Planning
Run promotions during peak months
Prepare inventory in advance

6.Target High-Value Customers
VIP programs for top customers
Exclusive deals


## Author
Revathy Shanmugaraj
