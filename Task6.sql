CREATE DATABASE sales_data;
USE sales_data;
CREATE TABLE online_sales (
    Transaction_ID INT,
    Date DATE,
    Product_Category VARCHAR(255),
    Product_Name VARCHAR(255),
    Units_Sold INT,
    Unit_Price DECIMAL(10, 2),
    Total_Revenue DECIMAL(10, 2),
    Region VARCHAR(255),
    Payment_Method VARCHAR(255)
);
SHOW VARIABLES LIKE 'secure_file_priv';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Online Sales Data.csv'
INTO TABLE online_sales
FIELDS TERMINATED BY ','    
ENCLOSED BY '"'            
LINES TERMINATED BY '\n'    
IGNORE 1 LINES               
(Transaction_ID, Date, Product_Category, Product_Name, Units_Sold, Unit_Price, Total_Revenue, Region, Payment_Method);

SELECT 
    EXTRACT(MONTH FROM Date) AS month
FROM 
    online_sales;
    
SELECT 
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date);

SELECT 
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    SUM(Total_Revenue) AS total_revenue
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date);

SELECT 
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    COUNT(DISTINCT Transaction_ID) AS total_orders
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date);
SELECT 
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    SUM(Total_Revenue) AS total_revenue,
    COUNT(DISTINCT Transaction_ID) AS total_orders
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date)
ORDER BY 
    year, month;

SELECT 
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    SUM(Total_Revenue) AS total_revenue,
    COUNT(DISTINCT Transaction_ID) AS total_orders
FROM 
    online_sales
WHERE 
    Date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY 
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date)
ORDER BY 
    year, month;


