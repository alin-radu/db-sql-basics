CREATE DATABASE DATABASE IF NOT EXISTS mysql_course_db;

-- DROP DATABASE mysql_course_db;

-- DROP DATABASE personal_db_sales_example;

-- DROP DATABASE personal_db_online_shop;


-- CREATE TABLE sales(
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   date_created DATE DEFAULT (CURRENT_DATE),
--   date_fulfilled DATE,
--   customer_name VARCHAR(300) NOT NULL,
--   product_name VARCHAR(300) NOT NULL,
--   volume NUMERIC(10, 3) NOT NULL CHECK(volume >= 0),
--   is_recurring BOOLEAN DEFAULT FALSE,
--   is_disputed BOOLEAN DEFAULT FALSE
-- );

-- CREATE TABLE sales(
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   date_created DATE DEFAULT(CURRENT_DATE),
--   date_fulfilled DATE,
--   customer_name VARCHAR(300) NOT NULL,
--   product_name VARCHAR(300) NOT NULL,
--   volume NUMERIC(10, 3) NOT NULL CHECK(volume >= 0),
--   is_recurring BOOLEAN DEFAULT FALSE,
--   is_disputed BOOLEAN DEFAULT FALSE
-- );