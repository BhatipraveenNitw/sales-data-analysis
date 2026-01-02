import pandas as pd
import matplotlib.pyplot as plt

# Load data
df = pd.read_csv("data/sales_data.csv")

# Display dataset
print("Dataset Preview:")
print(df.head())

# Total sales
total_sales = df['Sales'].sum()
print("\nTotal Sales:", total_sales)

# Sales by category
category_sales = df.groupby('Category')['Sales'].sum()
print("\nSales by Category:")
print(category_sales)

# Sales by region
region_sales = df.groupby('Region')['Sales'].sum()

# Visualization
plt.figure(figsize=(8,5))
region_sales.plot(kind='bar')
plt.title("Sales by Region")
plt.xlabel("Region")
plt.ylabel("Total Sales")
plt.show()
