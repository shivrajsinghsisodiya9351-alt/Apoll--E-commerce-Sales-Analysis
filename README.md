# 🛒 Apollo Commerce — Multi-Channel E-Commerce BI Dashboard

> **A full-stack business intelligence solution analyzing ₹13.12Bn in revenue across 50,000+ transactions (FY 2021–2024) using Power BI, SQL, Excel, DAX, and Power Query.**

---

## 📌 Project Overview

Apollo Commerce is a fictional multi-channel Indian e-commerce company operating across Online, Offline, Mobile App, Distributor, and Direct Sales channels — covering 10 product categories and 5 sales regions.

This project simulates a **real-world BI engagement** where a Data Analyst is hired to:
- Diagnose why a ₹13.12Bn revenue company is generating a net margin of only **13.87%**
- Identify profit leakage, high-return product categories, and unprofitable customer segments
- Deliver a 4-page executive-level Power BI dashboard with actionable business recommendations

---

## 🚨 Problem Statement

Despite generating ₹13.12Bn in total revenue, Apollo Commerce faces critical business challenges:

| Business Problem | Impact |
|---|---|
| All 10 product categories show **negative profit margins** | Net profit at risk |
| ₹608.2M in refund amount with 7.14% return rate | Revenue leakage |
| 44.83% negative customer feedback | Brand trust erosion |
| ₹2.06Bn in lost amount from unprofitable orders | Margin compression |
| 15.22% loss order percentage | Operational inefficiency |
| North region dominates (20.2K customers), East & Central underperform | Regional imbalance |

---

## 📊 Dataset Details

| Attribute | Details |
|---|---|
| Total Records | ~50,000 rows |
| Time Period | FY 2021 – FY 2024 |
| Columns | Orders, Customers, Products, Sales Channel, Region, Payment Mode, Returns, Feedback |
| Categories | Automotive, Beauty, Books, Clothing, Electronics, Grocery, Home & Kitchen, Sports, Toys |
| Sales Channels | Online, Offline, Mobile App, Distributor, Direct Sales |
| Regions | North, South, East, West, Central |
| Source | Custom-generated India e-commerce dataset |

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Power BI Desktop** | Dashboard development, DAX, data modeling |
| **DAX (Data Analysis Expressions)** | KPI measures, time intelligence, conditional formatting |
| **Power Query (M Language)** | Data cleaning, transformation, column profiling |
| **Microsoft Excel** | Initial data exploration and validation |
| **SQL (PostgreSQL)** | Pre-processing, aggregation queries, data validation |
| **Figma** | Dashboard wireframing and UI layout planning |

---

## ⚙️ Methods & Approach

**1. Data Cleaning (Power Query)**
- Removed nulls and inconsistent category labels
- Standardized date formats and created a dynamic Calendar table
- Handled return order flags and feedback sentiment columns

**2. Data Modeling**
- Built a Star Schema with Fact (Orders) + Dimension tables (Customers, Products, Calendar, Channels)
- Established correct one-to-many relationships with single-direction filters
- Created calculated columns for CLV, margin bands, and return flags

**3. DAX Measure Development**
- KPI Cards: Total Revenue, Net Profit, Profit Margin %, Return %, Cancellation Rate
- Time Intelligence: MoM Growth, YoY Comparison, Running Totals
- Advanced: Customer Lifetime Value (CLV), Loss Order %, Avg Discount vs Profit scatter logic

**4. Dashboard Design**
- 4-page layout with consistent purple/white brand theme
- Cross-page slicers: Brand, Category, Region, City, Month, Year, Quarter
- Navigation sidebar with page-level bookmarks

---

## 💡 Key Insights

### 💸 Profitability & Loss
- **Net Profit Margin: 13.87%** — critically low for a ₹13Bn business
- **Electronics** has the highest absolute loss: **₹42M** in negative profit
- **Clothing** leads revenue (₹135M) but still posts **-3.81% margin**
- Heavy discounting (Avg 6–7%) is directly compressing margins across all categories
- **Online channel leads lost amount** at ₹0.71Bn — highest loss-generating channel despite highest revenue share (38.87%)

### 🔄 Product Risk & Returns
- **Automotive** has the highest return rate at **8.31%** — quality or expectation mismatch
- Top return reasons: Accidental orders (276), Better price elsewhere (243), Not as per expectation (243)
- **44.83% Negative Feedback** vs only 26.02% Positive — customer satisfaction is a major risk
- High-revenue products (Mattel Wearables, Tata Audio) still have single-digit avg ratings

### 👥 Customer Behaviour
- **5,000 unique customers** with ₹2.62M revenue per customer
- **Bronze (1,494) and Silver (1,417)** are largest loyalty segments — Platinum retention is poor (496 only)
- **North region: 20.2K customers** vs East & Central at 3.6K each — extreme geographic concentration
- **Cancellation Rate: 8.08%** — needs operational investigation
- UPI dominates payments at **29.10%**, Credit Card second at **23.63%**

### 📈 Business Overview
- Revenue peaked in **December (+16%)** and dipped in **April (-15.9%)** — seasonal pattern identified
- **Online channel** drives 38.87% of revenue but also the most loss
- AOV (Average Order Value): **₹262.30K** — stable MoM

---

## 📸 Dashboard Pages

| Page | Description |
|---|---|
| **1. Overview Summary** | Revenue, Profit, Orders, AOV KPIs — Monthly trend, Payment mode, Sales channel distribution |
| **2. Customer Behaviour Analysis** | Customer segmentation, loyalty tiers, regional spread, city-level analysis |
| **3. Product Risk & Return Analysis** | Return rates by category, sentiment analysis, top revenue/profit products, return reasons |
| **4. Profitability & Loss Analysis** | P&L waterfall, margin by category, profit trend, loss by channel, discount vs profit scatter |

> 📎 **Live Dashboard:** [View on NovyPro](#) *(link)*
> 📎 **Download .pbix:** Available in this repository

---

## ▶️ How to Run This Project

1. Download the `.pbix` file from this repository
2. Open in **Power BI Desktop** (version April 2024 or later recommended)
3. Data is fully embedded — no external database connection required
4. Use the slicers (Brand, Category, Region, Month, Year) to explore the dashboard
5. Navigate between pages using the left sidebar

---

## 📝 Results & Conclusion

This project successfully diagnosed the core business problem: **Apollo Commerce is a high-revenue, low-margin operation suffering from discount dependency, high return rates, and poor customer retention.**

**Key Recommendations Delivered:**
- Reduce blanket discounting — target discounts only to high-CLV customer segments
- Prioritize Platinum loyalty tier acquisition over Bronze to improve LTV
- Audit Automotive and Grocery supply chain to reduce return rates
- Expand East and Central regional presence — currently underserved markets
- Review Online channel economics — highest revenue but also highest loss contributor

**Business Impact of Dashboard:**
- Identified ₹2.06Bn in preventable losses
- Flagged ₹608.2M refund exposure with root-cause analysis
- Provided regional and channel-level P&L breakdown for strategic reallocation

---

## 👤 Author

**Shivraj Singh Sisodiya**
Data Analyst | Power BI Developer | SQL | Excel | DAX

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue)](https://www.linkedin.com/in/shivraj-singh-sisodiya/)
[![Portfolio](https://www.datascienceportfol.io/shivraj/badge/NovyPro-View_Dashboard-purpl)](#)
