# Customer Personality Analysis – Data Cleaning

## Dataset Source
The dataset is sourced from Kaggle: [Customer Personality Analysis Dataset](https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis)

## Project Overview
This project focuses on the data cleaning and preprocessing of the **Customer Personality Analysis** dataset. The objective was to prepare the raw marketing campaign data for further analysis by addressing missing values, standardizing formats, and ensuring overall consistency.

## Dataset Description
The dataset contains information about customers acquired through a marketing campaign, including demographic details, spending habits, and campaign responses.

### Columns Overview:
- `ID`: Customer's unique identifier  
- `Year_Birth`: Customer's birth year  
- `Education`: Level of education  
- `Marital_Status`: Marital status  
- `Income`: Yearly household income  
- `Kidhome`: Number of children in the household  
- `Teenhome`: Number of teenagers in the household  
- `Dt_Customer`: Date of customer enrollment  
- `Recency`: Days since last purchase  
- `MntWines`, `MntFruits`, `MntMeatProducts`, `MntFishProducts`, `MntSweetProducts`, `MntGoldProds`: Amount spent on various product categories over two years  
- `NumDealsPurchases`: Number of purchases using discounts  
- `AcceptedCmp1` to `AcceptedCmp5`: Accepted offers from different marketing campaigns  
- `Response`: Response to the most recent campaign  
- `NumWebPurchases`, `NumCatalogPurchases`, `NumStorePurchases`, `NumWebVisitsMonth`: Purchase behavior across different channels  
- `Complain`: Whether the customer has lodged a complaint in the last two years  
- `Z_CostContact`, `Z_Revenue`: Cost and revenue for campaigns (constant values, not used in analysis)  

## Data Cleaning Steps

### 1. Loaded the Dataset
- Imported the raw dataset from a `.csv` file using tab-separated values (`\t`) into a Pandas DataFrame.

### 2. Identified and Handled Missing Values
- Found 24 missing values in the `Income` column.
- **Action Taken**: Dropped rows with missing `Income` values.
- Verified that the dataset had no further missing values.

### 3. Checked and Removed Duplicates
- Verified duplicates using `df.duplicated().sum()`.
- **Result**: No duplicate rows were found.

### 4. Standardized Column Names
- Converted all column names to lowercase.
- Replaced spaces with underscores to improve readability and consistency.

### 5. Converted Date Columns
- Converted the `Dt_Customer` column to `datetime` format using day-first format.
- Ensured all date values were valid and consistent.

### 6. Standardized Categorical Text Values
- Cleaned up text fields such as `Education` and `Marital_Status`.
- Stripped leading/trailing spaces and standardized capitalization (title case).

### 7. Checked and Adjusted Data Types
- Ensured correct data types for all columns:
  - `Income` as float
  - `Year_Birth` as integer
  - Campaign-related flags as integers
  - Dates as `datetime` objects

### 8. Saved the Cleaned Dataset
- Exported the cleaned dataset to a new file: `cleaned_marketing_campaign.csv`.

## Tools and Libraries Used
- **Python**
  - pandas
  - numpy
- **Jupyter Notebook**

## Project Files
- `marketing_campaign.csv`: Original raw dataset
- `cleaned_marketing_campaign.csv`: Final cleaned dataset
- `Task1.ipynb`: Jupyter notebook with all preprocessing steps
