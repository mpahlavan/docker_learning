# How to use docker compose to run postgres and create tables and insert into by command line

## How to run postgres and create table and insert into:
### Open a terminal in vscode and write below commands:
- make up
- make init-db
- make show-mytable

### if you want to create snd insert directly in terminal follow these commands instead:
- docker-compose up -d
- Connect to a Database:
    - psql -h hostname -U username -d database
- List Databases:
    - \l
- Connect to a Different Database:
    - \c new_database
- List Tables:
    - \dt
- Create New Table: 
    - CREATE TABLE table_name ( id SERIAL PRIMARY KEY, name VARCHAR(255), age INT );
- Insert into Table:
    - INSERT INTO table_name (name, age) VALUES ('John Doe', 25), ('Jane Smith', 30), ('Bob Johnson', 22);
- Describe a Table:
    - \d table_name
- Execute SQL Query:
    - SELECT * FROM table_name;
- Exit psql:
    - \q