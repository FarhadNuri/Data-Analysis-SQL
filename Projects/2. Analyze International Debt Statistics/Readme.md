# 💰 International Debt Analysis

![Project Banner](https://cdnp0.stackassets.com/dcde6f321b79b1ec691c5fb35f1bd42e7b41a3f6/store/97408cb38c4276b6a3e5e8df2562ed1f10799d9ae97ea263401b1520ad00/sale_25324_primary_image.jpg)

## 📋 Project Overview

This project analyzes international debt data collected by **The World Bank** to understand the debt landscape of developing countries across the globe. Using SQL queries, we explore patterns in international debt obligations and identify key insights about which countries carry the highest debt burdens.

## 🌍 Background

Humans not only take debts to manage necessities—countries also take on debt to manage their economies. Infrastructure spending, for instance, is one costly ingredient required for a country's citizens to lead comfortable lives. The World Bank is the primary organization that provides debt to countries for such developmental purposes.

This analysis examines the amount of debt (in USD) owed by developing countries across several categories to better understand global debt distribution and repayment patterns.

## 🎯 Objectives

This project aims to answer the following key questions:

1. **What is the number of distinct countries present in the database?**
2. **What country has the highest amount of debt?**
3. **What country has the lowest amount of repayments?**

## 📊 Dataset Description

The analysis uses the `international_debt` table with the following structure:

| Column | Definition | Data Type |
|--------|------------|-----------|
| `country_name` | Name of the country | `varchar` |
| `country_code` | Code representing the country | `varchar` |
| `indicator_name` | Description of the debt indicator | `varchar` |
| `indicator_code` | Code representing the debt indicator | `varchar` |
| `debt` | Value of the debt indicator for the given country (in current US dollars) | `float` |

## 🛠️ Technologies Used

- **SQL** - For data querying and analysis
- **PostgreSQL/MySQL** - Database management system (specify your DBMS)
- **Python** (optional) - For data visualization
- **Jupyter Notebook** (optional) - For interactive analysis

## 📁 Project Structure

```
international-debt-analysis/
│
├── data/
│   └── international_debt.csv
│
├── queries/
│   ├── distinct_countries.sql
│   ├── highest_debt.sql
│   └── lowest_repayments.sql
│
├── notebooks/
│   └── analysis.ipynb
│
├── images/
│   └── banner.jpg
│
├── README.md
└── requirements.txt
```

## 🚀 Getting Started

### Prerequisites

- SQL database (PostgreSQL, MySQL, or SQLite)
- Basic understanding of SQL queries
- (Optional) Python 3.x for additional analysis

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/international-debt-analysis.git
cd international-debt-analysis
```

2. Load the dataset into your database:
```bash
# Example for PostgreSQL
psql -U your_username -d your_database -f data/load_data.sql
```

3. Run the SQL queries from the `queries/` folder

## 📈 Key Findings

*This section will be updated with analysis results*

- **Number of distinct countries:** [To be determined]
- **Country with highest debt:** [To be determined]
- **Country with lowest repayments:** [To be determined]

## 💡 Insights

*Add your insights and observations here after completing the analysis*

## 🙏 Acknowledgments

- Data provided by [The World Bank](https://www.worldbank.org/)
- Project inspired by real-world financial analysis needs

## 📧 Contact

Your Name - [@yourtwitter](https://twitter.com/yourhandle) - your.email@example.com

Project Link: [https://github.com/yourusername/international-debt-analysis](https://github.com/yourusername/international-debt-analysis)

---

⭐ If you found this project helpful, please consider giving it a star!