# Superstore Sales Analysis

## Business Question
How can the business maximize revenue during peak season by focusing 
on the highest performing regions, categories, and customer segments?

## Key Findings
- Q4 consistently generates **38-39% of annual revenue** — nearly 
  double any other quarter
- **East region** is the fastest growing Q4 market, reaching $97k in 2018
- **Technology + Consumer** is the highest revenue combination in Q4
- **South region** tripled its Q4 revenue from 2016-2018 — 
  biggest growth opportunity
- Revenue differences between regions driven by **order volume**, 
  not spending behavior

## Tools Used
| Tool | Purpose |
|---|---|
| Python (pandas, matplotlib, seaborn) | Data cleaning, EDA, analysis |
| PostgreSQL | Data storage and SQL analysis |
| Power BI | Interactive dashboard |
| Git/GitHub | Version control |

## Project Structure
superstore-analysis/
├── data/
│ ├── raw/ ← original dataset (gitignored)
│ └── processed/ ← cleaned data and chart exports
├── notebooks/
│ └── 01_eda.ipynb ← full analysis notebook
├── sql/
│ └── queries/ ← SQL analysis scripts
├── dashboard/
│ └── superstore_dashboard.pdf
└── README.md

## Dashboard
See `dashboard/superstore_dashboard.pdf` for the full interactive analysis.

## Dataset
Kaggle Superstore Sales Dataset — 9,800 US retail orders (2015-2018)