-- Homework Answers

-- 1. Select the titles of all projects and their pledge amounts.
SELECT projects.title, SUM(pledges.amount) 
FROM projects 
JOIN pledges 
ON projects.id = pledges.project_id
GROUP BY projects.title;

-- 2. Select the user name, age, and pledge amount for all pledges.
SELECT users.name, users.age, pledges.amount
FROM pledges
JOIN users
ON users.id = pledges.user_id;

-- 3. Select the titles of all projects that have met their funding goal.
SELECT DISTINCT title
FROM projects
JOIN pledges
ON projects.id = pledges.project_id 
GROUP BY pledges.id
HAVING SUM(pledges.amount) > projects.funding_goal;

-- 4. Select user names and amounts of all pledges. Order them by the amount.
SELECT users.name, SUM(pledges.amount)
FROM users
JOIN pledges
ON users.id = pledges.user_id
GROUP BY users.id;

-- 5. Select the category names, and pledge amounts of all pledges in the music category.
SELECT 'music', pledges.amount 
FROM pledges
WHERE pledges.project_id IN
(SELECT projects.id
FROM projects 
JOIN categories
ON projects.category_id = categories.id 
WHERE categories.name = 'music');

-- 6. Select the category names and the sum total of the pledge amounts of all the pledges in the book category.
SELECT 'books', SUM(pledges.amount)
FROM pledges
WHERE pledges.project_id IN
(SELECT projects.id
FROM projects 
JOIN categories
ON projects.category_id = categories.id 
WHERE categories.name = 'books');