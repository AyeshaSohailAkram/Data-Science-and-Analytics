
-- Creation of database with name "project" 

CREATE DATABASE project;

 -- using "project" database 
 
USE project;

-- creation of tables:

CREATE TABLE badges (
    id INT PRIMARY KEY,
    user_id INT,
    name VARCHAR(255),
    date DATE
);

INSERT INTO badges (id, user_id, name, date) VALUES
(1, 1001, 'Gold Contributor', '2024-01-01'),
(2, 1002, 'Silver Helper', '2024-01-05'),
(3, 1003, 'Bronze Reviewer', '2024-02-10'),
(4, 1001, 'Silver Helper', '2024-03-15'),
(5, 1004, 'Gold Contributor', '2024-04-20'),
(6, 1001, 'Gold Contributor', '2024-05-05'),
(7, 1002, 'Bronze Reviewer', '2024-06-10'),
(8, 1003, 'Silver Helper', '2024-07-10'),
(9, 1004, 'Gold Contributor', '2024-08-01'),
(10, 1001, 'Bronze Reviewer', '2024-09-01');


CREATE TABLE comments (
    id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    creation_date DATE,
    text TEXT
);

INSERT INTO comments (id, post_id, user_id, creation_date, text) VALUES
(1, 2001, 1001, '2024-01-01', 'Great explanation!'),
(2, 2002, 1002, '2024-01-05', 'This helped a lot.'),
(3, 2003, 1003, '2024-01-10', 'Can you clarify?'),
(4, 2004, 1001, '2024-01-15', 'Excellent resource.'),
(5, 2005, 1004, '2024-01-20', 'Thank you for sharing.'),
(6, 2001, 1002, '2024-01-25', 'I agree, very useful.'),
(7, 2003, 1003, '2024-02-01', 'This solved my issue.'),
(8, 2004, 1001, '2024-02-05', 'Thanks for the info.'),
(9, 2005, 1004, '2024-02-10', 'Could use more detail.'),
(10, 2006, 1002, '2024-02-15', 'Good job on this one!');


CREATE TABLE post_history (
    id INT PRIMARY KEY,
    post_history_type_id INT,
    post_id INT,
    user_id INT,
    text TEXT,
    creation_date DATE
);

INSERT INTO post_history (id, post_history_type_id, post_id, user_id, text, creation_date) VALUES
(1, 1, 2001, 1001, 'Initial post creation', '2024-01-01'),
(2, 2, 2002, 1002, 'Edited post for clarity', '2024-01-05'),
(3, 3, 2003, 1003, 'Comment added by moderator', '2024-01-10'),
(4, 1, 2004, 1001, 'First version of the post', '2024-01-15'),
(5, 2, 2005, 1004, 'Reworded answer', '2024-01-20'),
(6, 3, 2001, 1002, 'User updated answer with additional info', '2024-01-25'),
(7, 1, 2003, 1003, 'Post originally created', '2024-02-01'),
(8, 3, 2004, 1001, 'Moderators edited content', '2024-02-05'),
(9, 2, 2005, 1004, 'User revised explanation', '2024-02-10'),
(10, 3, 2006, 1002, 'Moderators flagged inappropriate content', '2024-02-15');


CREATE TABLE post_links (
    id INT PRIMARY KEY,
    post_id INT,
    related_post_id INT,
    link_type_id INT
);

INSERT INTO post_links (id, post_id, related_post_id, link_type_id) VALUES
(1, 2001, 2002, 1),
(2, 2002, 2003, 2),
(3, 2003, 2004, 1),
(4, 2004, 2005, 3),
(5, 2005, 2006, 2),
(6, 2001, 2004, 3),
(7, 2002, 2006, 1),
(8, 2003, 2005, 2),
(9, 2004, 2006, 3),
(10, 2005, 2001, 2);


CREATE TABLE posts_answers (
    id INT PRIMARY KEY,
    post_type_id INT,
    creation_date DATE,
    score INT,
    view_count INT,
    owner_user_id INT
);

INSERT INTO posts_answers (id, post_type_id, creation_date, score, view_count, owner_user_id) VALUES
(1, 1, '2024-01-01', 10, 100, 1001),
(2, 2, '2024-01-05', 20, 150, 1002),
(3, 1, '2024-01-10', 5, 50, 1003),
(4, 2, '2024-01-15', 15, 120, 1001),
(5, 1, '2024-01-20', 30, 200, 1004),
(6, 2, '2024-01-25', 25, 180, 1002),
(7, 1, '2024-02-01', 40, 300, 1003),
(8, 2, '2024-02-05', 10, 80, 1001),
(9, 1, '2024-02-10', 8, 90, 1004),
(10, 2, '2024-02-15', 50, 400, 1002);

CREATE TABLE tags (
    id INT PRIMARY KEY,
    tag_name VARCHAR(255)
);

INSERT INTO tags (id, tag_name) VALUES
(1, 'SQL'),
(2, 'JavaScript'),
(3, 'React'),
(4, 'Python'),
(5, 'AI'),
(6, 'Machine Learning'),
(7, 'Node.js'),
(8, 'CSS'),
(9, 'HTML'),
(10, 'Database');


CREATE TABLE users (
    id INT PRIMARY KEY,
    display_name VARCHAR(255),
    reputation INT,
    creation_date DATE
);

INSERT INTO users (id, display_name, reputation, creation_date) VALUES
(1001, 'Alice', 1500, '2024-01-01'),
(1002, 'Bob', 1200, '2024-01-05'),
(1003, 'Charlie', 800, '2024-01-10'),
(1004, 'Dave', 1800, '2024-01-15'),
(1005, 'Eve', 1000, '2024-01-20'),
(1006, 'Frank', 2000, '2024-01-25'),
(1007, 'Grace', 1300, '2024-02-01'),
(1008, 'Hank', 1100, '2024-02-05'),
(1009, 'Ivy', 900, '2024-02-10'),
(1010, 'Jack', 1600, '2024-02-15');


CREATE TABLE votes (
    id INT PRIMARY KEY,
    post_id INT,
    vote_type_id INT,
    creation_date DATE
);

INSERT INTO votes (id, post_id, vote_type_id, creation_date) VALUES
(1, 2001, 1, '2024-01-01'),
(2, 2002, 2, '2024-01-05'),
(3, 2003, 1, '2024-01-10'),
(4, 2004, 2, '2024-01-15'),
(5, 2005, 1, '2024-01-20'),
(6, 2001, 2, '2024-01-25'),
(7, 2003, 1, '2024-02-01'),
(8, 2004, 2, '2024-02-05'),
(9, 2005, 1, '2024-02-10'),
(10, 2006, 2, '2024-02-15');


CREATE TABLE posts (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    post_type_id INT,
    creation_date DATE,
    score INT,
    view_count INT,
    owner_user_id INT
);

INSERT INTO posts (id, title, post_type_id, creation_date, score, view_count, owner_user_id)
VALUES
(2001, 'How to solve SQL JOIN issues?', 1, '2023-01-01', 10, 100, 1),
(2002, 'Best practices for writing SQL queries', 2, '2023-01-02', 15, 150, 2),
(2003, 'Understanding INNER JOIN in SQL', 1, '2023-01-03', 20, 200, 3),
(2004, 'What is a LEFT JOIN?', 2, '2023-01-04', 25, 250, 4),
(2005, 'Database indexing techniques', 1, '2023-01-05', 30, 300, 5),
(2006, 'Explaining SQL subqueries', 2, '2023-01-06', 35, 350, 6),
(2007, 'How to optimize SQL queries?', 1, '2023-01-07', 40, 400, 7),
(2008, 'Database normalization concepts', 2, '2023-01-08', 45, 450, 8),
(2009, 'SQL Aggregate Functions explained', 1, '2023-01-09', 50, 500, 9),
(2010, 'Introduction to SQL Window Functions', 2, '2023-01-10', 55, 550, 10);



-- select all the tables 

SELECT * FROM badges;
SELECT * FROM comments;
SELECT * FROM post_history;
SELECT * FROM post_links;
SELECT * FROM posts;
SELECT * FROM posts_answers;
SELECT * FROM tags;
SELECT * FROM users;
SELECT * FROM votes;

-- loading and exploring data

DESC badges;
DESC comments;
DESC post_history;
DESC post_links;
DESC posts_answers;
DESC tags;
DESC users;
DESC votes;
DESC posts;

SELECT * FROM badges LIMIT 5;
SELECT * FROM comments LIMIT 5;
SELECT * FROM post_history LIMIT 5;
SELECT * FROM post_links LIMIT 5;
SELECT * FROM posts_answers LIMIT 5;
SELECT * FROM tags LIMIT 5;
SELECT * FROM users LIMIT 5;
SELECT * FROM votes LIMIT 5;
SELECT * FROM posts LIMIT 5;

-- Filtering and Sorting 

SELECT * 
FROM posts 
WHERE view_count > 100;

SELECT * 
FROM comments 
WHERE YEAR(creation_date) = 2005 
ORDER BY creation_date;

-- Simple Aggregations 

SELECT COUNT(*) AS total_badges 
FROM badges;

SELECT post_type_id, AVG(score) AS average_score 
FROM posts_answers 
GROUP BY post_type_id;

-- Part 2: Joins 
-- Basic joins

SELECT ph.post_id, p.title, ph.text AS changes, ph.creation_date 
FROM post_history ph
JOIN posts p ON ph.post_id = p.id
ORDER BY ph.creation_date;

SELECT u.id AS user_id, u.display_name, COUNT(b.id) AS total_badges 
FROM users u
LEFT JOIN badges b ON u.id = b.user_id
GROUP BY u.id, u.display_name
ORDER BY total_badges DESC;

-- Multi-Table Joins 

SELECT p.id AS post_id, p.title, c.text AS comment, u.display_name AS commenter 
FROM posts p
JOIN comments c ON p.id = c.post_id
JOIN users u ON c.user_id = u.id
ORDER BY p.id, c.creation_date;

SELECT pl.post_id, p1.title AS post_title, pl.related_post_id, p2.title AS related_post_title 
FROM post_links pl
JOIN posts p1 ON pl.post_id = p1.id
JOIN posts p2 ON pl.related_post_id = p2.id;

SELECT DISTINCT u.id AS user_id, u.display_name, COUNT(DISTINCT b.id) AS total_badges, COUNT(DISTINCT c.id) AS total_comments 
FROM users u
JOIN badges b ON u.id = b.user_id
JOIN comments c ON u.id = c.user_id
GROUP BY u.id, u.display_name
ORDER BY total_badges DESC, total_comments DESC;

-- Part 3: Subqueries 
-- Single-Row Subqueries 

SELECT id AS user_id, display_name, reputation 
FROM users 
ORDER BY reputation DESC 
LIMIT 1;

SELECT p.id AS post_id, p.post_type_id, p.title, p.score 
FROM posts p
WHERE p.score = (
    SELECT MAX(p2.score) 
    FROM posts p2 
    WHERE p2.post_type_id = p.post_type_id
);

-- Correlated Subqueries 

SELECT pl.post_id, COUNT(pl.related_post_id) AS related_posts_count
FROM post_links pl
GROUP BY pl.post_id
ORDER BY related_posts_count DESC;

-- Part 4: Advanced Queries 
-- Window Functions 

SELECT id AS post_id, title, YEAR(creation_date) AS post_year, score,
       RANK() OVER (PARTITION BY YEAR(creation_date) ORDER BY score DESC) AS rank_within_year
FROM posts;

SELECT user_id, date AS earned_date, 
       COUNT(id) OVER (PARTITION BY user_id ORDER BY date) AS running_total_badges
FROM badges;

-- Common Table Expressions 

WITH UserAvgScore AS (
    SELECT owner_user_id, AVG(score) AS avg_score
    FROM posts
    GROUP BY owner_user_id
    )
    
    SELECT u.id AS user_id, u.display_name, uas.avg_score,
       RANK() OVER (ORDER BY uas.avg_score DESC) AS rank_based_on_avg_score
FROM UserAvgScore uas
JOIN users u ON uas.owner_user_id = u.id
WHERE uas.avg_score > 50
ORDER BY uas.avg_score DESC;

-- New Insights and Questions 

-- QUESTION 1
-- Which users have contributed the most in terms of comments, edits, and votes? 
-- ANSWER 1
-- The highest number of comments in the comments table identifies users who lead discussion participation. The editing behavior of users throughout their post_history shows they work to enhance the quality of content. Users who engage with voting (through votes) enable the assessment of content utility and determine how much information remains visible to the community. Users who participate across comments and edits and voting activities demonstrate exceptional platform involvement because they both create and evaluate content on the platform.

-- QUESTION 2
-- What types of badges are most commonly earned, and which users are the top earners?
-- ANSWER 2
 -- The most common badges can be determined by counting occurrences of each badge type (name column in badges). The top earners are users who have received the highest number of total badges (user_id in badges). Insight: If certain badges (e.g., "Gold Contributor" or "Silver Helper") are frequently awarded, it may indicate which types of contributions (answering questions, reviewing edits, etc.) are most valued by the community.
 
-- QUESTION 3
-- Which tags are associated with the highest-scoring posts? 
-- ANSWER 3
-- Users can see which topics earn the highest scores through the combination of tags with posts and a scoring filter. Aspects of the platform that achieve top scores usually focus on either high-demand subjects or technical matters. High-scoring posts featuring particular tags demonstrate that those knowledge areas hold significant value for the community members.

-- QUESTION 4
-- How often are related questions linked, and what does this say about knowledge sharing?
-- ANSWER 4
-- Post_links contains information about question relationship connections that occur across the platform. A strong knowledge network becomes evident when many questions within the network connect to each other through linkages. Better knowledge organization emerges through numerous related posts because users tend to link to existing discussions instead of producing duplicate content.
 
-- Visualisation

