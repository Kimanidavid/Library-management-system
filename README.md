# Library Management System – Database Setup Guide

## Overview
This guide explains how to set up and populate the Library Management System relational database using MySQL. You’ll create all database tables and add initial sample data.

---

## Prerequisites
- **MySQL Server** installed and running (version 5.7+ recommended)
- Access to the MySQL CLI (`mysql`) or a MySQL GUI tool (e.g., MySQL Workbench, phpMyAdmin)
- **Schema file:** `library_db.sql`
- **Data file:** `library_data.sql`

---

## Step 1: Create the Database and Tables

1. **Open your MySQL client** (CLI or GUI).
2. **Run the schema script**:
    - **Command Line:**
      ```
      mysql -u yourusername -p < library_db.sql
      ```
    - **MySQL Workbench / phpMyAdmin:**
      - Open `library_db.sql`, select all, and execute.

    > This will create a database named `library_db` and all required tables and relationships.

---

## Step 2: Insert Sample Data

1. **Run the data script:**
    - **Command Line:**
      ```
      mysql -u yourusername -p library_db < library_data.sql
      ```
    - **MySQL Workbench / phpMyAdmin:**
      - Switch to the `library_db` database.
      - Open `library_data.sql`, select all, and execute.

    > This will populate the tables with sample authors, books, members, staff, copies, loans, and reservations.

---

## Step 3: Verify Your Setup

- **Login to the MySQL shell:**
      ```mysql -u yourusername -p```

- **View sample data from key tables:**
      ```
SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM members;
        ```

---

## Notes

- **Edit or expand sample data:**  
You can change or add more records by modifying and running additional `INSERT` statements in `library_data.sql`.

- **To reset:**  
Drop the database and re-run both scripts:
    ```DROP DATABASE IF EXISTS library_db;```


- **Schema constraints:**  
All constraints (such as primary keys, foreign keys, and unique fields) are enforced by the schema for robust data integrity.

---

## Troubleshooting

- **If you get errors about existing tables**, drop the database first:
     ```DROP DATABASE IF EXISTS library_db;```

- **Permission issues:**  
Make sure your MySQL user has privileges to create databases and tables.

---

**Your Library Management System database is now ready. You can connect your application or run further SQL queries to manage library data!**
