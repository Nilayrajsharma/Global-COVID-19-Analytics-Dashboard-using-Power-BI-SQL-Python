# 🌍 Global COVID-19 Analysis Dashboard

## 📖 End-to-End Business Intelligence Case Study

---

# 🚀 Project Overview

The COVID-19 pandemic generated an unprecedented amount of healthcare data worldwide. Governments, healthcare organizations, researchers, and policymakers needed a reliable way to monitor infections, track recovery rates, evaluate mortality impact, and measure vaccination progress.

This project transforms raw COVID-19 data into a comprehensive Business Intelligence solution using **Excel, Python, SQL, and Power BI**, enabling users to explore pandemic trends, compare countries, monitor vaccination effectiveness, and make data-driven decisions.

### 🎯 Project Objectives

✅ Monitor global pandemic progression

✅ Compare country-wise performance

✅ Analyze infection and mortality trends

✅ Track vaccination coverage

✅ Evaluate recovery effectiveness

✅ Support strategic decision-making through interactive dashboards

---

# 🔄 End-to-End Data Pipeline

```text
🌐 COVID-19 Data Sources
          │
          ▼
📄 Excel / CSV Files
(Raw Data Collection)
          │
          ▼
🐍 Python
(Data Cleaning & Transformation)
✔ Missing Values Handling
✔ Data Validation
✔ Data Standardization
✔ Feature Engineering
          │
          ▼
🗄 SQL Database
(Data Storage & Modeling)
✔ Data Relationships
✔ Data Integrity
✔ Query Optimization
          │
          ▼
📊 Power BI
(Data Visualization & Analytics)
✔ DAX Measures
✔ KPI Cards
✔ Dynamic Parameters
✔ Interactive Reports
          │
          ▼
🚀 Business Insights
✔ Pandemic Monitoring
✔ Country Comparison
✔ Trend Analysis
✔ Vaccination Tracking
```

---

# 📂 Data Sources

The dashboard combines global COVID-19 case, recovery, mortality, and vaccination data collected from official public health organizations and government agencies worldwide.

## 📊 Datasets Used

| Dataset | Purpose |
|----------|----------|
| countrywise | Country-level COVID-19 statistics |
| country_daywise | Daily country-wise trends |
| daywise | Global daily pandemic trends |
| covid_19_data | Historical COVID-19 records |
| Vaccination | Vaccination statistics |
| Vaccinations_detail | Vaccine and source information |

---

## 🌐 Official Source References

| Source Name | Link |
|------------|------|
| World Health Organization (WHO) | https://www.who.int/ |
| DXY.cn Pneumonia Tracker | http://3g.dxy.cn/newh5/view/pneumonia |
| BNO News Coronavirus Tracker | https://bnonews.com/index.php/2020/02/the-latest-coronavirus-cases/ |
| National Health Commission of China (NHC) | http://www.nhc.gov.cn/xcs/yqtb/list_gzbd.shtml |
| China CDC (CCDC) | http://weekly.chinacdc.cn/news/TrackingtheEpidemic.htm |
| Hong Kong Department of Health | https://www.chp.gov.hk/en/features/102465.html |
| Macau Government Health Bureau | https://www.ssm.gov.mo/portal/ |
| Taiwan CDC | https://sites.google.com/cdc.gov.tw/2019ncov/taiwan |
| United States CDC | https://www.cdc.gov/coronavirus/2019-ncov/index.html |
| Government of Canada Public Health | https://www.canada.ca/en/public-health/services/diseases/coronavirus.html |
| Australian Government Department of Health | https://www.health.gov.au/news/coronavirus-update-at-a-glance |
| European Centre for Disease Prevention and Control (ECDC) | https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases |
| Ministry of Health Singapore (MOH) | https://www.moh.gov.sg/covid-19 |
| Italy Ministry of Health | http://www.salute.gov.it/nuovocoronavirus |

---


# 🐍 Python Data Processing

Python was used to clean, preprocess, and analyze the COVID-19 dataset before visualization.

### ✔ Tasks Performed

- Data Cleaning & Validation
- Handling Missing Values
- Removing Duplicates
- Data Transformation
- Feature Engineering
- Exploratory Data Analysis (EDA)
- Statistical Analysis
- Data Visualization

### 📚 Libraries Used

- Pandas
- NumPy
- Matplotlib
- Seaborn
- OpenPyXL

---

# 🗄 SQL Data Analysis

SQL was used to store, query, and analyze the cleaned COVID-19 data for generating meaningful insights.

### ✔ SQL Operations

- Data Import & Management
- Aggregate Functions
- GROUP BY & ORDER BY
- Filtering & Sorting
- JOIN Operations
- Ranking Countries
- Trend Analysis
- Recovery & Death Rate Analysis
- Vaccination Analysis
- KPI Calculations

### 📊 Key Insights Generated

- Total Confirmed Cases
- Total Deaths
- Total Recoveries
- Active Cases
- Top Affected Countries
- Recovery Rate
- Death Rate
- Vaccination Progress

---

### 🔍 Data Reliability

The project leverages data from official health organizations, government agencies, and disease control centers to ensure reliable and globally recognized COVID-19 reporting.

---


# 📊 Dashboard Pages

---

# 🏠 Page 1 – Executive Summary Dashboard

## 🎯 Purpose

Provides a high-level overview of the global COVID-19 situation, enabling stakeholders to quickly understand the pandemic's overall impact.

### 📊 Visuals Used

- KPI Cards
- Global Summary Metrics
- Recovery & Death Rate Indicators
- Interactive Filters

### 📌 KPIs

📍 Total Confirmed Cases

📍 Total Deaths

📍 Total Recovered Cases

📍 Active Cases

📍 Recovery Rate %

📍 Death Rate %

### 📈 Insights Delivered

✅ Overall pandemic severity

✅ Current active case burden

✅ Global recovery performance

✅ Worldwide mortality impact

### 💼 Business Value

Helps decision-makers monitor pandemic status at a glance and identify major global trends without navigating through detailed reports.

---

# 🌍 Page 2 – Global COVID-19 Overview

## 🎯 Purpose

Provides a geographical and comparative view of COVID-19 cases across countries and regions.

### 📊 Visuals Used

🗺 Interactive World Map

📊 Global KPI Cards

🏆 Top Countries by Confirmed Cases

☠️ Top Countries by Deaths

💚 Recovery Distribution Analysis

### 📈 Insights Delivered

✅ Countries with the highest infection rates

✅ Regions most affected by the pandemic

✅ Recovery performance comparison

✅ Global distribution of COVID-19 cases

### 💼 Business Value

Supports policymakers and researchers in identifying global hotspots and understanding the regional impact of the pandemic.

---

# 📊 Page 3 – Country Comparison Analysis

## 🎯 Purpose

Allows users to compare countries using multiple COVID-19 metrics through dynamic and interactive analysis.

### 📊 Visuals Used

🏆 Top 10 Countries Ranking

📊 Dynamic Bar Charts

📋 Country Comparison Table

🎛 Metric Parameter Slicer

### 📈 Insights Delivered

✅ Best-performing countries

✅ High-risk countries

✅ Recovery leaders

✅ Countries with high mortality rates

✅ Population-adjusted comparisons

### 💼 Business Value

Enables benchmarking of countries based on pandemic performance, helping identify successful response strategies and areas requiring intervention.

---

# 📈 Page 4 – Pandemic Trend Analysis

## 🎯 Purpose

Analyzes how COVID-19 evolved over time by tracking infection, recovery, and mortality trends.

### 📊 Visuals Used

📈 Daily Confirmed Cases Trend

📉 Daily Death Trend

📊 Active Cases Trend

📅 Timeline Analysis

### 📈 Insights Delivered

✅ Pandemic waves and outbreak periods

✅ Growth and decline patterns

✅ Peak infection periods

✅ Recovery progression over time

### 💼 Business Value

Provides historical insights into the spread of COVID-19 and helps stakeholders understand how the pandemic changed over different periods.

---

# 💉 Page 5 – Vaccination Progress & Coverage

## 🎯 Purpose

Tracks vaccination adoption, coverage, and effectiveness across countries.

### 📊 Visuals Used

💉 Vaccination Trend Chart

🌍 Country Vaccination Comparison

👥 Fully Vaccinated Population

📈 Vaccination Growth Analysis

### 📈 Insights Delivered

✅ Countries leading vaccination efforts

✅ Vaccination growth trends

✅ Fully vaccinated population analysis

✅ Coverage comparison across countries

### 💼 Business Value

Helps assess vaccination effectiveness and supports public health planning by identifying regions with low or high vaccine coverage.

---

# 🎯 Dashboard Outcome

The dashboard provides a complete 360° view of the COVID-19 pandemic by combining:

✅ Global Monitoring

✅ Country Comparison

✅ Historical Trend Analysis

✅ Vaccination Tracking

✅ Interactive Exploration

This enables stakeholders to move from raw data to actionable insights through a single integrated Power BI solution.
---

# 🎛 Dynamic Metric Parameter Feature

## ✨ What Makes This Feature Unique?

Instead of creating multiple charts for different metrics, a single chart dynamically changes based on the user's selection.

This improves dashboard usability and reduces visual clutter.

## 📌 Available Metrics

🔹 Total Confirmed Cases

🔹 Total Deaths

🔹 Total Recovered Cases

🔹 Active Cases

🔹 Recovery Rate %

🔹 Death Rate %

🔹 Cases Per Million

🔹 Deaths Per Million

🔹 Vaccination %

## ⚙️ How It Works

Users select a metric from the slicer.

The same bar chart automatically updates based on the selected metric.

### 📍 Example 1: Confirmed Cases

```text
USA       ████████████
India     ██████████
Brazil    ████████
```

### 📍 Example 2: Deaths

```text
USA       ████████
Brazil    ███████
India     ██████
```

### 📍 Example 3: Recovery Rate %

```text
India     ███████████
China     ██████████
Brazil    ████████
```

## 🏆 Business Value Delivered

✅ Multi-Metric Analysis

✅ Interactive Exploration

✅ Reduced Dashboard Complexity

✅ Improved User Experience

✅ Faster Insight Generation

✅ Better Decision Support

---

# 📐 DAX Measures Used

| Measure                  | Purpose                           |
| ------------------------ | --------------------------------- |
| Total Confirmed          | Total reported cases              |
| Total Deaths             | Total fatalities                  |
| Total Recovered          | Total recovered patients          |
| Active Cases             | Current active infections         |
| Recovery Rate %          | Recovery effectiveness            |
| Death Rate %             | Pandemic severity                 |
| Cases Per Million        | Population-adjusted comparison    |
| Deaths Per Million       | Population-adjusted mortality     |
| Active Cases Per Million | Population-adjusted active burden |
| Vaccination %            | Vaccination coverage              |
| Fully Vaccinated %       | Vaccination effectiveness         |

---

# 🏆 Project Impact

✅ Monitor Pandemic Developments

✅ Compare Country Performance

✅ Track Vaccination Progress

✅ Support Data-Driven Decisions

---

# 💻 Technology Stack

📄 Excel / CSV

🐍 Python

🗄 SQL

📊 Power BI

📈 DAX

---

# 🎯 Final Outcome

The Global COVID-19 Analysis Dashboard transforms raw pandemic data into actionable insights through interactive reporting, advanced analytics, and dynamic visualizations.

### 🚀 Excel → 🐍 Python → 🗄 SQL → 📊 Power BI → 💡 Actionable Insights

**🌍 Transforming Data into Decisions 📊💉**


# 👨‍💻 Author

### **Nilayraj Anil Sharma**

📊 Data Analyst | Power BI Developer | SQL Enthusiast

🚀 Passionate about transforming data into actionable insights through Business Intelligence and Analytics.

📌 Skills:
- Power BI
- SQL
- Python
- Excel
- Data Visualization
- Dashboard Development

GitHub: *(https://github.com/Nilayrajsharma)*  

LinkedIn: *(www.linkedin.com/in/nilayraj-sharma)*  

Email: *(nilayrajsharma7@gmail.com)*

---
