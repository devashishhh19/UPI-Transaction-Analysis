# UPI Transaction Analysis

## Project Overview

This project focuses on analyzing UPI transaction data to understand
transaction volume, transaction value, successful and failed transactions,
and sender/receiver transaction patterns.

The project uses Microsoft Excel for data preparation, MySQL for SQL-based
analysis, and Power BI for interactive dashboard creation.

## Project Objective
The main objective of this project is to analyze UPI transactions and
identify useful business insights related to:

- Transaction volume
- Transaction value
- Successful and failed transactions
- Sender and receiver activity
- Monthly transaction trends
- High-value transactions
- Failed transaction patterns

## Tools & Technologies
- Microsoft Excel
- MySQL
- Power BI

## Project Structure
UPI-Transaction-Analysis/

├── README.md

├── SQL/
│   └── UPI_Transaction_Analysis.sql

├── Data/
│   └── Transaction_Cleaned.xlsx

└── PowerBI/
    ├── UPI_Transaction_Dashboard.pbix
    └── dashboard.png

## SQL Analysis

MySQL was used to perform the following analysis:
- Total number of transactions
- Successful vs failed transactions
- Total successful transaction value
- Average transaction amount
- Highest and lowest transaction amount
- Top 5 senders by transaction value
- Top 5 receivers by transaction value
- Transaction count by sender
- Transaction count by receiver
- Monthly transaction trends
- Monthly transaction value
- High-value transactions
- Failed transactions by sender

## Power BI Dashboard

Power BI was used to create an interactive dashboard to visualize:
- Total Transactions
- Total Transaction Amount
- Average Transaction Amount
- Successful Transactions
- Failed Transactions
- Successful vs Failed Transactions
- Monthly Transaction Trend
- Monthly Transaction Amount
- Top 5 Senders
- Top 5 Receivers
- Failed Transactions by Sender

## Dashboard Preview
![UPI Transaction Dashboard](./PowerBI/dashboard.png)

## Key Findings
- The dataset contains 1,000 UPI transactions.
- Transactions were analyzed based on SUCCESS and FAILED status.
- Sender and receiver transaction patterns were analyzed.
- Monthly transaction trends were evaluated.
- High-value transactions were analyzed.
- Failed transaction patterns were identified.

## Team Contributions
This project was completed collaboratively.

### Devashish Johareya
- SQL analysis using MySQL
- Transaction analysis
- Business question development
- Power BI dashboard development
- Data visualization and insights

### [Payal Borse]
- Data preparation and organization in Excel
- Data validation and cleaning
- Power BI dashboard development
- Business insights
Both team members contributed to the overall project development.

## Skills Demonstrated
- SQL
- MySQL
- Microsoft Excel
- Power BI
- Data Analysis
- Data Visualization
- Business Insight Generation

## Conclusion
This project demonstrates an end-to-end data analytics workflow,
starting with data preparation in Excel, followed by SQL-based analysis
using MySQL, and finally presenting the results through an interactive
Power BI dashboard.
