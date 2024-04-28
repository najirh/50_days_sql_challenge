-- Day 32/50 days SQL challenge


-- Create the user_flags table
CREATE TABLE user_flags (
    user_firstname VARCHAR(50),
    user_lastname VARCHAR(50),
    video_id VARCHAR(20),
    flag_id VARCHAR(20)
);

-- Insert the provided records into the user_flags table
INSERT INTO user_flags (user_firstname, user_lastname, video_id, flag_id) VALUES
('Richard', 'Hasson', 'y6120QOlsfU', '0cazx3'),
('Mark', 'May', 'Ct6BUPvE2sM', '1cn76u'),
('Gina', 'Korman', 'dQw4w9WgXcQ', '1i43zk'),
('Mark', 'May', 'Ct6BUPvE2sM', '1n0vef'),
('Mark', 'May', 'jNQXAC9IVRw', '1sv6ib'),
('Gina', 'Korman', 'dQw4w9WgXcQ', '20xekb'),
('Mark', 'May', '5qap5aO4i9A', '4cvwuv'),
('Daniel', 'Bell', '5qap5aO4i9A', '4sd6dv'),
('Richard', 'Hasson', 'y6120QOlsfU', '6jjkvn'),
('Pauline', 'Wilks', 'jNQXAC9IVRw', '7ks264'),
('Courtney', '', 'dQw4w9WgXcQ', NULL),
('Helen', 'Hearn', 'dQw4w9WgXcQ', '8946nx'),
('Mark', 'Johnson', 'y6120QOlsfU', '8wwg0l'),
('Richard', 'Hasson', 'dQw4w9WgXcQ', 'arydfd'),
('Gina', 'Korman', '', NULL),
('Mark', 'Johnson', 'y6120QOlsfU', 'bl40qw'),
('Richard', 'Hasson', 'dQw4w9WgXcQ', 'ehn1pt'),
('Lopez', '', 'dQw4w9WgXcQ', 'hucyzx'),
('Greg', '', '5qap5aO4i9A', NULL),
('Pauline', 'Wilks', 'jNQXAC9IVRw', 'i2l3oo'),
('Richard', 'Hasson', 'jNQXAC9IVRw', 'i6336w'),
('Johnson', 'y6120QOlsfU', '', 'iey5vi'),
('William', 'Kwan', 'y6120QOlsfU', 'kktiwe'),
('', 'Ct6BUPvE2sM', '', NULL),
('Loretta', 'Crutcher', 'y6120QOlsfU', 'nkjgku'),
('Pauline', 'Wilks', 'jNQXAC9IVRw', 'ov5gd8'),
('Mary', 'Thompson', 'Ct6BUPvE2sM', 'qa16ua'),
('Daniel', 'Bell', '5qap5aO4i9A', 'xciyse'),
('Evelyn', 'Johnson', 'dQw4w9WgXcQ', 'xvhk6d');

/*
Netflix Data Analyst Interview Question

For each video, find how many unique users 
flagged it. 
A unique user can be identified using the
combination of their first name and last name. 

Do not consider rows in which there is no flag ID.

*/
-- select video_id
-- COUNT(unique users)
-- DISTINTC first and last name
-- filter the data for not null flagid
-- GROUP BY 

SELECT * FROM user_flags;


SELECT 
    video_id,
    COUNT(DISTINCT(CONCAT(user_firstname, user_lastname)))
    as cnt_users
FROM user_flags
WHERE flag_id is not null
GROUP BY video_id
ORDER BY 2 DESC





/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/

