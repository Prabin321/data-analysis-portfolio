# Data Analytics & Experimentation Portfolio

**Prabin Uprety** · B.S. Computer Science, Data Science minor · University of Texas at Arlington

A collection of data analysis, experimentation, SQL, and visualization projects. My work focuses on defining meaningful metrics, validating data, interpreting findings carefully, and communicating what the evidence does—and does not—show.

> **Portfolio note:** Some projects originated as learning exercises or case studies. Reported relationships are not automatically causal, and recommendations should not be mistaken for implemented business outcomes.

## Projects in this repository

| Project | Focus | Tools | Project |
| --- | --- | --- | --- |
| **H&M Email Experimentation** | Email A/B testing, engagement metrics, experiment interpretation | Excel, statistical analysis | [Browse portfolio files](.) |
| **YouTube Trending Analysis** | Engagement patterns across 6,351 trending-video records | Excel, PivotTables | [View analysis](youtube_trending_analysis/README.md) |
| **Grammy Website Performance** | Website traffic, engagement KPIs, pre/post comparison and interpretation | Excel | [View analysis](grammy_data_analysis/README.md) |
| **Google Ads Campaign Analysis** | Campaign KPIs, data-quality checks, keyword and device comparisons | Python, pandas | [View analysis](google_ad_campaign_data_analysis/README.md) |
| **Retail Sales & Customer Behavior** | SQL querying, transaction analysis and data-quality issues | SQL, SQLite | [View analysis](sql_user_behaviour_analysis/README.md) |

### Interpretation and evidence

- **YouTube:** Examined 6,351 records; engagement associations do not establish causes of reach.
- **Google Ads:** The existing analysis contains imputation and date-parsing limitations. An earlier independent review found 2,158 of 2,600 rows eligible for a five-field complete-case comparison; results depend on filtering and denominator definitions.
- **Grammy website:** Traffic and engagement comparisons should be treated as observational unless the underlying experiment design supports causal inference.
- **Retail SQL:** Some previously quoted transaction and revenue totals could not be independently reconciled from the repository's available source data. They are intentionally not repeated as verified outcomes here.
- **H&M:** The email experiment is a useful case study in segmentation and measurement; results require careful distinction between observed lift and demonstrated causal effects.

## Additional projects on my GitHub

| Project | What I worked on | Status |
| --- | --- | --- |
| [**Olist Commerce Intelligence**](https://github.com/Prabin321/Olist-Commerce-Intelligence) | Nine-table SQLite dataset, SQL business metrics, delivery validation, Power BI data modeling | In progress; dashboard not yet finished |
| [**GNN Congestion Prediction**](https://github.com/Prabin321/gnn-congestion-prediction) | Compared logistic regression, random forest and graph convolutional networks on synthetic congestion data | Research/ML project; [results documented](https://github.com/Prabin321/gnn-congestion-prediction#results) |
| [**LocalLens**](https://github.com/Prabin321/locallens) | Browser-local CSV profiling, quality scoring, cleaning operations and privacy-aware AI experimentation | Active development |
| [**Flight Check-in Agent**](https://github.com/Prabin321/flight_checkIn_Agent) | Browser countdowns, check-in reminders and airline launch links | Prototype |

Other work includes an airline-passenger-satisfaction prediction model, Android personal health management software, and execution-based verification of reported code vulnerabilities. I share additional work when its documentation and publication permissions are ready.

## Tools and skills

**Analytics:** Excel, PivotTables, SQL, SQLite, Python, pandas, NumPy, Tableau, Power BI (learning DAX)  
**Machine learning:** scikit-learn, model evaluation, classification, experiment analysis; PyTorch Geometric on the GNN project  
**Development:** Git/GitHub, TypeScript, React, Android development, Jupyter Notebook

## Background

- B.S. Computer Science, **Data Science minor**, University of Texas at Arlington (expected Spring 2028)
- Honors College; **President's List** and **College of Engineering Dean's List** (Spring 2026)
- Undergraduate research in AI-assisted software vulnerability verification (ongoing)

**Connect:** [GitHub profile](https://github.com/Prabin321) · [LinkedIn](https://www.linkedin.com/in/pr-up-p296780/)

---

**Reproducibility:** Each project should be evaluated using its source data, definitions and documented limitations. Legacy READMEs may contain older claims; this overview intentionally avoids repeating metrics that have not been fully verified.
