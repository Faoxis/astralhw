-- Table: users
CREATE TABLE users (
  id       SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

-- Table: roles
CREATE TABLE roles (
  id   SERIAL       PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- Table for mapping user and roles: user_roles
CREATE TABLE user_roles (
  user_id INT NOT NULL REFERENCES users (id),
  role_id INT NOT NULL REFERENCES roles (id),
  UNIQUE (user_id, role_id)
);

-- Table: users
CREATE TABLE notes (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  text TEXT
);

-- Insert data

INSERT INTO users VALUES (1, 'astraladmin', '$2a$11$MXBK3yA16K7sIZADzpw2NefLA0.9FR0rtZBHW1SUOWQDSLkbJolUi'); -- 12345678

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1, 2);


