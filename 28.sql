-- day 28/50 days SQL Challenge






SELECT * FROM walmart_eu;

/*
--Question
Write a query to find the highest-selling 
product for each customer

Return cx id, product description, 
and total count of purchase.

*/ 
-- cx all product they purchased and their total orders
-- order by by number of purchase desc
-- 1 product that has highest purchase 
-- rank 


SELECT *
FROM
(
    SELECT 
         customerid,
        description,
        COUNT(*) as total_purchase,
        RANK() OVER(PARTITION BY customerid 
        ORDER BY  COUNT(*) DESC) as rn
    FROM walmart_eu
    GROUP BY customerid, description
    ORDER BY customerid, total_purchase DESC  
)
WHERE rn = 1




























/*
-- Your Task
Find each country and best selling product 
Return country_name, description, total count of sale
*/