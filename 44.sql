-- SQL Challenge 44/50

-- Create the table
CREATE TABLE house_price (
    id INT,
    state VARCHAR(255),
    city VARCHAR(255),
    street_address VARCHAR(255),
    mkt_price INT
);
-- Insert all the records
INSERT INTO house_price (id, state, city, street_address, mkt_price) VALUES
(1, 'NY', 'New York City', '66 Trout Drive', 449761),
(2, 'NY', 'New York City', 'Atwater', 277527),
(3, 'NY', 'New York City', '58 Gates Street', 268394),
(4, 'NY', 'New York City', 'Norcross', 279929),
(5, 'NY', 'New York City', '337 Shore Ave.', 151592),
(6, 'NY', 'New York City', 'Plainfield', 624531),
(7, 'NY', 'New York City', '84 Central Street', 267345),
(8, 'NY', 'New York City', 'Passaic', 88504),
(9, 'NY', 'New York City', '951 Fulton Road', 270476),
(10, 'NY', 'New York City', 'Oxon Hill', 118112),
(11, 'CA', 'Los Angeles', '692 Redwood Court', 150707),
(12, 'CA', 'Los Angeles', 'Lewiston', 463180),
(13, 'CA', 'Los Angeles', '8368 West Acacia Ave.', 538865),
(14, 'CA', 'Los Angeles', 'Pearl', 390896),
(15, 'CA', 'Los Angeles', '8206 Old Riverview Rd.', 117754),
(16, 'CA', 'Los Angeles', 'Seattle', 424588),
(17, 'CA', 'Los Angeles', '7227 Joy Ridge Rd.', 156850),
(18, 'CA', 'Los Angeles', 'Battle Ground', 643454),
(19, 'CA', 'Los Angeles', '233 Bedford Ave.', 713841),
(20, 'CA', 'Los Angeles', 'Saint Albans', 295852),
(21, 'IL', 'Chicago', '8830 Baker St.', 12944),
(22, 'IL', 'Chicago', 'Watertown', 410766),
(23, 'IL', 'Chicago', '632 Princeton St.', 160696),
(24, 'IL', 'Chicago', 'Waxhaw', 464144),
(25, 'IL', 'Chicago', '7773 Tailwater Drive', 129393),
(26, 'IL', 'Chicago', 'Bonita Springs', 174886),
(27, 'IL', 'Chicago', '31 Summerhouse Rd.', 296008),
(28, 'IL', 'Chicago', 'Middleburg', 279000),
(29, 'IL', 'Chicago', '273 Windfall Avenue', 424846),
(30, 'IL', 'Chicago', 'Graham', 592268),
(31, 'TX', 'Houston', '91 Canterbury Dr.', 632014),
(32, 'TX', 'Houston', 'Dallas', 68868),
(33, 'TX', 'Houston', '503 Elmwood St.', 454184),
(34, 'TX', 'Houston', 'Kennewick', 186280),
(35, 'TX', 'Houston', '739 Chapel Street', 334474),
(36, 'TX', 'Houston', 'San Angelo', 204460),
(37, 'TX', 'Houston', '572 Parker Dr.', 678443),
(38, 'TX', 'Houston', 'Bellmore', 401090),
(39, 'TX', 'Houston', '8653 South Oxford Street', 482214),
(40, 'TX', 'Houston', 'Butler', 330868),
(41, 'AZ', 'Phoenix', '8667 S. Joy Ridge Court', 316291),
(42, 'AZ', 'Phoenix', 'Torrance', 210392),
(43, 'AZ', 'Phoenix', '35 Harvard St.', 167502),
(44, 'AZ', 'Phoenix', 'Nutley', 327554),
(45, 'AZ', 'Phoenix', '7313 Vermont St.', 285135),
(46, 'AZ', 'Phoenix', 'Lemont', 577667),
(47, 'AZ', 'Phoenix', '8905 Buttonwood Dr.', 212301),
(48, 'AZ', 'Phoenix', 'Lafayette', 317504);



/*

You are given a table of New York housing 
price called house_transactions with columns
id, state, city, street_address, mkt_price

Identify properites where the mkt_price of the house 
exceeds the city's average mkt_price.

*/

SELECT * FROM house_price















    
SELECT 
    h1.id,
    h1.state,
    h1.city,
    h1.mkt_price
FROM house_price h1 
WHERE  h1.mkt_price > (SELECT 
                        AVG(h2.mkt_price) 
                    FROM house_price h2
                    WHERE h2.city = h1.city)























    


SELECT 
                        AVG(h2.mkt_price) 
                    FROM house_price h2
                    WHERE h2.city = 'Chicago' -- 294k























-- Your Task
-- Write a query to find the property that has house mkt_price greater 
-- than average of the city's average price but less than nation's average price




