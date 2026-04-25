# Google Ads Campaign Performance Analysis

## Project Overview
This project analyzes Google Ads campaign performance using Python to evaluate ad efficiency, keyword performance, device-level conversions, and return on investment. The goal was to identify which keywords and devices drive the strongest results and provide recommendations to improve campaign performance.

## Business Problem
A Google Ads campaign generated traffic and conversions, but the business needed to understand which keywords and devices were most effective. This analysis helps identify high-performing areas, inefficient spend, and opportunities to improve ROI.

## Tools Used
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

## Dataset
The dataset contains 2,600 Google Ads records with fields including:
- Campaign Name
- Clicks
- Impressions
- Cost
- Leads
- Conversions
- Conversion Rate
- Sale Amount
- Date
- Location
- Device
- Keyword

## Data Cleaning
Key cleaning steps included:
- Standardized column names
- Removed currency symbols from cost and sale amount
- Converted numeric columns to proper data types
- Fixed inconsistent campaign names, location names, device values, and keywords
- Handled missing values using median/mode replacement
- Created calculated KPI metrics

## KPI Metrics Explained

To evaluate campaign performance, the following key metrics were calculated:

### Click-Through Rate (CTR)
CTR measures how effectively an ad attracts clicks from users who see it.
- **Formula:** Clicks / Impressions  
- **Meaning:** A higher CTR indicates that the ad is relevant and engaging to the audience.

---

### Cost Per Click (CPC)
CPC represents the average cost paid for each click on an ad.
- **Formula:** Cost / Clicks  
- **Meaning:** Lower CPC indicates more cost-efficient traffic acquisition.

---

### Conversion Rate
Conversion rate measures how many users who clicked the ad completed a desired action (e.g., purchase or signup).
- **Formula:** Conversions / Clicks  
- **Meaning:** A higher conversion rate indicates effective targeting and landing page performance.

---

### Cost Per Conversion
This metric shows how much it costs to generate one conversion.
- **Formula:** Cost / Conversions  
- **Meaning:** Lower cost per conversion means better efficiency in turning ad spend into results.

---

### Revenue per Conversion
This measures the average revenue generated from each conversion.
- **Formula:** Sale Amount / Conversions  
- **Meaning:** Helps evaluate the value of each successful conversion.

---

### Profit
Profit represents the net gain after subtracting advertising costs from revenue.
- **Formula:** Sale Amount - Cost  
- **Meaning:** Indicates whether the campaign is financially beneficial.

---

### Return on Investment (ROI)
ROI measures the profitability of the campaign relative to its cost.
- **Formula:** (Sale Amount - Cost) / Cost  
- **Meaning:** 
  - ROI > 0 → Profitable campaign  
  - ROI = 1 → 100% return (doubled investment)  
  - ROI < 0 → Loss  

A higher ROI indicates better overall campaign performance and efficiency.

## Key Results
- Total Impressions: 11.76M
- Total Clicks: 361K
- Total Cost: $559K
- Total Conversions: 16,985
- Total Sales: $3.89M
- Average CTR: 3.19%
- Average Conversion Rate: 5.01%
- Average ROI: 6.03

## Key Insights
- The campaign was highly profitable overall, generating approximately 6x return on ad spend.
- Keywords such as "data analytics course" and "data analytics training" produced strong ROI.
- Desktop generated the highest number of conversions, followed closely by mobile.
- Some keywords had higher cost per conversion, showing opportunities for optimization.
- Since the dataset focused on one campaign and one location, the strongest insights came from keyword and device-level analysis.

## Recommendations
- Increase budget allocation toward high-ROI keywords such as "data analytics course" and "data analytics training."
- Optimize keywords with high cost per conversion through improved ad copy, bidding strategy, and landing page testing.
- Maintain cross-device campaign coverage because desktop, mobile, and tablet all performed strongly.
- Run A/B tests on ad copy and landing pages to improve conversion rate.
- Expand testing to additional locations to evaluate market scalability beyond Hyderabad.

## Visualizations
The project includes:
- Top Keywords by ROI
- Conversions by Device
- Highest Cost per Conversion by Keyword
- Cost vs Conversions by Device

## Project Impact
This project demonstrates an end-to-end marketing analytics workflow, including data cleaning, KPI creation, performance analysis, visualization, and business recommendations. The analysis provides actionable insights to improve campaign efficiency, reduce cost per conversion, and maximize ROI.
