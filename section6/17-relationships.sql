-- CREATE TABLE employees (
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   first_name VARCHAR(300) NOT NULL,
--   last_name VARCHAR(300) NOT NULL,
--   birthdate DATE NOT NULL,
--   email VARCHAR(300) UNIQUE NOT NULL
-- );

-- CREATE TABLE intranet_accounts (
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   email VARCHAR(200) NOT NULL UNIQUE,
--   PASSWORD VARCHAR(200) NOT NULL,
--   FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE
-- );

-- DROP TABLE intranet_accounts;

-- DROP TABLE employees;

