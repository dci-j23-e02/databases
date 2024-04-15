### The What and The Why of Databases
**What: Definition**
A database is an organized collection of data, generally stored and accessed electronically from a computer system. Databases allow for the storage, retrieval, and manipulation of data.

**Why: the purpose**
Databases are used to support internal operations of organizations and to underpin online interactions with customers and suppliers. They provide a systematic and efficient way of managing data.

**Example**
A company database may include tables for products, employees, and financial records.

**Database Structure**
Databases are structured to facilitate the storage, retrieval, manipulation, and deletion of data in conjunction with various data-processing operations.

**Use case**
A retail business uses a database to manage inventory, track sales, and handle customer information.

**DBMS**
Database Management System (DBMS) is software that interacts with end-users, applications, and the database itself to capture and analyze data.

**Relational Model**
A relational model is a common type of database model that stores data in tables with rows and columns. Each table row represents a data entity, and the columns represent values attributed to that entity.

### Introduction to SQL
**DDL Commands**
Data Definition Language (DDL) commands are used to define, alter, and manage the structure of database objects.
- **Create**: Creates a new table or database.
- **Alter**: Modifies an existing database object.
- **Drop**: Deletes an entire table or database.
- **Truncate**: Removes all records from a table, including all spaces allocated for the records are removed.
- **Rename**: Renames a database object.

### DML Commands
Data Manipulation Language (DML) commands are used for managing data within table objects.
- **Insert**: Adds new rows to a table.
- **Update**: Modifies existing data within a table.
- **Delete**: Removes data from a table.

### DQL Commands
Data Query Language (DQL) commands are used to fetch data from a database.
- **Select**: Retrieves data from one or more tables.

**Data types**
Defines the type of data that can be stored in a column of a table.

**Primary Key and Foreign Key**
- **Primary Key**: A column or group of columns used to uniquely identify each row in a table.
- **Foreign Key**: A column or group of columns in one table that uniquely identifies a row of another table or the same table.

**Views in PostgreSQL**
A view is a virtual table in PostgreSQL that is used to represent the results of a complex query operation as if it were a regular table.

### Introduction to JDBC
**Why and Where we use JDBC?**
JDBC (Java Database Connectivity) is an API in Java for connecting and executing queries with the database. JDBC is used in Java applications to interact with databases for robust data management.

**JDBC Architecture**
Includes several layers, including the JDBC API, JDBC Driver Manager, JDBC Test Suite, and JDBC-ODBC Bridge.

**Type of JDBC Drivers**
1. **Type 1**: JDBC-ODBC bridge driver
2. **Type 2**: Native-API/partly Java driver
3. **Type 3**: Network Protocol/all-Java driver
4. **Type 4**: Native-protocol/all-Java driver

### Advanced Data Types
**Subqueries**
A subquery is a query nested inside another query. Used to perform operations that require multiple queries into one.

### Aggregate Functions
Functions that perform a calculation on a set of values and return a single value. Often used with the **GROUP BY** and **HAVING** clauses to form groups of data and filter them.

### Database Consistency
**CAP Theorem**
States that a distributed database system can only have two of the following three properties: Consistency, Availability, and Partition tolerance.

### ACID Properties
Defines transaction properties which guarantee data validity despite errors, power failures, and other mishaps.
- **Atomicity**: The whole transaction is processed or none of it is.
- **Consistency**: Ensures the database remains in a consistent state after any transaction.
- **Isolation**: Ensures transactions are securely and independently processed.
- **Durability**: Ensures that once a transaction has been committed, it will remain so.

### Serialization, Rollback, and Locking
- **Serialization**: Ensures transactions occur in a safe sequence.
- **Rollback**: Reverts the database to a previous state in case of an error.
- **Locking**: Prevents multiple users from updating the same data concurrently.

### Recap – Start RDBMS
**Data Caching in RDBMS**
Improves the performance by storing recent or frequently accessed data in faster storage systems.

**Indexes**
Improves the speed of data retrieval operations on a database table at the cost of additional writes and storage space to maintain the index data structure.
- **Types of Indexes**: Single-Column, Multi-Column.

**Unique, Partial, Implicit**
- **Unique Index**: Ensures that all values in a column are different.
- **Partial Index**: An index built on a subset of a table.
- **Implicit Index**: Automatically created indexes by the database system (e.g., on a primary key).

**Understand “EXPLAIN” command**
Used in SQL to display the execution plan of a query.

**Use of Combined Queries and Subqueries**
Enhances the flexibility and complexity of SQL queries to perform sophisticated data analysis.
