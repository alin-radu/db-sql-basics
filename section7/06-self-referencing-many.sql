CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(300) NOT NULL -- ...
);

CREATE TABLE users_friends (
  user_id INT,
  friend_id,
  CHECK (user_id < friend_id),
  PRIMARY KEY (user_id, friend_id),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
  FOREIGN KEY (friend_id) REFERENCES users (id) ON DELETE CASCADE,
);