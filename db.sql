-- for create a new database
CREATE DATABASE userDB;

-- for create a new table
CREATE TABLE "users" (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255)
);

-- for drop a table
DROP TABLE "users";

-- for insert data
INSERT INTO users (name, email, phone) VALUES ('name_value', 'email_value', 'phone_value');

-- for get all users data 
SELECT * FROM users;

-- for get user data by id
SELECT * FROM users WHERE id = 1;

-- for update user data by id
UPDATE users SET name = 'name_value', email = 'email_value', phone = 'phone_value' WHERE id = 1

-- for delete user data by id
DELETE FROM users WHERE id = 1
