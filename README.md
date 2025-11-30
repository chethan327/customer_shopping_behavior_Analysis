# 🛒 Customer Shopping Behavior Analysis  
End-to-End Data Analytics Project using Python, SQL, and Power BI

## 📌 Project Overview  
This project analyzes customer shopping behavior across **3,900 transactions**. It explores how demographics, product preferences, discounts, and subscription patterns influence spending. The goal is to generate actionable insights to support marketing, sales, and customer retention strategies.

The analysis includes:  
✔ Data Cleaning & Preprocessing (Python)  
✔ Feature Engineering  
✔ SQL-Based Business Insights  
✔ Power BI Dashboard for visual storytelling  
✔ Actionable business recommendations  

### 🔽 Project Workflow Diagram
![Project Workflow](customer_shopping_behavior_flowChart.png)
---

## 📂 Dataset Summary  
- **Rows:** 3,900  
- **Columns:** 18  
- **Key Columns:**  
  - Customer age, gender, location  
  - Subscription status  
  - Product category, size, color  
  - Purchase amount, discount applied  
  - Review rating  
  - Shipping type  
  - Previous purchases, frequency, season  

- **Missing Data:** 37 missing values in *review_rating* (imputed using category-wise median)

---

## 🧹 Data Cleaning & Preprocessing (Python)
Performed in `customer_shopping_behavior.ipynb`:

### ✔ Steps:
- Loaded dataset using `pandas`
- Checked structure using `info()` and `describe()`
- Imputed missing review ratings using median per product category  
- Standardized column names to *snake_case*
- Dropped redundant `promo_code_used`
- Converted data types where needed  

### ✔ Feature Engineering:
- **age_group** (bins: 18–25, 26–35, 36–50, 50+)  
- **purchase_frequency_days** using purchase history  
- Customer segmentation based on repeat purchases  

### ✔ Database Integration:
The cleaned DataFrame was loaded into **PostgreSQL** for SQL analysis.

---

## 🧠 SQL-Based Business Analysis
Conducted using PostgreSQL with 10 business problem statements:

1. Revenue by gender  
2. High-spending customers who used discounts  
3. Top 5 highest-rated products  
4. Shipping type impact on purchase amount  
5. Subscribers vs non-subscribers revenue and spend  
6. Products most dependent on discounts  
7. Customer segmentation (New / Returning / Loyal)  
8. Top 3 most purchased products in each category  
9. Subscription likelihood vs purchase count  
10. Revenue contribution by age groups  

SQL scripts used are available in the repository.

---

## 📊 Power BI Dashboard  
A **fully interactive Power BI dashboard** was created (`Customer_Shopping_Behaviour.pbix`) to visualize:

- Total revenue, avg purchase value, customer demographics  
- Top products & categories  
- Subscriber behavior  
- Seasonal purchasing trends  
- Discount vs non-discount comparison  
- Customer loyalty segmentation  

Dashboard includes slicers for gender, category, location, and shipping type.

---

## 🔍 Key Insights
- Females contributed slightly higher revenue than males  
- Subscribers showed higher average purchase value  
- Express shipping users tended to spend more  
- Categories like Clothing and Electronics were top revenue generators  
- Loyal customers (5+ purchases) drove a significant share of total revenue  
- High-rated products had strong repeat purchase patterns  

---

## 💡 Business Recommendations
- **Boost subscriptions** through exclusive offers  
- **Strengthen loyalty programs** for high-frequency buyers  
- **Optimize discount strategy** to avoid margin loss  
- **Promote top-rated products** in marketing campaigns  
- **Target high-value age groups** and express-shipping users  
- **Improve personalization** through age-group based recommendations  

---

## 📁 Project Structure
```
📦 Customer Shopping Behavior Analysis
│
├── customer_shopping_behavior.ipynb      # Python EDA & preprocessing
├── Customer Shopping Behavior Analysis.pdf   # Full detailed project report
├── Customer_Shopping_Behaviour.pbix      # Power BI interactive dashboard
├── data/                                 # Dataset (optional if included)
├── sql_queries/                          # SQL scripts (optional)
└── README.md                             # Documentation
```

---

## 🛠️ Tools & Technologies
- **Python** (Pandas, NumPy, Matplotlib, Seaborn)
- **PostgreSQL**
- **Power BI**
- **Jupyter Notebook**

---

## 🚀 How to Run the Project
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo-name.git
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Run the notebook:
   ```bash
   jupyter notebook customer_shopping_behavior.ipynb
   ```
4. Load cleaned data into PostgreSQL  
5. Open Power BI file (`.pbix`) to view dashboard  

---

## 🙌 Acknowledgements
Dataset provided for educational analytics purposes.  
Project designed for data analysis learning & portfolio building.

---

## 📬 Contact
For questions or collaboration, feel free to reach out!

