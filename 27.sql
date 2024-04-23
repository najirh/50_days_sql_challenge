-- Day 27/50 SQL challenge


DROP TABLE IF EXISTS walmart_eu;
-- Create the online_retail table
CREATE TABLE walmart_eu (
    invoiceno VARCHAR(255),
    stockcode VARCHAR(255),
    description VARCHAR(255),
    quantity INT,
    invoicedate DATE,
    unitprice FLOAT,
    customerid FLOAT,
    country VARCHAR(255)
);

-- Insert the provided data into the online_retail table
INSERT INTO walmart_eu (invoiceno, stockcode, description, quantity, invoicedate, unitprice, customerid, country) VALUES
('544586', '21890', 'S/6 WOODEN SKITTLES IN COTTON BAG', 3, '2011-02-21', 2.95, 17338, 'United Kingdom'),
('541104', '84509G', 'SET OF 4 FAIRY CAKE PLACEMATS', 3, '2011-01-13', 3.29, NULL, 'United Kingdom'),
('560772', '22499', 'WOODEN UNION JACK BUNTING', 3, '2011-07-20', 4.96, NULL, 'United Kingdom'),
('555150', '22488', 'NATURAL SLATE RECTANGLE CHALKBOARD', 5, '2011-05-31', 3.29, NULL, 'United Kingdom'),
('570521', '21625', 'VINTAGE UNION JACK APRON', 3, '2011-10-11', 6.95, 12371, 'Switzerland'),
('547053', '22087', 'PAPER BUNTING WHITE LACE', 40, '2011-03-20', 2.55, 13001, 'United Kingdom'),
('573360', '22591', 'CARDHOLDER GINGHAM CHRISTMAS TREE', 6, '2011-10-30', 3.25, 15748, 'United Kingdom'),
('571039', '84536A', 'ENGLISH ROSE NOTEBOOK A7 SIZE', 1, '2011-10-13', 0.42, 16121, 'United Kingdom'),
('578936', '20723', 'STRAWBERRY CHARLOTTE BAG', 10, '2011-11-27', 0.85, 16923, 'United Kingdom'),
('559338', '21391', 'FRENCH LAVENDER SCENT HEART', 1, '2011-07-07', 1.63, NULL, 'United Kingdom'),
('568134', '23171', 'REGENCY TEA PLATE GREEN', 1, '2011-09-23', 3.29, NULL, 'United Kingdom'),
('552061', '21876', 'POTTERING MUG', 12, '2011-05-06', 1.25, 13001, 'United Kingdom'),
('543179', '22531', 'MAGIC DRAWING SLATE CIRCUS PARADE', 1, '2011-02-04', 0.42, 12754, 'Japan'),
('540954', '22381', 'TOY TIDY PINK POLKADOT', 4, '2011-01-12', 2.1, 14606, 'United Kingdom'),
('572703', '21818', 'GLITTER HEART DECORATION', 13, '2011-10-25', 0.39, 16110, 'United Kingdom'),
('578757', '23009', 'I LOVE LONDON BABY GIFT SET', 1, '2011-11-25', 16.95, 12748, 'United Kingdom'),
('542616', '22505', 'MEMO BOARD COTTAGE DESIGN', 4, '2011-01-30', 4.95, 16816, 'United Kingdom'),
('554694', '22921', 'HERB MARKER CHIVES', 1, '2011-05-25', 1.63, NULL, 'United Kingdom'),
('569545', '21906', 'PHARMACIE FIRST AID TIN', 1, '2011-10-04', 13.29, NULL, 'United Kingdom'),
('549562', '21169', 'YOU''RE CONFUSING ME METAL SIGN', 1, '2011-04-10', 1.69, 13232, 'United Kingdom'),
('580610', '21945', 'STRAWBERRIES DESIGN FLANNEL', 1, '2011-12-05', 1.63, NULL, 'United Kingdom'),
('558066', 'gift_0001_50', 'Dotcomgiftshop Gift Voucher £50.00', 1, '2011-06-24', 41.67, NULL, 'United Kingdom'),
('538349', '21985', 'PACK OF 12 HEARTS DESIGN TISSUES', 1, '2010-12-10', 0.85, NULL, 'United Kingdom'),
('537685', '22737', 'RIBBON REEL CHRISTMAS PRESENT', 15, '2010-12-08', 1.65, 18077, 'United Kingdom'),
('545906', '22614', 'PACK OF 12 SPACEBOY TISSUES', 24, '2011-03-08', 0.29, 15764, 'United Kingdom'),
('550997', '22629', 'SPACEBOY LUNCH BOX', 12, '2011-04-26', 1.95, 17735, 'United Kingdom'),
('558763', '22960', 'JAM MAKING SET WITH JARS', 3, '2011-07-03', 4.25, 12841, 'United Kingdom'),
('562688', '22918', 'HERB MARKER PARSLEY', 12, '2011-08-08', 0.65, 13869, 'United Kingdom'),
('541424', '84520B', 'PACK 20 ENGLISH ROSE PAPER NAPKINS', 9, '2011-01-17', 1.63, NULL, 'United Kingdom'),
('581405', '20996', 'JAZZ HEARTS ADDRESS BOOK', 1, '2011-12-08', 0.19, 13521, 'United Kingdom'),
('571053', '23256', 'CHILDRENS CUTLERY SPACEBOY', 4, '2011-10-13', 4.15, 12631, 'Finland'),
('563333', '23012', 'GLASS APOTHECARY BOTTLE PERFUME', 1, '2011-08-15', 3.95, 15996, 'United Kingdom'),
('568054', '47559B', 'TEA TIME OVEN GLOVE', 4, '2011-09-23', 1.25, 16978, 'United Kingdom'),
('574262', '22561', 'WOODEN SCHOOL COLOURING SET', 12, '2011-11-03', 1.65, 13721, 'United Kingdom'),
('569360', '23198', 'PANTRY MAGNETIC SHOPPING LIST', 6, '2011-10-03', 1.45, 14653, 'United Kingdom'),
('570210', '22980', 'PANTRY SCRUBBING BRUSH', 2, '2011-10-09', 1.65, 13259, 'United Kingdom'),
('576599', '22847', 'BREAD BIN DINER STYLE IVORY', 1, '2011-11-15', 16.95, 14544, 'United Kingdom'),
('579777', '22356', 'CHARLOTTE BAG PINK POLKADOT', 4, '2011-11-30', 1.63, NULL, 'United Kingdom'),
('566060', '21106', 'CREAM SLICE FLANNEL CHOCOLATE SPOT', 1, '2011-09-08', 5.79, NULL, 'United Kingdom'),
('550514', '22489', 'PACK OF 12 TRADITIONAL CRAYONS', 24, '2011-04-18', 0.42, 14631, 'United Kingdom'),
('569898', '23437', '50''S CHRISTMAS GIFT BAG LARGE', 2, '2011-10-06', 2.46, NULL, 'United Kingdom'),
('563566', '23548', 'WRAP MAGIC FOREST', 25, '2011-08-17', 0.42, 13655, 'United Kingdom'),
('559693', '21169', 'YOU''RE CONFUSING ME METAL SIGN', 1, '2011-07-11', 4.13, NULL, 'United Kingdom'),
('573386', '22112', 'CHOCOLATE HOT WATER BOTTLE', 24, '2011-10-30', 4.25, 17183, 'United Kingdom'),
('576920', '23312', 'VINTAGE CHRISTMAS GIFT SACK', 4, '2011-11-17', 4.15, 13871, 'United Kingdom'),
('564473', '22384', 'LUNCH BAG PINK POLKADOT', 10, '2011-08-25', 1.65, 16722, 'United Kingdom'),
('562264', '23321', 'SMALL WHITE HEART OF WICKER', 3, '2011-08-03', 3.29, NULL, 'United Kingdom'),
('542541', '79030D', 'TUMBLER, BAROQUE', 1, '2011-01-28', 12.46, NULL, 'United Kingdom'),
('579937', '22090', 'PAPER BUNTING RETROSPOT', 12, '2011-12-01', 2.95, 13509, 'United Kingdom'),
('574076', '22483', 'RED GINGHAM TEDDY BEAR', 1, '2011-11-02', 5.79, NULL, 'United Kingdom'),
('579187', '20665', 'RED RETROSPOT PURSE', 1, '2011-11-28', 5.79, NULL, 'United Kingdom'),
('542922', '22423', 'REGENCY CAKESTAND 3 TIER', 3, '2011-02-02', 12.75, 12682, 'France'),
('570677', '23008', 'DOLLY GIRL BABY GIFT SET', 2, '2011-10-11', 16.95, 12836, 'United Kingdom'),
('577182', '21930', 'JUMBO STORAGE BAG SKULLS', 10, '2011-11-18', 2.08, 16945, 'United Kingdom'),
('576686', '20992', 'JAZZ HEARTS PURSE NOTEBOOK', 1, '2011-11-16', 0.39, 16916, 'United Kingdom'),
('553844', '22569', 'FELTCRAFT CUSHION BUTTERFLY', 4, '2011-05-19', 3.75, 13450, 'United Kingdom'),
('580689', '23150', 'IVORY SWEETHEART SOAP DISH', 6, '2011-12-05', 2.49, 12994, 'United Kingdom'),
('545000', '85206A', 'CREAM FELT EASTER EGG BASKET', 6, '2011-02-25', 1.65, 15281, 'United Kingdom'),
('541975', '22382', 'LUNCH BAG SPACEBOY DESIGN', 40, '2011-01-24', 1.65, NULL, 'Hong Kong'),
('544942', '22551', 'PLASTERS IN TIN SPACEBOY', 12, '2011-02-25', 1.65, 15544, 'United Kingdom'),
('543177', '22667', 'RECIPE BOX RETROSPOT', 6, '2011-02-04', 2.95, 14466, 'United Kingdom'),
('574587', '23356', 'LOVE HOT WATER BOTTLE', 4, '2011-11-06', 5.95, 14936, 'Channel Islands'),
('543451', '22774', 'RED DRAWER KNOB ACRYLIC EDWARDIAN', 1, '2011-02-08', 2.46, NULL, 'United Kingdom'),
('578270', '22579', 'WOODEN TREE CHRISTMAS SCANDINAVIAN', 1, '2011-11-23', 1.63, 14096, 'United Kingdom'),
('551413', '84970L', 'SINGLE HEART ZINC T-LIGHT HOLDER', 12, '2011-04-28', 0.95, 16227, 'United Kingdom'),
('567666', '22900', 'SET 2 TEA TOWELS I LOVE LONDON', 6, '2011-09-21', 3.25, 12520, 'Germany'),
('571544', '22810', 'SET OF 6 T-LIGHTS SNOWMEN', 2, '2011-10-17', 2.95, 17757, 'United Kingdom'),
('558368', '23249', 'VINTAGE RED ENAMEL TRIM PLATE', 12, '2011-06-28', 1.65, 14329, 'United Kingdom'),
('546430', '22284', 'HEN HOUSE DECORATION', 2, '2011-03-13', 1.65, 15918, 'United Kingdom'),
('565233', '23000', 'TRAVEL CARD WALLET TRANSPORT', 1, '2011-09-02', 0.83, NULL, 'United Kingdom'),
('559984', '16012', 'FOOD/DRINK SPONGE STICKERS', 50, '2011-07-14', 0.21, 16657, 'United Kingdom'),
('576920', '23312', 'VINTAGE CHRISTMAS GIFT SACK', -4, '2011-11-17', 4.15, 13871, 'United Kingdom'),
('564473', '22384', 'LUNCH BAG PINK POLKADOT', 10, '2011-08-25', 1.65, 16722, 'United Kingdom'),
('562264', '23321', 'SMALL WHITE HEART OF WICKER', 3, '2011-08-03', 3.29, NULL, 'United Kingdom'),
('542541', '79030D', 'TUMBLER, BAROQUE', 1, '2011-01-28', 12.46, NULL, 'United Kingdom'),
('579937', '22090', 'PAPER BUNTING RETROSPOT', 12, '2011-12-01', 2.95, 13509, 'United Kingdom'),
('574076', '22483', 'RED GINGHAM TEDDY BEAR', 1, '2011-11-02', 5.79, NULL, 'United Kingdom'),
('579187', '20665', 'RED RETROSPOT PURSE', 1, '2011-11-28', 5.79, NULL, 'United Kingdom'),
('542922', '22423', 'REGENCY CAKESTAND 3 TIER', 3, '2011-02-02', 12.75, 12682, 'France'),
('570677', '23008', 'DOLLY GIRL BABY GIFT SET', 2, '2011-10-11', 16.95, 12836, 'United Kingdom'),
('577182', '21930', 'JUMBO STORAGE BAG SKULLS', 10, '2011-11-18', 2.08, 16945, 'United Kingdom'),
('576686', '20992', 'JAZZ HEARTS PURSE NOTEBOOK', 1, '2011-11-16', 0.39, 16916, 'United Kingdom'),
('553844', '22569', 'FELTCRAFT CUSHION BUTTERFLY', 4, '2011-05-19', 3.75, 13450, 'United Kingdom'),
('580689', '23150', 'IVORY SWEETHEART SOAP DISH', 6, '2011-12-05', 2.49, 12994, 'United Kingdom'),
('545000', '85206A', 'CREAM FELT EASTER EGG BASKET', 6, '2011-02-25', 1.65, 15281, 'United Kingdom'),
('541975', '22382', 'LUNCH BAG SPACEBOY DESIGN', 40, '2011-01-24', 1.65, NULL, 'Hong Kong'),
('544942', '22551', 'PLASTERS IN TIN SPACEBOY', 12, '2011-02-25', 1.65, 15544, 'United Kingdom'),
('543177', '22667', 'RECIPE BOX RETROSPOT', 6, '2011-02-04', 2.95, 14466, 'United Kingdom'),
('574587', '23356', 'LOVE HOT WATER BOTTLE', 4, '2011-11-06', 5.95, 14936, 'Channel Islands'),
('543451', '22774', 'RED DRAWER KNOB ACRYLIC EDWARDIAN', 1, '2011-02-08', 2.46, NULL, 'United Kingdom'),
('578270', '22579', 'WOODEN TREE CHRISTMAS SCANDINAVIAN', 1, '2011-11-23', 1.63, 14096, 'United Kingdom'),
('551413', '84970L', 'SINGLE HEART ZINC T-LIGHT HOLDER', 12, '2011-04-28', 0.95, 16227, 'United Kingdom'),
('567666', '22900', 'SET 2 TEA TOWELS I LOVE LONDON', 6, '2011-09-21', 3.25, 12520, 'Germany'),
('571544', '22810', 'SET OF 6 T-LIGHTS SNOWMEN', 2, '2011-10-17', 2.95, 17757, 'United Kingdom'),
('558368', '23249', 'VINTAGE RED ENAMEL TRIM PLATE', 12, '2011-06-28', 1.65, 14329, 'United Kingdom'),
('546430', '22284', 'HEN HOUSE DECORATION', 2, '2011-03-13', 1.65, 15918, 'United Kingdom'),
('565233', '23000', 'TRAVEL CARD WALLET TRANSPORT', 1, '2011-09-02', 0.83, NULL, 'United Kingdom'),
('559984', '16012', 'FOOD/DRINK SPONGE STICKERS', 50, '2011-07-14', 0.21, 16657, 'United Kingdom');



/*
Find the best selling item for each month 
(no need to separate months by year) 
where the biggest total invoice was paid. 

The best selling item is calculated using the formula 
(unitprice * quantity). 
Output the month, the description of the 
item along with the amount paid.
*/
-- month invoice data
-- group by product desc
-- revenue price * qty
-- rank 
-- subquery 


SELECT
    month,
    description,
    total_sale
FROM
(
     SELECT 
        EXTRACT(MONTH FROM invoicedate) as month,
        description,
        SUM(unitprice * quantity) as total_sale,
        RANK() OVER( PARTITION BY EXTRACT(MONTH FROM invoicedate) 
                    ORDER BY SUM(unitprice * quantity) DESC) as rn
    FROM walmart_eu
    GROUP BY month, description
) as subquery
WHERE rn= 1







































-- Your Task
-- Find Customer of the month from each MONTH one customer who has spent the highest amount (price * quantity) as total amount may include multiple purchase









/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
