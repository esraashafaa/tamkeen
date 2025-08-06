-- Add a new comment
INSERT INTO `comments`(`content`, `user_id`, `post_id`) VALUES ('new comment as a homework','2','4')

--  1 row inserted.
-- Inserted row id: 14 (Query took 0.0125 seconds.)
-- INSERT INTO `comments`(`content`, `user_id`, `post_id`) VALUES ('new comment as a homework','2','4'); 



-- Update a post title
UPDATE `posts` SET `title`='new raw 'WHERE `post_id`= 4

-- 1 row affected. (Query took 0.0279 seconds.)  



-- Delete a comment
DELETE FROM `comments` WHERE `comment_id`=2
-- 1 row deleted. (Query took 0.0228 seconds.) 



-- Number of comments per post (Grouping)
SELECT post_id , COUNT(*) AS total_comment
FROM comments
GROUP BY post_id;
--  Showing rows 0 - 7 (8 total, Query took 0.0003 seconds.) 



-- All posts with user information and categories
SELECT 
  posts.post_id,
  posts.title,
  posts.content,
  posts.user_id,
  users.username AS user_name,
  users.email AS user_email,
  categories.category_id AS category_id,
  categories.name AS category_name
FROM posts
JOIN users ON posts.user_id = users.user_id
JOIN post_category ON posts.post_id = post_category.post_id
JOIN categories ON post_category.category_id = categories.category_id;

--  Showing rows 0 - 12 (13 total, Query took 0.0005 seconds.) 