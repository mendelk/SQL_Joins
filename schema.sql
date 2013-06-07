CREATE TABLE projects (
  id int,
  title varchar(255),
  category_id int,
  funding_goal int,
  start_date text,
  end_date text
);

CREATE TABLE categories (
  id int,
  name varchar(255)
);

CREATE TABLE users (
  id int,
  name varchar(255),
  age int
);

CREATE TABLE pledges (
  id int,
  user_id int,
  project_id int,
  amount real
);