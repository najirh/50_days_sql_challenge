-- SQL Challenge 43/50

CREATE TABLE forbes_global (
    company VARCHAR(100),
    sector VARCHAR(100),
    industry VARCHAR(100),
    country VARCHAR(100),
    sales FLOAT,
    profits FLOAT,
    rank INT
);


-- Inserting the data
insert into forbes_global
VALUES  
('Walmart', 'Consumer Discretionary', 'General Merchandisers', 'United States', 482130.0, 14694.0, 1),
('Sinopec-China Petroleum', 'Energy', 'Oil & Gas Operations', 'China', 448452.0, 7840.0, 2),
('Royal Dutch Shell', 'Energy', 'Oil & Gas Operations', 'Netherlands', 396556.0, 15340.0, 3),
('China National Petroleum', 'Energy', 'Oil & Gas Operations', 'China', 392976.0, 2837.0, 4),
('State Grid', 'Utilities', 'Electric Utilities', 'China', 387056.0, 9573.0, 5),
('Saudi Aramco', 'Energy', 'Oil & Gas Operations', 'Saudi Arabia', 355905.0, 11002.0, 6),
('Volkswagen', 'Consumer Discretionary', 'Auto & Truck Manufacturers', 'Germany', 283565.0, 17742.4, 7),
('BP', 'Energy', 'Oil & Gas Operations', 'United Kingdom', 282616.0, 3591.0, 8),
('Amazon.com', 'Consumer Discretionary', 'Internet Services and Retailing', 'United States', 280522.0, 5362.0, 9),
('Toyota Motor', 'Consumer Discretionary', 'Auto & Truck Manufacturers', 'Japan', 275288.0, 18499.3, 10),
('Apple', 'Information Technology', 'Computers, Office Equipment', 'United States', 265595.0, 55256.0, 11),
('Exxon Mobil', 'Energy', 'Oil & Gas Operations', 'United States', 263910.0, 15850.0, 12),
('Berkshire Hathaway', 'Financials', 'Diversified Financials', 'United States', 247837.0, 8971.0, 13),
('Samsung Electronics', 'Information Technology', 'Electronics', 'South Korea', 245898.0, 19783.3, 14),
('McKesson', 'Health Care', 'Health Care: Pharmacy and Other Services', 'United States', 231091.0, 5070.0, 15),
('Glencore', 'Materials', 'Diversified Metals & Mining', 'Switzerland', 219754.0, 5436.0, 16),
('UnitedHealth Group', 'Health Care', 'Health Care: Insurance and Managed Care', 'United States', 201159.0, 13650.0, 17),
('Daimler', 'Consumer Discretionary', 'Auto & Truck Manufacturers', 'Germany', 197515.0, 8245.1, 18),
('CVS Health', 'Health Care', 'Health Care: Pharmacy and Other Services', 'United States', 194579.0, 6634.0, 19),
('AT&T', 'Telecommunication Services', 'Telecommunications', 'United States', 181193.0, 13906.0, 20),
('Foxconn', 'Technology', 'Electronics', 'Taiwan', 175617.0, 4103.4, 21),
('General Motors', 'Consumer Discretionary', 'Auto & Truck Manufacturers', 'United States', 174049.0, 6710.0, 22),
('Verizon Communications', 'Telecommunication Services', 'Telecommunications', 'United States', 170756.0, 19225.0, 23),
('Total', 'Energy', 'Oil & Gas Operations', 'France', 149769.0, 7480.0, 24),
('IBM', 'Information Technology', 'Information Technology Services', 'United States', 141682.0, 6606.0, 25),
('Ford Motor', 'Consumer Discretionary', 'Auto & Truck Manufacturers', 'United States', 140545.0, 6471.0, 26),
('Hon Hai Precision Industry', 'Technology', 'Electronics', 'Taiwan', 135129.0, 4493.3, 27),
('Trafigura Group', 'Energy', 'Trading', 'Singapore', 131638.0, 975.0, 28),
('General Electric', 'Industrials', 'Diversified Industrials', 'United States', 126661.0, 5136.0, 29),
('AmerisourceBergen', 'Health Care', 'Wholesalers: Health Care', 'United States', 122848.0, 1605.5, 30),
('Fannie Mae', 'Financials', 'Diversified Financials', 'United States', 120472.0, 18418.0, 31),
('Trafigura Group', 'Energy', 'Trading', 'Switzerland', 120438.0, 975.0, 32),
('Koch Industries', 'Diversified', 'Diversified', 'United States', 115095.0, 5142.0, 33),
('Cardinal Health', 'Health Care', 'Wholesalers: Health Care', 'United States', 113982.0, 1377.0, 34),
('Alphabet', 'Technology', 'Internet Services and Retailing', 'United States', 110855.0, 18616.0, 35),
('Chevron', 'Energy', 'Oil & Gas Operations', 'United States', 110360.0, 5520.0, 36),
('Costco Wholesale', 'Consumer Discretionary', 'General Merchandisers', 'United States', 110215.0, 2115.0, 37),
('Cardinal Health', 'Health Care', 'Health Care: Pharmacy and Other Services', 'United States', 109838.0, 1718.0, 38),
('Ping An Insurance Group', 'Financials', 'Insurance', 'China', 109254.0, 2047.4, 39),
('Walgreens Boots Alliance', 'Consumer Staples', 'Food and Drug Stores', 'United States', 109026.0, 4563.0, 40),
('Costco Wholesale', 'Consumer Discretionary', 'Retailing', 'United States', 105156.0, 2115.0, 41),
('JPMorgan Chase', 'Financials', 'Diversified Financials', 'United States', 105153.0, 30615.0, 42),
('Verizon Communications', 'Telecommunication Services', 'Telecommunications', 'United States', 104887.0, 13568.0, 43),
('China Construction Bank', 'Financials', 'Banks', 'China', 104693.0, 38369.0, 44),
('China Construction Bank', 'Financials', 'Major Banks', 'China', 104692.9, 38369.2, 45),
('Trafigura Group', 'Energy', 'Trading', 'Netherlands', 103752.0, 975.0, 46),
('Exor Group', 'Financials', 'Diversified Financials', 'Netherlands', 103606.6, -611.2, 47),
('Anheuser-Busch InBev', 'Consumer Staples', 'Beverages', 'Belgium', 101541.0, 9536.0, 48),
('Bank of America', 'Financials', 'Banks', 'United States', 100264.0, 18724.0, 49),
('Bank of China', 'Financials', 'Banks', 'China', 99237.3, 28202.1, 50),
('Trafigura Group', 'Energy', 'Trading', 'Switzerland', 97296.0, 975.0, 51),
('Dell Technologies', 'Technology', 'Computers, Office Equipment', 'United States', 94477.0, 2743.0, 52),
('CVS Health', 'Health Care', 'Health Care: Insurance and Managed Care', 'United States', 94005.0, 6239.0, 53),
('Trafigura Group', 'Energy', 'Trading', 'United Kingdom', 90345.0, 975.0, 54),
('Trafigura Group', 'Energy', 'Trading', 'Switzerland', 88265.0, 975.0, 55),
('Trafigura Group', 'Energy', 'Trading', 'Netherlands', 88111.0, 975.0, 56),
('Trafigura Group', 'Energy', 'Trading', 'Switzerland', 87044.0, 975.0, 57),
('Trafigura Group', 'Energy', 'Trading', 'Switzerland', 84795.0, 975.0, 58),
('Trafigura Group', 'Energy', 'Trading', 'Switzerland', 84361.0, 975.0, 59),
('Trafigura Group', 'Energy', 'Trading', 'Switzerland', 83156.0, 975.0, 60),
('Trafigura Group', 'Energy', 'Trading', 'Switzerland', 82276.0, 975.0, 61);

/*
-- Most Profitable Companies
You are given a table called
forbes_global with columns
company, sector, industry, country, 
sales, profit, rank

Find out each country's most 
most profitable company details
*/


SELECT * FROM forbes_global;


SELECT *
FROM
(    
    SELECT *,
            RANK() OVER(PARTITION BY 
            country ORDER BY profits DESC) as rn
    FROM forbes_global
)
WHERE rn = 1























-- -- Your Task 
-- Find out each sector top 2 most profitable company details
