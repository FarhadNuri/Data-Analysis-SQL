# 🧠 Analyzing International Student Mental Health

![Project Banner](https://www.ipr.northwestern.edu/images/news-story-images/nusslock-brain.jpg)
## 📋 Project Overview

This project analyzes mental health data from international students at a Japanese university to understand the relationship between student status, length of stay, and mental health outcomes. Using SQL queries, we explore patterns in depression scores, social connectedness, and acculturative stress to validate findings from a 2018 university survey.

## 🌍 Background

Moving to a new country for education presents unique challenges beyond academic pressures. International students face cultural adaptation, language barriers, and social isolation—all of which can significantly impact mental health. A 2018 survey conducted by a Japanese international university found that international students face higher risks of mental health difficulties compared to the general population.

The study identified two critical factors influencing depression among international students:
- **Social connectedness**: The sense of belonging to a social group
- **Acculturative stress**: Stress associated with adapting to a new culture

This analysis re-examines these findings using PostgreSQL to determine if similar patterns emerge and whether length of stay plays a role in mental health outcomes.

## 🎯 Objectives

This project aims to answer the following key questions:

1. **Do international students show higher depression scores than domestic students?**
2. **How do language proficiency levels (Japanese and English) relate to mental health indicators?**
3. **Is there a difference in mental health outcomes between undergraduate and graduate students?**
4. **Does length of stay in the host country affect mental health outcomes for international students?**

## 📊 Dataset Description

The analysis uses the `students` table from a 2018 survey with the following structure:

| Column | Definition | Data Type |
|--------|------------|-----------|
| `inter_dom` | Types of students (international or domestic) | `varchar` |
| `japanese_cate` | Japanese language proficiency | `varchar` |
| `english_cate` | English language proficiency | `varchar` |
| `academic` | Current academic level (undergraduate or graduate) | `varchar` |
| `age` | Current age of student | `int` |
| `stay` | Current length of stay in years | `float` |
| `todep` | Total score of depression (PHQ-9 test) | `int` |
| `tosc` | Total score of social connectedness (SCS test) | `int` |
| `toas` | Total score of acculturative stress (ASISS test) | `int` |

### 📝 Assessment Scales

- **PHQ-9 (Patient Health Questionnaire-9)**: Measures depression severity (0-27 scale)
- **SCS (Social Connectedness Scale)**: Measures sense of belonging and social connection
- **ASISS (Acculturative Stress Scale for International Students)**: Measures stress from cultural adaptation

## 🛠️ Technologies Used

- **PostgreSQL** - For data querying and statistical analysis
- **SQL** - For data aggregation, correlation analysis, and pattern discovery

## 📁 Project Structure

```
International-Student-Mental-Health/
│
├── data/
│   └── student_mental_health.csv
│
├── queries/
│   ├── 1. depression_comparison.sql
│   ├── 2. language_proficiency_impact.sql
│   ├── 3. academic_level_comparison.sql
│   └── 4. length_of_stay.sql
│
├── notebooks/
│   └── student_mental_health.ipynb
│
└── README.md
```

## 🚀 Getting Started

### Prerequisites

- Basic understanding of SQL queries and statistical concepts

## 📈 Key Findings

- **International students** show approximately **52% higher depression scores** compared to domestic students
- **Language proficiency** (both Japanese and English) is strongly associated with mental health outcomes
- **Undergraduate students** demonstrate higher depression and acculturative stress than graduate students
- **First year** represents the highest-risk period, with mental health improving significantly after 2+ years of stay

## 💡 Insights

### 1. 🌏 International Students Face Significant Mental Health Challenges

International students demonstrate substantially higher depression scores compared to domestic students, validating the original 2018 study findings. This highlights the additional psychological burden faced by students studying abroad, beyond typical academic stressors. The disparity underscores the need for targeted mental health support specifically designed for international student populations.

### 2. 🗣️ Language Proficiency is a Critical Factor

Language barriers emerge as a significant predictor of mental health difficulties. Students with lower Japanese proficiency experience higher depression and acculturative stress, indicating that language skills are not just academic tools but essential for social integration and psychological wellbeing. This suggests that language support should be prioritized as a mental health intervention.

### 3. ⏳ The First Year is the Critical Window

The analysis reveals a clear temporal pattern: mental health challenges peak during the first year of stay and progressively improve over time. This identifies a critical intervention window where support services can have the greatest impact. Universities should concentrate resources and support programs during this vulnerable period.

### 4. 🎓 Academic Level Influences Vulnerability

Undergraduate international students show higher vulnerability to mental health challenges compared to graduate students. This may reflect differences in maturity, life experience, support systems, and academic autonomy. Support programs should be tailored to address the specific needs of undergraduate international students who may be experiencing independence and cultural adaptation simultaneously for the first time.

## 📚 References

- Original study: [Japanese international university mental health survey, 2018-2019]
- PHQ-9: Kroenke, K., Spitzer, R. L., & Williams, J. B. (2001)
- Social Connectedness Scale: Lee, R. M., & Robbins, S. B. (1995)
- ASISS: Sandhu, D. S., & Asrabadi, B. R. (1994)

## 🙏 Acknowledgments

- Data provided by the Japanese international university (2018 survey)
- Ethical approval granted by university regulatory boards
- Project inspired by global mental health awareness initiatives

## 📧 Contact

Farhad Nuri - farhadnuri559@gmail.com

Project Link: [International Student Mental Health Analysis](https://github.com/FarhadNuri/Data-Analysis-SQL/tree/main/Projects/1.%20Analyzing%20International%20Student%20Mental%20Health)

---

⭐ If you found this project insightful, please consider giving it a star and sharing it to raise awareness about international student mental health!

---

*Note: This analysis is for educational and research purposes. If you or someone you know is experiencing mental health difficulties, please seek help from qualified mental health professionals.*
