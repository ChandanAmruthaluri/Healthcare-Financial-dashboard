# 🏥 Healthcare Financial Performance Dashboard

## 🎯 Project Goal
To design an end-to-end financial analytics solution (SQL → Power BI) that reduces manual reporting time by 40% and improves decision turnaround speed for hospital department heads.

## 1️⃣ Business Problem
The finance team struggled with delayed reimbursements, poor visibility into invoice aging, and lack of departmental budget control. This dashboard serves as a single source of truth to track:
* **Liquidity:** Invoice aging & Overdue %
* **Efficiency:** Reimbursement cycle time
* **Control:** Departmental spend vs. Budget

## 2️⃣ Solution Architecture
* **Database:** MySQL (Star Schema)
* **ETL:** Python (Pandas) for synthetic data generation (50k rows).
* **Visualization:** Power BI with Row Level Security (RLS).

## 3️⃣ Advanced Features Implemented
* **Row Level Security (RLS):** Configured so Department Heads (e.g., Cardiology) can strictly view ONLY their department's financial data.
* **Drill-Through Capabilities:** Users can right-click any department's aging bucket to drill through to the raw line-item invoices for auditing.
* **Aging Buckets (DAX):** Custom logic to categorize invoices into `0-30`, `31-60`, and `60+ Days` overdue.

## 4️⃣ Key Metrics (DAX)
* **Overdue %:** `DIVIDE((Total Billed - Total Paid), Total Billed)`
* **Avg Reimbursement Days:** `AVERAGEX` of time-to-pay for settled invoices.

## 📸 Visuals
### Executive Overview
<img width="973" height="586" alt="image" src="https://github.com/user-attachments/assets/a07f5680-388d-406a-9db8-2b668667cf4a" />


### Invoice Aging & Risk Analysis
<img width="506" height="281" alt="image" src="https://github.com/user-attachments/assets/da42f4c5-ac2f-40c7-b9c5-459d901c1c78" />


### Departmental Budget Variance
<img width="1171" height="570" alt="image" src="https://github.com/user-attachments/assets/51a8973b-917f-4c06-b496-965334b2fa2b" />


### Data Model (Star Schema)
<img width="880" height="428" alt="image" src="https://github.com/user-attachments/assets/8e2e27c9-8b6c-4ad7-abee-c084fde029ea" />


## 📂 Repository Structure
* `sql/` - Contains schema creation and KPI queries.
* `docs/` - Project screenshots and documentation.
* `Healthcare_Financial_Dashboard.pbix` - The download-ready dashboard file.
