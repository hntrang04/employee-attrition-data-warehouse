# ANALYZING EMPLOYEE TURNOVER AND PREDICTING ATTRITION

<!-- Core Technologies -->
[![Visual Studio](https://img.shields.io/badge/Visual_Studio-IDE-5C2D91?logo=visualstudio&logoColor=white)](https://visualstudio.microsoft.com/)
[![SQL Server](https://img.shields.io/badge/SQL_Server-Data_Warehouse-CC2927?logo=microsoft-sql-server&logoColor=white)](https://www.microsoft.com/en-us/sql-server)
[![SSIS](https://img.shields.io/badge/SSIS-ETL-4479A1?style=flat&logo=microsoft-sql-server&logoColor=white)]()
[![SSAS](https://img.shields.io/badge/SSAS-OLAP_Cube-0078D4?style=flat&logo=microsoft-sql-server&logoColor=white)]()
[![Excel](https://img.shields.io/badge/Excel-Spreadsheet-217346?logo=microsoftexcel&logoColor=white)](https://www.microsoft.com/en-us/microsoft-365/excel)
[![Power BI](https://img.shields.io/badge/Power_BI-Visualization-F2C811?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![Python](https://img.shields.io/badge/Python-Data_Mining-3776AB?logo=python&logoColor=white)](https://www.python.org/)

<!-- Meta -->
[![Status](https://img.shields.io/badge/Status-Completed-success)]()



## 1. Overview
Employee attrition is a critical challenge for organizations, impacting recruitment costs and overall productivity. This project delivers an **End-to-End Data Warehousing and Analytics Solution** designed to analyze employee turnover data and identify key influencing factors such as salary, satisfaction levels, and workload.

The project utilizes the **[Employee Attrition Data Prediction](https://www.kaggle.com/datasets/mrsimple07/employee-attrition-data-prediction)** dataset sourced from Kaggle.

The solution covers the entire data lifecycle:
1.  **Data Warehousing:** Designing a Star Schema to centralize data.
2.  **ETL:** Automating data extraction, transformation, and loading using **SSIS**.
3.  **OLAP Analysis:** Building multidimensional cubes for complex querying using **SSAS** and **MDX**.
4.  **Reporting:** Visualizing insights via **Power BI, Excel, and Google Data Studio**.
5.  **Prediction:** Applying Machine Learning algorithms (**KNN, Random Forest, XGBoost**) to predict attrition risk.

📺 **[Project Demo](https://youtube.com/playlist?list=PLcG6b3ts2Bi18nhDEc0gG04NELpq1_64r&si=SGu1avFn9b52zhxB)**

## 2. Project Objectives

*   **Data Warehouse Design:** Construct a unified data repository using the **Star Schema** methodology to support efficient querying.
*   **ETL Implementation:** Utilize **SSIS** within **Visual Studio** to clean, transform, and load raw data from Excel into SQL Server.
*   **Multidimensional Analysis:** Develop **SSAS** cubes to perform advanced aggregations and slicing/dicing of data (e.g., Attrition by Dept, Salary, Tenure).
*   **Business Intelligence:** Create interactive dashboards to answer business questions regarding employee satisfaction and retention.
*   **Predictive Modeling:** Leverage Python to mine data patterns and build classification models to predict potential employee turnover.

## 3. Project Structure

```
├── Data/
│ ├── data_original/     # Raw employee attrition dataset
│ └── data_preprocessed/ # Cleaned data and data dictionary
│
├── Database/
│ ├── employee_attrition_wh.mdf # Data warehouse database
│ └── star_schema_diagram.png   # Star schema design
│
├── SSIS/
│ ├── employee_attrition_ssis/ # ETL project and packages
│ ├── ExtractDB.sql
│ └── SSIS_Scripts.sql
│
├── SSAS/
│ ├── employee_attrition_ssas/ # OLAP cube project
│ └── MDX_queries.mdx          # OLAP queries
│
├── REPORTS/
│ ├── REPORT_EXCEL.xlsx
│ ├── REPORT_POWER_BI.pbix
│ └── REPORT_GOOGLE_DATA_STUDIO.pdf
│
├── DATA_MINING/
│ ├── Preprocessing/ # Data preprocessing notebooks
│ ├── KNN/           # KNN model
│ ├── RandomForest/  # Random Forest model
│ └── XGBoost/       # XGBoost model
│
├── docs/
│ └── Report_Final.pdf # Final project report
│
└── README.md
```



## 4. Methodology

### 4.1. Data Warehouse Schema
The system utilizes a **Star Schema** architecture centered around the `Fact` table, connected to 5 dimension tables:
*   **Fact Table:** Stores metrics like Salary, Satisfaction Level, and Attrition status.
*   **Dimensions:** `Dim_Employee` (Demographics), `Dim_Role` (Dept/Job Title), `Dim_Salary` (Salary Brackets), `Dim_Years` (Tenure), `Dim_Monthly_Hours` (Workload).

### 4.2. ETL Process (SSIS)
*   **Extraction:** Data is ingested from raw CSV/Excel files.
*   **Transformation:**
    *   Data cleaning and handling missing values.
    *   Deriving new attributes: `Salary_Bracket` (Low, Medium, High, Very High) and `Overworked` status.
    *   Sorting and mapping data types.
*   **Loading:** Data is loaded into the SQL Server Data Warehouse with foreign key constraints managed via SQL tasks.

### 4.3. OLAP & MDX (SSAS)
*   Defined **Measures** (e.g., Count of Attrition, Average Salary) and **Hierarchies** (e.g., Department -> Job Title).
*   Executed **20 complex MDX queries** to answer specific business questions, such as:
    *   "List top 5 employees with the highest salary."
    *   "Attrition rate for employees working >200 hours/month."
    *   "Number of employees with satisfaction < 0.5 by department."

### 4.4. Data Mining
Applied preprocessing techniques (PCA, Standardization) and trained three models to predict attrition:
*   **K-Nearest Neighbors (KNN)**
*   **Random Forest**
*   **XGBoost**



## 5. Key Results

*   **Salary & Tenure:** A strong inverse correlation exists between salary and attrition. Employees in the "Low" salary bracket have the shortest average tenure (5.43 years), while those in the "Very High" bracket stay significantly longer.
*   **The "Overworked" Factor:** Excessive workload (>200 hours/month) is a primary driver of attrition, particularly impacting the **Sales** and **Finance** departments.
*   **Satisfaction Warning:** A satisfaction score below 0.5 is a critical indicator of turnover risk (246 cases identified).
*   **Model Performance:** **XGBoost** and **Random Forest** demonstrated superior accuracy compared to KNN in predicting attrition, successfully capturing complex non-linear relationships in the data.


## 6. Academic Information

- **University:** University of Information Technology – VNU HCMC  
- **Faculty:** Faculty of Information Systems  
- **Course:** Data Warehouse and OLAP (IS217.P12)
- **Instructor:** MSc. Nguyễn Thị Kim Phụng
- **Team members:**
    *   Giang Mỹ Tiên
    *   Huỳnh Ngọc Trang


## 7. My Contribution

- Implemented the Data Warehouse star schema and ETL pipelines using SSIS
- Built and deployed SSAS OLAP cube and executed complex MDX queries
- Developed interactive Power BI dashboards
- Co-implemented machine learning models (KNN, Random Forest, XGBoost) for attrition prediction
- Contributed to the final report and presentation materials

## 8. Contact

**Huỳnh Ngọc Trang**  
- **Email:** hntrang04@gmail.com  
- **LinkedIn:** [Trang Huynh Ngoc](https://www.linkedin.com/in/trang-huynh-ngoc-18128b353/)


