# Sales Profit Performance Analysis

An interactive **Sales and Profit Performance Dashboard** built using Power BI to analyze sales, costs, profitability, products, customers, and regional performance.

## 📊 Project Overview

This project analyzes **3,000 sales transactions** to understand overall business performance and identify key trends in sales and profitability.

The analysis focuses on:

* Sales and profit performance
* Product and category performance
* Customer contribution
* Regional and geographical performance
* Discounts and their impact on profitability
* Sales trends over time
* Cost and profitability analysis

The project presents the analysis through an interactive **Power BI dashboard** with KPI cards, charts, filters, and business-focused visualizations.

---

## 🗂️ Dataset

The dataset contains **3,000 sales transactions** and **15 columns**.

### Key Columns

| Column         | Description                        |
| -------------- | ---------------------------------- |
| `OrderID`      | Unique identifier for each order   |
| `OrderDate`    | Date on which the order was placed |
| `CustomerID`   | Unique customer identifier         |
| `CustomerName` | Name of the customer               |
| `Product`      | Product associated with the order  |
| `Category`     | Product category                   |
| `Quantity`     | Number of units purchased          |
| `UnitPrice`    | Price per unit                     |
| `Discount`     | Discount applied to the order      |
| `Sales`        | Total sales amount                 |
| `Cost`         | Cost associated with the order     |
| `Profit`       | Profit generated from the order    |
| `Region`       | Sales region                       |
| `State`        | Customer/order state               |
| `City`         | Customer/order city                |

---

## 🛠️ Tools & Technologies

* **Power BI** – Dashboard development and data visualization
* **Power Query** – Data preparation and transformation
* **DAX** – Calculated measures and KPIs
* **Microsoft Excel / CSV** – Dataset

---

## 📈 Dashboard

The Power BI dashboard provides an interactive view of sales and profitability performance.

### Dashboard Page 1 – Overview

![Sales and Profit Performance Dashboard - Overview](dashboard/dashboard_page1_overview.png)

This page provides an overall view of business performance using key metrics and visualizations.

### Dashboard Page 2 – Profit Analysis

![Sales and Profit Performance Dashboard - Profit Analysis](dashboard/dashboard_page2_profit_analysis.png)

This page focuses on profitability, product/category performance, and other detailed business insights.

---

## 🔍 Key Analysis Areas

### Sales Performance

* Total sales
* Sales trends over time
* Sales by product and category
* Sales by region and location

### Profitability

* Total profit
* Profit by product and category
* Cost vs. sales performance
* Profitability across regions

### Customer Analysis

* Customer contribution to sales
* Customer-level purchasing patterns
* Identification of high-value customers

### Discount Analysis

* Impact of discounts on sales
* Relationship between discounts and profit
* Identification of products/categories affected by discounting

### Geographic Analysis

* Sales performance by region
* State-level performance
* City-level sales distribution

---

## 📁 Project Structure

```text
Sales Profit Performance Analysis
│
├── data
│   └── sales_profit_performance_data.csv
│
├── dashboard
│   ├── Sales_Profit_Performance_Dashboard.pbix
│   ├── dashboard_page1_overview.png
│   └── dashboard_page2_profit_analysis.png
│
└── README.md
```

---

## 💡 Business Insights

The dashboard can be used to identify:

* Products and categories contributing the most to revenue and profit
* Regions and locations with strong or weak performance
* Sales trends across different time periods
* High-value customers
* The effect of discounting on profitability
* Areas where costs may be affecting overall profit

> **Note:** The specific insights and KPI values shown in the dashboard are based on the provided dataset and can be explored interactively using the Power BI report.

---

## 🚀 How to Use

1. Download or clone this repository.
2. Open the `.pbix` file using **Microsoft Power BI Desktop**.
3. Explore the dashboard using the available filters and visualizations.
4. Use the dataset in the `data` folder for further analysis.

---

