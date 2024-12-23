-- DROP TABLE orders;
-- DROP TABLE memberships;
-- DROP TABLE customers;

-- DROP TABLE users;



CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  email VARCHAR(300) UNIQUE NOT NULL,
  salary INT CHECK (salary > 0)
);

CREATE TABLE addresses (
  id INT PRIMARY KEY AUTO_INCREMENT,
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(20) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  city VARCHAR(300) NOT NULL,
  user_id INT,
  FOREIGN KEY(user_id) REFERENCES users (id) ON DELETE CASCADE
);

INSERT INTO
  users (first_name, last_name, email, salary)
VALUES
  ('Max', 'Schwarz', 'max@test.com', 11000),
  ('Manuel', 'Lorenz', 'manuel@test.com', 12800),
  ('Julie', 'Barnes', 'julie@test.com', 15000),
  ('Anna', 'Mayers', 'anna@test.com', 13000),
  ('Michael', 'Smit', 'michael@test.com', 9000),
  ('Frank', 'Kenneth', 'frank@test.com', 10000);

INSERT INTO
  addresses (street, house_number, postal_code, city, user_id)
VALUES
  ('Teststreet', '5A', '12345', 'Munich', 2),
  ('Some Place', '1', '12345', 'Munich', 1),
  ('My Street', '101', '98765', 'My City', 3),
  ('Foodstreet', '8', '41811', 'New York', 4),
  ('Teststreet', '10', '12345', 'Munich', 5),
  ('Teststreet', '11', '12345', 'Munich', 6);
  
{ "EXPLAIN": "-> Filter: (users.salary > 12900)  (cost=0.85 rows=2) (actual time=0.0539..0.062 rows=2 loops=1)\n    -> Table scan on users  (cost=0.85 rows=6) (actual time=0.0488..0.0584 rows=6 loops=1)\n" }