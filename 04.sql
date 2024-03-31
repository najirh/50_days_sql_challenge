-- Day 04/50 



create table orders(
  	category varchar(20),
	product varchar(20),
	user_id int , 
  	spend int,
  	transaction_date DATE
);

Insert into orders values
('appliance','refrigerator',165,246.00,'2021/12/26'),
('appliance','refrigerator',123,299.99,'2022/03/02'),
('appliance','washingmachine',123,219.80,'2022/03/02'),
('electronics','vacuum',178,152.00,'2022/04/05'),
('electronics','wirelessheadset',156,	249.90,'2022/07/08'),
('electronics','TV',145,189.00,'2022/07/15'),
('Television','TV',165,129.00,'2022/07/15'),
('Television','TV',163,129.00,'2022/07/15'),
('Television','TV',141,129.00,'2022/07/15'),
('toys','Ben10',145,189.00,'2022/07/15'),
('toys','Ben10',145,189.00,'2022/07/15'),
('toys','yoyo',165,129.00,'2022/07/15'),
('toys','yoyo',163,129.00,'2022/07/15'),
('toys','yoyo',141,129.00,'2022/07/15'),
('toys','yoyo',145,189.00,'2022/07/15'),
('electronics','vacuum',145,189.00,'2022/07/15');



/*
Find the top 2 products in the top 2 categories based on spend amount?
*/

-- top 2 category based on spend 
-- top 2 product in above best 2 category


SELECT * FROM orders;


WITH ranked_category
AS
(
	SELECT
		category,
		total_spend_category
	FROM 
	(	SELECT 
			category,
			SUM(spend) as total_spend_category,
			DENSE_RANK() OVER( ORDER BY SUM(spend) DESC) drn
		FROM orders
		GROUP BY category
	) as subquery
	WHERE drn <= 2
)	

SELECT
	category,
	product,
	total_spend_by_product
FROM (	
		SELECT 
			o.category,
			o.product,
			SUM(o.spend) as total_spend_by_product,
			DENSE_RANK() OVER(PARTITION BY o.category ORDER BY SUM(o.spend) DESC ) as pdrn
		FROM orders as o
		JOIN ranked_category as rc
		ON rc.category = o.category	
		GROUP BY o.category, o.product
) subquery2
WHERE pdrn <= 2



-- Your Task Find top category and product that has least spend amount 	












/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
	











