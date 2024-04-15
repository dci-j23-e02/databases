### The What and The Why of Databases
**What: Definition**
A database is an organized collection of data stored and accessed electronically. It supports electronic storage and manipulation of data, making it easier to organize, manage, and retrieve information efficiently.

**Why: The Purpose**
Databases are used to store vast amounts of information in a structured format, allowing for quick access, efficient queries, and data integrity. They are essential for managing data across various applications, from business management systems to social networks.

**Example**
A university database storing information about students, courses, and faculty.

**Database Structure**
Databases typically consist of tables that include rows and columns. Each table represents a different type of entity, and each row in a table represents a record.

**Use Case**
Online retail stores use databases to manage inventory, customer data, and transaction records.

**DBMS**
A Database Management System (DBMS) is software that handles the storage, retrieval, and updating of data in a database. Examples include MySQL, PostgreSQL, and Oracle.

**Relational Model**
The relational model means data is structured in tables (relations), and these tables relate to each other through foreign keys.

### Introduction to SQL
**DDL Commands**
Data Definition Language (DDL) commands are used to define or modify the structure of a database.

- **CREATE**: Creates a new table or database.
  ```sql
  CREATE TABLE students (id INT, name VARCHAR(100));
  ```
- **ALTER**: Modifies an existing database object.
  ```sql
  ALTER TABLE students ADD COLUMN age INT;
  ```
- **DROP**: Deletes an entire table or database.
  ```sql
  DROP TABLE students;
  ```
- **TRUNCATE**: Deletes all rows in a table without deleting the table.
  ```sql
  TRUNCATE TABLE students;
  ```
- **RENAME**: Renames a database object.
  ```sql
  ALTER TABLE students RENAME TO undergraduates;
  ```

### DML Commands
Data Manipulation Language (DML) commands are used to manipulate data in an existing database.

- **INSERT**: Adds new rows to a table.
  ```sql
  INSERT INTO students (id, name, age) VALUES (1, 'Alice', 21);
  ```
- **UPDATE**: Modifies existing data within a table.
  ```sql
  UPDATE students SET age = 22 WHERE id = 1;
  ```
- **DELETE**: Removes rows from a table.
  ```sql
  DELETE FROM students WHERE id = 1;
  ```

### DQL Commands
Data Query Language (DQL) is used to query data from a database.

- **SELECT**: Retrieves data from a database.
  ```sql
  SELECT * FROM students WHERE age > 20;
  ```
- **Data Types**: Common data types include INTEGER, VARCHAR, DATE, BOOLEAN.
- **Primary Key and Foreign Key**: Unique identifiers for rows in a table. Foreign keys link rows between tables.
- **Views in PostgreSQL**: Virtual tables created by a query.
  ```sql
  CREATE VIEW grad_students AS SELECT * FROM students WHERE degree = 'MSc';
  ```

### Introduction to JDBC
**Why and Where We Use JDBC?**
JDBC (Java Database Connectivity) is an API in Java for connecting and executing queries against databases. It is used in Java applications to interact with databases for CRUD operations.

**JDBC Architecture**
JDBC works on a layered architecture which includes:
- JDBC API: Provides application-to-JDBC Manager connection.
- JDBC Driver Manager: Manages a list of database drivers.
- JDBC Test Suite: Ensures the JDBC driver will run the program.
- JDBC-ODBC Bridge: Provides JDBC access via ODBC drivers.

**Type of JDBC Drivers**
1. Type 1: JDBC-ODBC bridge
2. Type 2: Native-API driver
3. Type 3: Network Protocol driver
4. Type 4: Thin driver (pure Java driver for database middleware)

### Advanced Data Types
**Subqueries**: Queries embedded within another SQL query.
```sql
SELECT * FROM students WHERE id IN (SELECT student_id FROM scholarships);
```

### Aggregate Functions
**GROUP BY and HAVING statements**
Used to group rows that have the same values in specified columns and to filter data by conditions on groups.
```sql
SELECT COUNT(*), department FROM students GROUP BY department HAVING COUNT(*) > 10;
```

### Database Consistency
**CAP Theorem**
States that a distributed database system can only simultaneously provide two of the following three guarantees: Consistency, Availability, and Partition tolerance.

### ACID Properties
Defines transaction properties which guarantee data validity despite errors, power failures, etc.
- **Atomicity**: Entire transaction is processed or none of it is.
- **Consistency**: Ensures data meets all validation rules.
- **Isolation**: Transactions are processed independently.
- **Durability**: Once a transaction is committed, it remains so.

### Serialization, Rollback, and Locking
- **Serialization**: Ensures transactions occur in a safe order.
- **Rollback**: Reverts the database to a previous state if a transaction fails.
- **Locking**: Prevents other transactions from accessing the same data simultaneously.

### Recap – Start RDBMS
**Data Caching in RDBMS**
Improves performance by storing recent or frequently accessed data in faster storage systems.

**Indexes**
Improves the speed of data retrieval operations by creating additional data structures.
- **Types of Indexes**: Single-Column, Multi-Column.

**Unique, Partial, Implicit**
- **Unique Index**: Ensures all values in a column are different.
- **Partial Index**: Indexes a portion of the table.
- **Implicit Index**: Automatically created by the database when defining a primary key.

**Understand “EXPLAIN” command**
Used to display the execution plan of a SQL statement.
```sql
EXPLAIN SELECT * FROM students;
```

**Use of Combined Queries and Subqueries**
Allows complex data retrieval by combining multiple queries into a single query using operators like UNION, INTERSECT, or by embedding queries within other queries.
