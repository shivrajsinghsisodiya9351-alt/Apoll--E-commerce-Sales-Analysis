# 🛒 Apollo Commerce — Business Intelligence Dashboard

> A comprehensive Power BI dashboard suite built for **Apollo Commerce**, providing end-to-end insights across revenue, customer behavior, product performance, and profitability.

---

## 📊 Dashboard Pages

### 1. 📋 Overview Summary

The **Overview Summary** page provides a high-level snapshot of Apollo Commerce's overall business performance.

**Key Metrics:**
- 💰 **Total Revenue:** ₹13.12 Billion (▲ 2.9% vs Last Month)
- 📈 **Total Profit:** ₹1.82 Billion (▲ 2.8% vs Last Month)
- 📦 **Total Orders:** 50K (▲ 2.9% vs Last Month)
- 🛒 **Average Order Value (AOV):** ₹2,62,300 (▲ 0.1% vs Last Month)

**Visuals Included:**
- Monthly revenue trend with MoM % change
- Revenue breakdown by Sales Channel (Online 38.87%, Offline 21.39%, Mobile App 19.25%, Distributor 12.11%, Direct Sales 8.39%)
- Payment Mode Distribution — UPI leads at 29.10%, followed by Credit Card at 23.63%
- Detailed product-level transaction table with order status, payment method, and region

![Overview Summary Dashboard](https://raw.githubusercontent.com/shivrajsinghsisodiya9351-alt/Apoll--E-commerce-Sales-Analysis/main/Overview%20Summery.png)

---

### 2. 👥 Customer Behaviour Analysis

The **Customer Behaviour Analysis** page dives deep into customer demographics, loyalty, and regional distribution.

**Key Metrics:**
- 👤 **Total Customers:** 5,000
- 💵 **Revenue per Customer:** ₹2.62 Million (▲ 2.9%)
- 📦 **Total Orders:** 50K (▲ 2.9%)
- ❌ **Cancellation Rate:** 8.08%

**Visuals Included:**
- Customer Loyalty Status breakdown — Bronze (1,494), Silver (1,417), Gold (993), Unassigned (600), Platinum (496)
- Customer Count by Region — North leads with 20.2K, followed by West (12.9K) and South (9.7K)
- Customers Count by Sales Channel — Online dominates with 19K
- Top 10 Cities by Customers — Varanasi (152), Vadodara (131), Pune (129) are top 3
- Customer-level detail table with loyalty status, preferred channel, region, city, state, gender, age, and rating

![Customer Behaviour Analysis Dashboard](https://raw.githubusercontent.com/shivrajsinghsisodiya9351-alt/Apoll--E-commerce-Sales-Analysis/main/Customer%20Behavior%20Analysis.png)

---

### 3. ⚠️ Product Risk & Return Analysis

The **Product Risk & Return Analysis** page focuses on returns, refunds, customer sentiment, and product-level risk indicators.

**Key Metrics:**
- 💸 **Total Refund Amount:** ₹608.2 Million
- 🔄 **Return Orders:** 3,600
- 📉 **Return %:** 7.14%
- ⭐ **Avg Customer Rating:** 2.59
- 📦 **Total Stock Quantity:** 1,99,900
- 👎 **Negative Feedback %:** 44.83%
- 📊 **Margin:** 28.08

**Visuals Included:**
- Top 10 Products by Revenue — Mattel Wearables Smart 2.7 leads at ₹0.36bn
- Sentiment Review Count — 44.83% Negative (1.55K), 29.15% Neutral (1.01K), 26.02% Positive (0.9K) out of 3.5K total reviews
- Return % by Category — Automotive highest at 8.31%, Home & Kitchen lowest at 6.49%
- Avg Rating vs Return Rate scatter plot
- Order Count by Reason for return — Accidental order (276), Better price elsewhere (243), Not as per expectation (243) are top reasons
- Product-level detail table with rating, return orders, return %, refund amount, stock qty, and margin

![Product Risk & Return Analysis Dashboard](https://raw.githubusercontent.com/shivrajsinghsisodiya9351-alt/Apoll--E-commerce-Sales-Analysis/main/Product%20Risk%20and%20Return%20Analysis.png)

---

### 4. 💹 Profitability & Loss Analysis

The **Profitability & Loss Analysis** page provides a granular breakdown of where the business is making and losing money.

**Key Metrics:**
- 💰 **Total Revenue:** ₹13.12 Billion
- 📈 **Net Profit:** ₹1.82 Billion
- 📊 **Profit Margin:** 13.87%
- 📉 **Lost Amount:** ₹2.06 Billion
- ❌ **Unprofitable Orders:** 9,320
- 🏷️ **Discount Amount:** ₹1.37 Billion
- 🔻 **Loss Order %:** 15.22%

**Visuals Included:**
- Profit by Month Trend — showing seasonal fluctuations with peak in Jan (₹174M) and trough in Apr (₹126M)
- P&L by Products (Category-wise) — All categories show **negative profit margins**, with Electronics the largest loss (−₹42M on ₹1.11bn revenue)
- P&L Value by Category bar chart — Revenue vs Net Profit vs Shipping Cost vs Refund vs Discount vs Tax vs Total
- Profit vs Avg Discount scatter — higher discounts correlate with lower/negative profits
- Loss Amount by Sales Channel — Online channel has the highest loss at ₹0.71bn

![Profitability & Loss Analysis Dashboard](https://raw.githubusercontent.com/shivrajsinghsisodiya9351-alt/Apoll--E-commerce-Sales-Analysis/main/P%26L%20Analysis.png)

---

## 🗂️ Repository Structure

```
apollo-commerce-dashboard/
│
├── images/
│   ├── Overview_Summery.png
│   ├── Customer_Behavior_Analysis.png
│   ├── Product_Risk_and_Return_Analysis.png
│   └── P_L_Analysis.png
│
├── README.md
└── Apollo_Commerce_Dashboard.pbix   ← (Power BI file, if included)
```

---

## 🚀 How to Use

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/apollo-commerce-dashboard.git
   ```

2. **Open the Power BI file** (`Apollo_Commerce_Dashboard.pbix`) in Power BI Desktop.

3. **Connect your data source** and refresh the dashboard.

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| Power BI Desktop | Dashboard development |
| DAX | Calculated measures & KPIs |
| Power Query | Data transformation |

---

## 📌 Filters Available

All dashboard pages support the following slicers:
- **Brand** · **Category** · **Region** · **City** · **Month** · **Year** · **Quarter**

---

## 👤 Author

**Apollo Commerce Analytics Team**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://linkedin.com)
[![Website](https://img.shields.io/badge/Website-Visit-green?logo=google-chrome)](https://apollocommerce.com)

---

> ⭐ If you found this useful, please star the repository!
