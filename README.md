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

   Key Business Insights
1️⃣ Revenue Concentration
A small number of states contribute majority of total revenue

👉 Insight: Business is geographically


## Author
Revathy Shanmugaraj
