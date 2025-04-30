# Task6
# Sales Trend Analysis Using Aggregations

## Datset: online_sales

## Descriptions of SQL Queries

1. **Extract Month from `order_date`**  
   This step extracts the **month** from the `order_date` field to group sales data by month.

2. **Group Data by Year/Month**  
   The data is grouped by both **year** and **month**. This helps in organizing sales data into time-based periods for further analysis.

3. **Calculate Total Revenue Using `SUM()`**  
   The **total revenue** for each year/month period is calculated using the `SUM()` function on the `total_revenue` field.

4. **Calculate Sales Volume Using `COUNT(DISTINCT transaction_id)`**  
   The **sales volume** is measured by counting the distinct **transaction IDs**, representing the total number of unique sales transactions.

5. **Sort Results by Year and Month**  
   The results are sorted by **year** and **month** in ascending order to ensure chronological order for analysis.

6. **Limit Results for Specific Time Periods**  
   A time range filter is applied to limit the results to a specific date period (e.g., from January 2024 to March 2024).

## Conclusion

These steps help in extracting, grouping, and summarizing the online sales data to gain insights into sales performance over time.
