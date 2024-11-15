# Data Warehousing Lab 2
# Gayatri Patil and Shweta Shinde

## Project Overview

This project is part of the Data Warehousing course at San Jose State University. The objective of Lab 2 is to demonstrate the process of data loading, data transformation, and advance calculation using Apache Airflow, Docker, dbt Snowflake.

**Step 1**
-ETL focuses on establishing a data pipeline that connects a source database, processes the data, and loads it into a Snowflake data warehouse for analysis using Docker and Airflow.

**Step2**
-ELT focuses on establishing a data pipeline that connects a Snowflake database, perform advance calculation, and create new tables of the calculation using dbt, Airflow.

**Step3**
-Perform Visualization on tableau using the Snowflake table.


## Problem Statement

In the context of this lab, the primary challenge is to build a robust data pipeline that effectively handles data extraction, transformation, and loading (ETL) from a source API into Snowflake. Additionally, we aim to perform time series Advance Calculation on stock prices and enhance our dataset by creating lag and difference columns to better analyze trends.

## Procedures Followed

1. **Environment Setup**
   - Installed necessary libraries and set up the development environment for Apache Airflow and Snowflake.

2. **Data Extraction**
   - Connected to the source API(https://www.alphavantage.co/documentation/) and extracted the relevant datasets required for analysis.
   - For this Lab 1 we are using Starbucks(SBUX) and New York Times(NYT) stock data.

3. **Data Transformation**
   - Implemented data cleaning and transformation processes to prepare the data.

4. **Data Loading**
   - Loaded the transformed data into the Snowflake main table using Apache Airflow DAGs using incremental load.
   - 1st load data in staging table DEV.STOCK.STOCK_PRICE_STAGE and then in main table DEV.STOCK.STOCK_PRICE_ANALYSIS

5. **Advance Calculation**
   - Perform MACD and RSI calculation on the data.
  
6. **Results**
   - Summarized the results of the forecasting model and provided insights based on the analysis.

7. **Data Visulization**
   - Create plots for better understanding of data and stock trends.
  
## Python Files Overview

### 1. `stock_pipeline_ETL_Lab2.py`
- **Purpose**: Extracts stock data from an external API and loads it into Snowflake.
- **Key Functions**:
  - `return_last_90d_price()`: Fetches historical and current stock price data.
  - `create_load_incremental()`: Loads the extracted data into a Snowflake staging table and then main table(incremental load).

### 2. `built_etl_with_dbt.py`
- **Purpose**: Perform advance calculation like MACD and RSI.
- **Key Functions**:
  - `dbt run`: The bash operator will run dbt run on command line to trigger the calcualtion on snowflake and create 2 new tables.
  - `dbt snapshot`: The bash operator will run dbt snapshot on command line and create a snapshot of the given table.
  - `dbt test`: The bash operator will run dbt test on command line to perform given test on the given table.
 
### 3. `lab`
- **Purpose**: dbt folder with holds the code to perform advance calculation.
- **Key Functions**:
- `models`: It contains Input Output folders which has CTE code to perform RSI and MACD calculations.
- `snapshot`: It conatian the detials about the tables of which we need to take snapshot.
- `test`:  It conatian the detials about the tables of which we perform test like "not null", "unique"

### 4. `Stock_Analysis_Dashboard.twb`
- **Purpose**: To plot graphs on tableau using the data loading in the tables.
- **Plots**:
  - **Histogram Gragh**
  - **Bar Plot**
  
## Conclusion

The lab successfully demonstrated the end-to-end process of building a data pipeline, from data extraction to loading into a Snowflake data warehouse. Perform advance calculation and create new table for MACD and RSI. The plots implemention gives a clear picture of correlation of the stocks and how the trent changes.
This experience enhanced our understanding of data warehousing concepts and practical application in real-world scenarios.

## Acknowledgments

- [Apache Airflow](https://airflow.apache.org/) for orchestration.
- [Snowflake](https://www.snowflake.com/) for data warehousing capabilities.
