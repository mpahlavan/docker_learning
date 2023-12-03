CREATE TABLE mytable (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INT
);

INSERT INTO mytable (name, age) VALUES
    ('John Doe', 25),
    ('Jane Smith', 30),
    ('Bob Johnson', 22);

