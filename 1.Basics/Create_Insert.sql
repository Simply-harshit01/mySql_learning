CREATE DATABASE IF NOT EXISTS instagramdb;
USE instagramdb;
CREATE TABLE IF NOT EXISTS USERS(
userId INT PRIMARY KEY,
userName VARCHAR(50),
email VARCHAR(100)
);

CREATE TABLE IF  NOT EXISTS POSTS(
postId INT PRIMARY KEY,
userId INT,
caption VARCHAR(100)
);

INSERT INTO USERS(userId,userName,email)
VALUES
(1,"raj","abc23@gmail.com"),
(2,"riti","jku12@gamil.com"),
(3,"syt","regh24@gmail.com");

INSERT INTO POSTS(postId,userId,caption)
VALUES
(101,505,"light"),
(102,510,"air"),
(103,515,"water");

USE instagramdb;
SHOW TABLES;

SELECT * FROM users;
SELECT * FROM posts;