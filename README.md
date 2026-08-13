# 📊 Sales Analysis SQL Project

## 📌 Project Overview

This project analyzes sales data using SQL to identify revenue trends, product performance, customer behavior, salesperson performance, and order patterns.

The project uses a relational database containing customers, products, employees, orders, and order items.

The goal is to demonstrate practical SQL and data analysis skills through real-world business questions.

---

## 🎯 Business Objectives

This project answers the following business questions:

- What is the total revenue generated?
- How does revenue change month by month?
- Which products generate the most revenue?
- Which salesperson generates the highest revenue?
- Which cities generate the most revenue?
- Which customers are the highest-value customers?
- What is the order completion/cancellation rate?
- What is the Average Order Value (AOV)?
- Which department generates the most revenue?
- Which orders have the highest revenue?

---

## 🗄️ Database Schema

The database contains five relational tables:

### Customers
Contains customer information such as:

- Customer ID
- Customer Name
- City
- State
- Signup Date

### Products
Contains product information such as:

- Product ID
- Product Name
- Category
- Price

### Employees
Contains salesperson information such as:

- Employee ID
- Employee Name
- Department
- City

### Orders
Contains order-level information such as:

- Order ID
- Customer ID
- Employee ID
- Order Date
- Order Status

### Order Items
Contains individual products included in each order:

- Order Item ID
- Order ID
- Product ID
- Quantity
- Unit Price

### Relationships

```text
Customers
    │
    │ customer_id
    ▼
Orders
    │
    │ order_id
    ▼
Order Items
    │
    │ product_id
    ▼
Products

Employees
    │
    │ employee_id
    ▼
Orders
