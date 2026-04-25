📊 Google Ads Campaign Performance Analysis
🔍 Project Overview

This project analyzes Google Ads campaign performance using Python to evaluate ad effectiveness, keyword performance, device-level engagement, and overall return on investment (ROI). The goal was to transform raw advertising data into actionable insights that improve campaign efficiency and profitability.

💼 Business Problem

A digital marketing campaign generated significant traffic and conversions, but it was unclear:

Which keywords drive the most value
Which devices perform best
Where ad spend is inefficient

This analysis identifies high-performing segments and provides data-driven recommendations to optimize marketing strategy.

🛠️ Tools & Technologies
Python
Pandas
NumPy
Matplotlib
Seaborn
Jupyter Notebook
📂 Dataset

The dataset contains 2,600+ Google Ads records with the following features:

Campaign Name
Clicks
Impressions
Cost
Leads
Conversions
Conversion Rate
Sale Amount
Date
Location
Device
Keyword
🧹 Data Cleaning & Preparation

Key preprocessing steps:

Standardized column names
Removed currency symbols and converted numeric columns
Fixed inconsistent text values (campaign, device, keyword, location)
Handled missing values using median/mode imputation
Converted date column to proper datetime format
Created calculated performance metrics (KPIs)

📈 KPI Metrics:
Click-Through Rate (CTR)

CTR measures how effectively an ad attracts clicks from users who see it.

Formula: Clicks / Impressions
Meaning: Higher CTR indicates stronger audience engagement and ad relevance.
Cost Per Click (CPC)

CPC represents the average cost paid for each click.

Formula: Cost / Clicks
Meaning: Lower CPC means more cost-efficient traffic acquisition.
Conversion Rate

Conversion rate measures how many users who clicked the ad completed a desired action.

Formula: Conversions / Clicks
Meaning: Higher conversion rate indicates effective targeting and landing experience.
Cost Per Conversion

This metric shows how much it costs to generate one conversion.

Formula: Cost / Conversions
Meaning: Lower values indicate higher efficiency in converting ad spend into results.
Revenue per Conversion

Average revenue generated from each conversion.

Formula: Sale Amount / Conversions
Meaning: Helps assess the value of each customer action.
Profit

Net gain from the campaign after ad costs.

Formula: Sale Amount − Cost
Meaning: Indicates whether the campaign is financially beneficial.
Return on Investment (ROI)

ROI measures profitability relative to cost.

Formula: (Sale Amount − Cost) / Cost
Meaning:
ROI > 0 → Profitable
ROI = 1 → 100% return
ROI < 0 → Loss

📊 Key Results
Total Impressions: 11.76M
Total Clicks: 361K
Total Cost: $559K
Total Conversions: 16,985
Total Sales: $3.89M
Average CTR: 3.19%
Average Conversion Rate: 5.01%
Average ROI: ~6.03 (≈ 603% return)

🔑 Key Insights
The campaign is highly profitable, generating ~6x return on ad spend
Keywords such as “data analytics course” and “data analytics training” deliver the highest ROI
Device performance is consistent across desktop, mobile, and tablet, with desktop slightly leading
Some keywords show higher cost per conversion, indicating optimization opportunities
Analysis is limited to one location, so insights are strongest at keyword and device levels

📊 Visualizations Included
Top Keywords by ROI
Conversions by Device
Cost per Conversion by Keyword
Cost vs Conversions (Scatter Plot)

🚀 Recommendations
Scale high-performing keywords to maximize conversions and revenue
Optimize high-cost keywords through A/B testing and improved targeting
Maintain multi-device strategy due to consistent performance
Improve landing pages and ad creatives to boost conversion rates
Expand campaigns geographically to test scalability beyond a single location
💡 Project Impact

This project demonstrates an end-to-end marketing analytics workflow:

Data cleaning and preprocessing
KPI engineering
Data visualization
Insight generation
Business recommendation

The analysis provides actionable strategies to increase ROI, reduce cost inefficiencies, and improve campaign performance.

🔗 Author

Prabin Uprety
Computer Science @ UTA | Data Analyst
GitHub: https://github.com/Prabin321

LinkedIn: https://www.linkedin.com/in/pr-up-p296780
