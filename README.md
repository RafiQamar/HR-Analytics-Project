# HR Analytics Project

This project demonstrates the application of **Python**, **SQL**, and **Power BI** to perform comprehensive HR Analytics. The project involves data cleaning, analysis, visualization, and dashboard creation to gain insights into employee data.

## Project Overview
The objective of this project is to explore and analyze HR data to uncover valuable insights and present them through interactive visualizations. Key activities include:

1. **Data Cleaning**: Cleaning raw HR data using Python.
2. **Database Integration**: Storing the cleaned dataset in MySQL.
3. **Exploratory Data Analysis (EDA)**: Gaining insights using Python and visualizations.
4. **Interactive Dashboard**: Building a Power BI dashboard connected to MySQL for detailed insights.

###

<div align="center">
  <img src="https://github.com/RafiQamar/HR-Analytics-Project/blob/main/HR%20Analytics%20Dashboard.gif?raw=true" height="300" alt="IMDB Dashboard gif" />
</div>

###

---

## Problem Statements

### Individual Problem Statements
#### 1. Data Cleaning (HR_Data_Cleaning.ipynb)
- **Problem**: The raw HR dataset contains inconsistencies, missing values, and redundant columns, making it unsuitable for analysis.
- **Solution**:
  - Handled missing values (e.g., filling missing Manager IDs based on logical assumptions).
  - Standardized column formats (e.g., changing dates to datetime and reformatting names).
  - Removed unnecessary columns and reordered data for better usability.
  - Exported the cleaned dataset for further use.

#### 2. Exploratory Data Analysis (HR_Analytics_EDA.ipynb)
- **Problem**: Understanding trends, patterns, and relationships within the HR dataset to inform decision-making.
- **Solution**:
  - Performed descriptive statistics and visualized key metrics (e.g., salary distributions, employment trends, turnover reasons).
  - Created visualizations using Seaborn and Matplotlib to explore data on employee performance, satisfaction, and demographics.
  - Identified significant correlations and trends for strategic insights.

#### 3. SQL Database Integration (HR_Analytics.sql)
- **Problem**: Storing and querying the cleaned HR data efficiently for scalable analysis and dashboarding.
- **Solution**:
  - Created a MySQL database and defined a table structure to store the HR data.
  - Wrote SQL queries to extract insights, such as employee count by department, average salary, and turnover trends.

#### 4. Dashboard Creation (Power BI)
- **Problem**: Presenting insights in an accessible and interactive manner for stakeholders.
- **Solution**:
  - Connected MySQL database to Power BI.
  - Designed an interactive dashboard with custom columns for deeper insights.
  - Created visuals such as bar charts, pie charts, and line graphs for comprehensive reporting.

### Collective Problem Statement
The project addresses the challenge of transforming raw HR data into actionable insights by leveraging Python for cleaning and EDA, SQL for efficient data storage and querying, and Power BI for interactive reporting. This enables data-driven decision-making in HR management.

---

## Workflow

### 1. Data Cleaning
- Handled missing values and inconsistencies.
- Reformatted data for clarity and usability.
- Saved the cleaned data as `HR_Employee_Cleaned_Data.csv`.

### 2. MySQL Integration
- Created a MySQL database (`HR_Employee_DB`).
- Defined a table schema for storing HR data.
- Imported cleaned data into the database.

### 3. Exploratory Data Analysis (EDA)
- Explored key metrics such as:
  - Salary distributions.
  - Employee turnover reasons.
  - Correlations between performance, satisfaction, and other metrics.
- Used Python libraries like Pandas, Seaborn, and Matplotlib for analysis and visualization.

### 4. Power BI Dashboard
- Connected Power BI to the MySQL database.
- Designed an interactive dashboard with:
  - Employee demographics.
  - Department-wise performance.
  - Turnover trends and salary analysis.
  - Custom columns for derived insights.

---

## Key Files

| File Name               | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| `HR_Data_Cleaning.ipynb` | Jupyter Notebook for data cleaning and preprocessing of the HR dataset.     |
| `HR_Analytics_EDA.ipynb` | Jupyter Notebook for exploratory data analysis and visualizations.          |
| `HR_Analytics.sql`       | SQL script for creating the database, table, and extracting key insights.   |
| `HR Dashboard.pbix`      | Interactive dashboard built by connecting Power BI to the MySQL database.   |

---

## Insights Gained
- Departments with the highest employee turnover.
- Correlation between employee satisfaction and performance.
- Salary trends by gender and department.
- Recruitment source effectiveness.
- Tenure distribution and its impact on performance.

---

## Technologies Used

- **Python**: Pandas, Matplotlib, Seaborn, PyMySQL.
- **SQL**: MySQL for database management and queries.
- **Power BI**: Interactive dashboard creation.

---

## How to Run the Project

1. Clone the repository and set up the environment.
2. Install required Python libraries:
   ```bash
   pip install pandas matplotlib seaborn pymysql
   ```
3. Execute the data cleaning script (`HR_Data_Cleaning.ipynb`).
4. Import the cleaned data into MySQL using the SQL script (`HR_Analytics.sql`).
5. Run the EDA script (`HR_Analytics_EDA.ipynb`) for analysis.
6. Connect Power BI to the MySQL database and interact with the dashboard(`HR Dashboard.pbix`) or interact with dashboard with published linked(`https://app.powerbi.com/view?r=eyJrIjoiNzZlNDRiY2UtNmVlOC00MzhjLTgzNzMtOGU0NTE1YmYxMjAzIiwidCI6IjZjZTcwOTA0LTUwOWMtNGI0Zi1iNjc2LTJiMGRlZjA3M2U2YyJ9`).

---

## Conclusion
This project showcases how to integrate Python, SQL, and Power BI to derive actionable insights from HR data, enabling effective decision-making in HR management. The workflow and tools used ensure data accuracy, scalability, and accessibility for stakeholders.

---

## Author
Rafi Qamar  


