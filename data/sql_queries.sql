-- Create table
CREATE TABLE sales (
    OrderID INT,
    Date DATE,
    Region VARCHAR(50),
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price INT,
    Sales INT
);

-- Total sales
SELECT SUM(Sales) AS Total_Sales FROM sales;

-- Sales by region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region;

-- Highest selling product
SELECT Product, SUM(Sales) AS Total
FROM sales
GROUP BY Product
ORDER BY Total DESC;

-- Category-wise sales
SELECT Category, SUM(Sales)
FROM sales
GROUP BY Category;
