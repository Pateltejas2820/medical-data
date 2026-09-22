# Project Documentation

## Title
Medical Patient Data Analysis Using R

## Introduction
This project demonstrates basic medical patient data analysis using R. The sample dataset contains patient age, gender, blood pressure, cholesterol, glucose level, and health status.

## Data Importing
The project imports `medical_data.csv` using `read.csv()` and displays initial records using `head()`.

## Data Preprocessing and Cleaning
The script uses:
- `str()` to inspect data structure
- `colSums(is.na())` to check missing values
- `sum(duplicated())` to check duplicate records
- `summary()` for descriptive summaries

## Statistical Analysis
The project calculates mean, median, variance, and standard deviation where applicable.

## Graphical Analysis
The script creates:
1. Gender distribution pie chart
2. Health status bar chart
3. Age histogram
4. Blood pressure histogram
5. Cholesterol histogram
6. Glucose histogram
7. Age boxplot
8. Blood pressure boxplot
9. Age vs blood pressure scatter plot
10. Age vs cholesterol scatter plot
11. Health status by gender bar chart

## Findings
The source project contains 15 patient records. Missing and duplicate values were checked, descriptive statistics were calculated, and multiple graphs were used to understand categorical and numerical data.

## Conclusion
The project demonstrates how R can be used for basic data importing, cleaning, statistical analysis, and visualization.

## Academic Disclaimer
The sample analysis is for academic demonstration only and should not be considered medical diagnosis or clinical advice.
