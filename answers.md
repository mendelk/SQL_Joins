## Homework Answers

1. Select the titles of all projects and their pledge amounts.
  * 
  ```
  SELECT projects.title, SUM(pledges.amount) 
  FROM projects 
  JOIN pledges 
  ON projects.id = pledges.project_id
  GROUP BY projects.title;
  ```
2. Select the user name, age, and pledge amount for all pledges.
  *
  ```
  SELECT users.name, users.age, pledges.amount
  FROM pledges
  JOIN users
  ON users.id = pledges.user_id;
  ```
3. Select the titles of all projects that have met their funding goal.
  *
  ```
  SELECT projects.title 
  FROM projects
  WHERE (SELECT ) >= projects.funding_goal
  ```
4. Select user names and amounts of all pledges. Order them by the amount.
5. Select the category names, and pledge amounts of all pledges in the music category.
6. Select the category names and the sum total of the pledge amounts of all the pledges in the book category.

