# \# 🛒 E-Commerce Backend Database (SQL)

# 

# This project simulates a backend relational database for an e-commerce platform. It is designed to manage customers, products, and complex order processing using MySQL.

# 

# \## 🏗 Database Architecture (The "Many-to-Many" Logic)

# 

# The core technical challenge of this project is handling the relationship between \*\*Orders\*\* and \*\*Products\*\*:

# \* A single order can contain multiple different products.

# \* A single product can appear in multiple different orders.

# 

# To resolve this \*\*Many-to-Many\*\* relationship, a bridge table named \*\*`OrderItems`\*\* was implemented. This structure allows for:

# 1\.  Scalable order details.

# 2\.  Historical price tracking (using `unit\_price` snapshot).

# 3\.  Efficient inventory analysis.

# 

# \## 📂 Project Structure

# 

# \* \*\*`schema.sql`\*\*: Defines the 4-table structure (`Customers`, `Products`, `Orders`, `OrderItems`) with Primary and Foreign Key constraints.

# \* \*\*`seeds.sql`\*\*: Populates the database with realistic sample data (Customers, Products, and connected Orders).

# \* \*\*`queries.sql`\*\*: Contains advanced SQL scripts for business analytics:

# &nbsp;   \* Generating detailed order receipts.

# &nbsp;   \* Calculating Customer Lifetime Value (CLV).

# &nbsp;   \* Identifying best-selling products.

# 

# \## 🚀 Key SQL Concepts Demonstrated

# 

# \* \*\*Normalization:\*\* Designed tables to minimize redundancy.

# \* \*\*Complex JOINs:\*\* Connecting 3+ tables to retrieve meaningful data (e.g., `Customers` -> `Orders` -> `OrderItems`).

# \* \*\*Aggregate Functions:\*\* Using `SUM()`, `COUNT()`, and `GROUP BY` for financial reporting.

# \* \*\*Bridge Tables:\*\* Handling many-to-many relationships professionally.

# 

# \## 👨‍💻 How to Use

# 

# 1\.  Clone the repository:

# &nbsp;   ```bash

# &nbsp;   git clone \[https://github.com/omannd/mini-ecommerce-sql.git](https://github.com/omannd/mini_ecommerce_sql.git)

# &nbsp;   ```

# 2\.  Open your SQL editor (MySQL Workbench, DBeaver, etc.).

# 3\.  Run \*\*`schema.sql`\*\* to build the tables.

# 4\.  Run \*\*`seeds.sql`\*\* to insert sample orders and customers.

# 5\.  Execute \*\*`queries.sql`\*\* to view the analysis reports.

# 

# 

