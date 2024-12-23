CREATE TABLE projects (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(300) NOT NULL,
  deadline DATE
);

CREATE TABLE company_buildings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(300) NOT NULL,
  building_id INT,
  FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL
);

CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR(300) UNIQUE NOT NULL,
  team_id INT DEFAULT 1,
  FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(200) NOT NULL UNIQUE,
  PASSWORD VARCHAR(200) NOT NULL,
  FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE
);

-- intermediate table => n:n
CREATE TABLE projects_employees (
  employee_id INT NOT NULL,
  project_id INT NOT NULL,
  PRIMARY KEY(employee_id, project_id),
  FOREIGN KEY (employee_id) REFERENCES employees (id) ON DELETE CASCADE,
  FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE
);