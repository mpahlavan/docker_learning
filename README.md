# How to Use Docker Compose for PostgreSQL: Create Tables and Insert Data via Command Line
##### This guide explains how to leverage Docker Compose to run PostgreSQL, create tables, and insert data, all through the command line. Below are step-by-step instructions:

## Running PostgreSQL, Creating Tables, and Inserting Data
### Using make Commands
1- Open a terminal in VSCode.

2- Run the following commands:

- make up: Starts the PostgreSQL container.
- make init-db: Initializes the database by creating tables.
- make show-mytable: Displays the contents of the mytable table.

### Alternative Commands for Direct Execution in the Terminal
1- If you prefer direct execution in the terminal, use the following commands:

- docker-compose up -d: Starts the PostgreSQL container.

- Connect to a Database:
```
psql -h hostname -p portnumber -U username -d database
```

- List Databases:
```
\l
```

- Connect to a Different Database:
```
\c new_database
```

- List Tables:
```
\dt
```

- Create a New Table:
```
CREATE TABLE table_name ( id SERIAL PRIMARY KEY, name VARCHAR(255), age INT );
```
- Insert into Table:
```
INSERT INTO table_name (name, age) VALUES ('John Doe', 25), ('Jane Smith', 30), ('Bob Johnson', 22);
```
- Describe a Table:
```
\d table_name
```
-Execute SQL Query:
```
SELECT * FROM table_name;
```
- Exit psql:
```
\q
```
### Writing Commands Directly in the Terminal
If you prefer to execute everything directly in your terminal, use the following commands:
```
psql -h hostname -U username -d postgres -c "CREATE DATABASE new_database;"
psql -h hostname -U username -p portnumber -d new_database -c "CREATE TABLE mytable (id SERIAL PRIMARY KEY, name VARCHAR(255));"
psql -h hostname -U username -p portnumber -d new_database -c "INSERT INTO mytable (name) VALUES ('John Doe');"
psql -h hostname -U username -d new_database -c "\dt"
psql -h hostname -U username -d new_database -c "SELECT * FROM mytable;"
psql -h hostname -U username -d postgres -c "DROP DATABASE database_name;"
```
Replace hostname, username, new_database, and database_name with your actual PostgreSQL server details and database names. Adjust SQL statements as needed for your specific use case.
