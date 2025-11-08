# NORTHWIND-Data-Warehouse
A simplified Data Warehouse project based on the Northwind database using Medallion Architecture (Bronze–Silver–Gold) for sales and purchase analysis.
# 🏢 NORTHWIND Data Warehouse

## 📘 Project Overview
This project is a simplified **Data Warehouse** built using the **Northwind dataset**.  
It demonstrates how to apply the **Medallion Architecture (Bronze–Silver–Gold)** to design a scalable and organized data pipeline for **sales and purchase analysis**.

---

## 🎯 Objectives
- Design and implement a small-scale **Data Warehouse**.
- Apply **Medallion Architecture** principles (Bronze, Silver, Gold).
- Integrate multiple data sources (sales and purchase data).
- Create clean and reliable analytical tables for reporting.

---

## 🧾 Data Sources
The project uses multiple CSV files inspired by the Northwind database:

| File Name | Description |
|------------|-------------|
| `customers.csv` | Contains customer details such as name, country, and segment. |
| `employees.csv` | Information about employees responsible for handling orders. |
| `orders.csv` | Main table for sales orders data. |
| `order_details.csv` | Detailed information about products within each order. |
| `products.csv` | List of products and their categories. |
| `purchase_orders.csv` | Data related to purchase transactions. |
| `purchase_order_details.csv` | Details of each purchase order item. |

---

## 🧱 Medallion Architecture Layers

### 🥉 Bronze Layer
- Stores **raw CSV data** exactly as received from the source.
- Minimal transformation.
- Acts as a historical record of the source data.

### 🥈 Silver Layer
- Performs **data cleaning, standardization, and joins**.
- Handles missing values, inconsistent formatting, and duplicate records.

### 🥇 Gold Layer
- Contains **business-ready tables** used for analytics and reporting.
- Includes fact and dimension tables for sales and purchase performance dashboards.

---


---

## 📊 Technologies Used
- **SQL Server** (or any RDBMS)
- **T-SQL / Stored Procedures**
- **Medallion Architecture**
- (Optional) Power BI or Excel for visualization

---

## 🚀 Future Improvements
- Automate data loading using **SSIS or Python scripts**.  
- Add **data validation checks** in the Silver layer.  
- Build a **Power BI dashboard** for sales & purchase insights.  

---

## 👨‍💻 Author
**Mostafa Ahmed**  
* Aspiring Data Engineer*  
📧 [Contact via LinkedIn or Email]

---



