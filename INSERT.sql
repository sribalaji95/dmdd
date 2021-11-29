------------------------------------------------------------------------------------------------------------------------
------- INSERT STATEMENTS -------
------------------------------------------------------------------------------------------------------------------------

-- TRUNCATE TABLE FEEDBACK
-- TRUNCATE TABLE SUPPLY
-- TRUNCATE TABLE VENDOR
-- TRUNCATE TABLE SHIPPING
-- TRUNCATE TABLE STORAGE
-- TRUNCATE TABLE RECEIPT
-- TRUNCATE TABLE DISCOUNT
-- TRUNCATE TABLE [ORDER_LINE]
-- TRUNCATE TABLE [ORDER]
-- TRUNCATE TABLE PRODUCT
-- TRUNCATE TABLE CATEGORY
-- TRUNCATE TABLE MEMBERSHIP
-- TRUNCATE TABLE EMPLOYEE_JOB
-- TRUNCATE TABLE JOB_ROLE
-- TRUNCATE TABLE EMPLOYEE_DEPARTMENT
-- TRUNCATE TABLE DEPARTMENT
-- TRUNCATE TABLE CUSTOMER
-- TRUNCATE TABLE EMPLOYEE


INSERT INTO EMPLOYEE
    (
    First_Name,Last_Name,DOB,Gender,Grade,SSN_First_Five,SSN_Last_Four,[Type],[Status],Manager_ID,Mobile,Email_ID,Street,Unit,City,[State],Country,Postal_Code
    )
VALUES
    ('James', 'Butt', '12/8/87', 'F', 'A', 63883, 4572, 'Full-Time', 'Active', '', '5046218927', 'jbutt@gmail.com', '6649 N Blue Gum St', '', 'New Orleans', 'LA', 'USA', '15983'),
    ('Josephine', 'Darakjy', '9/28/51', 'F', 'B', 25436, 4160, 'Full-Time', 'Active', '', '8102929388', 'josephine_darakjy@darakjy.org', '4 B Blue Ridge Blvd', '', 'Brighton', 'MI', 'USA', '53866'),
    ('Art', 'Venere', '1/1/70', 'F', 'E', 28591, 7145, 'Full-Time', 'Active', '', '8566368749', 'art@venere.org', '8 W Cerritos Ave ', '54', 'Bridgeport', 'NJ', 'USA', '81847'),
    ('Lenna', 'Paprocki', '9/26/72', 'M', 'H', 67861, 6622, 'Full-Time', 'Active', '', '9073854412', 'lpaprocki@hotmail.com', '639 Main St', '', 'Anchorage', 'AK', 'USA', '43971'),
    ('Donette', 'Foller', '5/2/79', 'F', 'C', 74453, 9378, 'Contractor', 'In-Active', '', '5135701893', 'donette.foller@cox.net', '34 Center St', '', 'Hamilton', 'OH', 'USA', '23579'),
    ('Simona', 'Morasca', '12/29/92', 'M', 'C', 25367, 7732, 'Full-Time', 'Active', '', '4195032484', 'simona@morasca.com', '3 Mcauley Dr', '', 'Ashland', 'OH', 'USA', '84496'),
    ('Mitsue', 'Tollner', '9/8/76', 'F', 'F', 15774, 6317, 'Full-Time', 'In-Active', '', '7735736914', 'mitsue_tollner@yahoo.com', '7 Eads St', '', 'Chicago', 'IL', 'USA', '54497'),
    ('Leota', 'Dilliard', '3/4/51', 'F', 'A', 33492, 3642, 'Full-Time', 'In-Active', '', '4087523500', 'leota@hotmail.com', '7 W Jackson Blvd', '', 'San Jose', 'CA', 'USA', '51184'),
    ('Sage', 'Wieser', '11/15/83', 'F', 'D', 27491, 7829, 'Full-Time', 'In-Active', '', '6054142147', 'sage_wieser@cox.net', '5 Boston Ave ', '88', 'Sioux Falls', 'SD', 'USA', '92552'),
    ('Kris', 'Marrier', '8/2/54', 'F', 'C', 95868, 1344, 'Full-Time', 'Active', '', '4106558723', 'kris@gmail.com', '228 Runamuck Pl ', '2808', 'Baltimore', 'MD', 'USA', '94090'),
    ('Minna', 'Amigon', '1/24/86', 'M', 'G', 49775, 9181, 'Full-Time', 'Active', '', '2158741229', 'minna_amigon@yahoo.com', '2371 Jerrold Ave', '', 'Kulpsville', 'PA', 'USA', '66011'),
    ('Abel', 'Maclead', '11/8/78', 'F', 'E', 29201, 6915, 'Full-Time', 'In-Active', '', '6313353414', 'amaclead@gmail.com', '37275 St  Rt 17m M', '', 'Middle Island', 'NY', 'USA', '53168'),
    ('Kiley', 'Caldarera', '1/5/53', 'F', 'G', 48297, 3060, 'Contractor', 'In-Active', '', '3104985651', 'kiley.caldarera@aol.com', '25 E 75th St ', '69', 'Los Angeles', 'CA', 'USA', '14905'),
    ('Graciela', 'Ruta', '11/13/93', 'F', 'H', 39580, 5668, 'Contractor', 'In-Active', '', '4407808425', 'gruta@cox.net', '98 Connecticut Ave Nw', '', 'Chagrin Falls', 'OH', 'USA', '96207'),
    ('Cammy', 'Albares', '1/24/75', 'M', 'H', 70798, 5400, 'Contractor', 'Active', '', '9565376195', 'calbares@gmail.com', '56 E Morehead St', '', 'Laredo', 'TX', 'USA', '12232')
;

INSERT INTO CUSTOMER
    (
    First_Name,Last_Name,DOB,Gender,Mobile,Email_ID,Street,Unit,City,[State],Country,Postal_Code

    )
VALUES
    ('Allene', 'Iturbide', '11/6/71', 'F', '7156626764', 'allene_iturbide@cox.net', '1 Central Ave', '', 'Stevens Point', 'WI', 'USA', '16666'),
    ('Chanel', 'Caudy', '1/25/63', 'F', '9133882079', 'chanel.caudy@caudy.org', '86 Nw 66th St ', '8673', 'Shawnee', 'KS', 'USA', '70267'),
    ('Ezekiel', 'Chui', '2/1/76', 'M', '4106691642', 'ezekiel@chui.com', '2 Cedar Ave ', '84', 'Easton', 'MD', 'USA', '38185'),
    ('Willow', 'Kusko', '6/6/64', 'F', '2125824976', 'wkusko@yahoo.com', '90991 Thorburn Ave', '', 'New York', 'NY', 'USA', '89951'),
    ('Bernardo', 'Figeroa', '11/27/84', 'M', '9363363951', 'bfigeroa@aol.com', '386 9th Ave N', '', 'Conroe', 'TX', 'USA', '19278'),
    ('Ammie', 'Corrio', '10/30/73', 'M', '6148019788', 'ammie@corrio.com', '74874 Atlantic Ave', '', 'Columbus', 'OH', 'USA', '26449'),
    ('Francine', 'Vocelka', '12/18/68', 'F', '5059773911', 'francine_vocelka@vocelka.com', '366 South Dr', '', 'Las Cruces', 'NM', 'USA', '59760'),
    ('Ernie', 'Stenseth', '3/29/57', 'M', '2017096245', 'ernie_stenseth@aol.com', '45 E Liberty St', '', 'Ridgefield Park', 'NJ', 'USA', '73620'),
    ('Albina', 'Glick', '8/9/75', 'F', '7329247882', 'albina@glick.com', '4 Ralph Ct', '', 'Dunellen', 'NJ', 'USA', '41672'),
    ('Alishia', 'Sergi', '7/29/55', 'M', '2128601579', 'asergi@gmail.com', '2742 Distribution Way', '', 'New York', 'NY', 'USA', '41792'),
    ('Solange', 'Shinko', '10/28/96', 'F', '5049799175', 'solange@shinko.com', '426 Wolf St', '', 'Metairie', 'LA', 'USA', '55038'),
    ('Jose', 'Stockham', '8/19/89', 'M', '2126758570', 'jose@yahoo.com', '128 Bransten Rd', '', 'New York', 'NY', 'USA', '45555'),
    ('Rozella', 'Ostrosky', '4/12/72', 'F', '8058326163', 'rozella.ostrosky@ostrosky.com', '17 Morena Blvd', '', 'Camarillo', 'CA', 'USA', '49551'),
    ('Valentine', 'Gillian', '11/30/54', 'M', '2108129597', 'valentine_gillian@gmail.com', '775 W 17th St', '', 'San Antonio', 'TX', 'USA', '90063'),
    ('Kati', 'Rulapaugh', '2/6/70', 'M', '7854637829', 'kati.rulapaugh@hotmail.com', '6980 Dorsett Rd', '', 'Abilene', 'KS', 'USA', '37995')
;



INSERT INTO DEPARTMENT
    (Dept_Name,Department_Status)
VALUES
    ('Inventory Management', 1),
    ('Store Management', 1),
    ('Reception', 1),
    ('Tech Support', 1);

INSERT INTO EMPLOYEE_DEPARTMENT
    (Dept_ID,Emp_ID,[Start_Date],[End_Date])
VALUES
    (303, 101, '11/29/19', ''),
    (301, 102, '9/15/19', ''),
    (300, 103, '8/12/19', ''),
    (303, 104, '7/31/19', ''),
    (303, 105, '10/2/19', ''),
    (303, 106, '10/25/19', ''),
    (301, 107, '5/6/19', ''),
    (300, 108, '1/23/19', ''),
    (300, 109, '8/15/19', ''),
    (300, 110, '6/15/20', ''),
    (300, 111, '7/11/20', ''),
    (302, 112, '10/5/20', ''),
    (300, 113, '9/17/20', ''),
    (301, 114, '2/25/20', ''),
    (302, 101, '5/3/19', '3/28/20'),
    (302, 100, '2/21/19', '2/6/20'),
    (300, 105, '3/29/19', '1/13/20'),
    (301, 108, '2/6/19', '3/21/20');


INSERT INTO JOB_ROLE
    (Job_Name,Job_Status)
VALUES
    ('Manager', 1),
    ('Staff', 1),
    ('Custodial', 1),
    ('Inventory Staff', 1),
    ('IT Support', 1);




INSERT INTO EMPLOYEE_JOB
    (Role_ID,Emp_ID,Job_Status,[Start_Date])
VALUES
    (201, 110, 1, '8/4/19'),
    (204, 109, 1, '2/8/19'),
    (203, 100, 1, '7/22/19'),
    (203, 110, 1, '2/7/19'),
    (204, 106, 1, '1/23/19'),
    (201, 102, 1, '11/18/19'),
    (201, 109, 1, '1/29/20'),
    (201, 111, 1, '9/28/19'),
    (204, 100, 1, '12/15/19'),
    (201, 100, 1, '2/18/19'),
    (202, 109, 1, '11/1/19'),
    (202, 103, 1, '3/30/19'),
    (202, 102, 1, '12/26/19'),
    (201, 106, 1, '7/18/19'),
    (204, 107, 1, '1/16/19'),
    (204, 108, 1, '9/9/19'),
    (200, 106, 1, '1/13/19'),
    (200, 107, 1, '12/11/19'),
    (203, 113, 1, '3/11/19'),
    (200, 112, 1, '6/30/19'),
    (201, 108, 1, '5/13/19'),
    (200, 103, 1, '3/21/19'),
    (201, 104, 1, '1/9/20'),
    (203, 112, 1, '5/28/19'),
    (202, 104, 1, '9/23/19');




INSERT INTO MEMBERSHIP
    (Customer_ID,Points,Validity)
VALUES
    (400, 0, '11/24/25'),
    (401, 0, '5/25/25'),
    (402, 0, '10/6/25'),
    (403, 0, '2/24/25'),
    (404, 0, '2/24/25'),
    (405, 0, '3/17/25'),
    (406, 0, '10/31/25'),
    (407, 0, '5/30/25'),
    (408, 0, '4/5/25'),
    (409, 0, '5/20/25'),
    (410, 0, '11/28/25'),
    (411, 0, '6/8/25'),
    (412, 0, '8/18/25'),
    (413, 0, '7/2/25'),
    (414, 0, '7/2/25');


INSERT INTO CATEGORY
    ([Name],[Description])
VALUES
    ('Baby', ''),
    ('Beer, Wine & Spirits', ''),
    ('Beverages', 'tea, coffee, soda, juice, Kool-Aid, hot chocolate, water, etc.'),
    ('Bread & Bakery', ''),
    ('Breakfast & Cereal', ''),
    ('Canned Goods & Soups', ''),
    ('Condiments/Spices & Bake', ''),
    ('Cookies, Snacks & Candy', ''),
    ('Dairy, Eggs & Cheese', ''),
    ('Deli & Signature Cafe', ''),
    ('Flowers', ''),
    ('Frozen Foods', ''),
    ('Produce', 'Fruits & Vegetables'),
    ('Grains, Pasta & Sides', ''),
    ('International Cuisine', ''),
    ('Meat & Seafood', ''),
    ('Miscellaneous', 'gift cards/wrap, batteries, etc.'),
    ('Paper Products', 'toilet paper, paper towels, tissues, paper plates/cups, etc.'),
    ('Cleaning Supplies', 'laundry detergent, dishwashing soap, etc.'),
    ('Health & Beauty, Personal Care & Pharmacy', 'pharmacy items, shampoo, toothpaste'),
    ('Pet Care', ''),
    ('Pharmacy', ''),
    ('Tobacco', ''),
    ('Kitchen Supplies', ''),
    ('Clothes', '')
;



INSERT INTO PRODUCT
    (Category_ID,[Name],[Brand],[Description],CostPrice,SellPrice)
VALUES
    (800, 'Powder', 'J&J', '1 Ounce', 2, 3),
    (800, 'Baby Face Cream', 'J&J', '12 Ounce', 15, 20),
    (801, 'White Rum', 'bacardi', '1 lt', 12, 15),
    (801, 'Strong Beer', 'budweiser', '650 ml', 8, 10),
    (802, 'Mineral Water', 'Aqua', '1 lt', 1, 2),
    (802, 'Soda', 'Coco Cola', '200 ml', 1, 2),
    (803, 'White Bread', 'Hood', '1 lb', 2, 3),
    (803, 'Brown Bread', 'Britannia', '1 lb', 2, 4),
    (804, 'Kellogg Chocos', 'kellogg', '1 lb', 3, 4),
    (804, 'Kellogg Cornflakes', 'kellogg', '1 lb', 2, 3),
    (805, 'Boiled Chickpea', 'Chef Special', '1 lb', 4, 5),
    (805, 'Baked Black Beans', 'Chef Special', '1 lb', 4, 6),
    (806, 'Sugar Fine', 'Walmart', '1 lb', 8, 10),
    (806, 'Salt', 'Amazon', '1 lb', 2, 4),
    (807, 'Doritos', 'Amazon', '0.3 Ounce', 9, 12),
    (807, 'Chocolates', 'Lindt', '1 Ounce', 12, 18),
    (808, 'Slim Milk', 'Hood', '4 lb', 5, 6),
    (808, 'Full Fat Milk', 'Good Gather', '4 lb', 4, 6),
    (809, 'Laptops', 'Dell', '1 qty', 650, 700),
    (809, 'Earphones', 'Apple', '1 qty', 150, 180),
    (810, 'Red Roses', 'Local Farmer', '1 dozen', 3, 5),
    (810, 'White Lily', 'Local Farmer', '1 dozen', 2, 4),
    (811, 'Fried Rice', 'Knoor', '.5 lb', 5, 7),
    (811, 'Bacon Pizza', 'Good Gather', '1 Full', 12, 15),
    (812, 'Tomatoes', 'Local Farmer', '1 lb', 2, 3),
    (812, 'Apples', 'Local Farmer', '1 lb', 5, 7),
    (812, 'Banana', 'Local Farmer', '1 lb', 1, 2),
    (813, 'Wheat Durum Pasta', 'Maggie', '1 lb', 1, 2),
    (813, 'Red Rice', 'Laxmi', '10 lb', 21, 29),
    (814, 'Thai lemon rice', 'Tasty Bite', '8.8 oz', 7, 11),
    (814, 'Pure Seasme oil', 'Lee Kum Lee', '15 oz', 4, 7),
    (815, 'Fish Salmon', 'Fulton Fish', '1 lb', 8, 10),
    (815, 'Chicken Breast', 'Good Gather', '1 lb', 7, 10),
    (816, 'Paracetemol', 'Tylenol', '1 Packet', 12, 14),
    (816, 'Hand Sanitizer', 'Dettol', '500ml', 2, 3),
    (817, 'Classmate Blank Notebook', 'Classmate', '1 qty', 3, 5),
    (817, 'Classmate Rulled Notebook', 'Classmate', '1 qty', 4, 6),
    (818, 'Arm & Hammer Liquid', 'Arm & Hammer', '2 lb', 9, 12),
    (818, 'Tide Liquid', 'Tide', '2 lb', 8, 12),
    (819, 'Pepsodent Red Toothpaste', 'Pepsodent', '.5 lb', 3, 5),
    (819, 'Colgate Salt Toothpaste', 'Colgate', '.5 lb', 4, 5),
    (820, 'Royal Canin For Cats', 'Royal Canin', '1 lb', 8, 11),
    (820, 'Royal Canin For Dogs', 'Royal Canin', '1 lb', 9, 12),
    (822, 'Marlboro Lights', 'marlboro', '1 pack of 20', 8, 10),
    (822, 'Marlboro Menthol', 'marlboro', '1 pack of 20', 8, 10),
    (823, 'Moisturizer', 'Olay', '50g', 20, 25),
    (823, 'Sunscreen', 'Cerave', '3oz', 30, 35),
    (823, 'Dishwash Liquid', 'Finish', '9 oz', 3, 5),
    (823, 'Bounty', 'Bounty', '2 Rolls', 5, 7),
    (824, 'Jackets', 'Zara', '1 pair', 40, 50),
    (824, 'Jeans', 'Levis', '1 pair', 30, 35)
;

INSERT INTO [ORDER]
    (Customer_ID,Employee_ID,[Date],Amount,Order_Type)
VALUES
(404,112,'7/27/21',72,'In-Store'),
(411,106,'8/30/21',40,'Online'),
(401,102,'5/17/21',48,'Online'),
(400,101,'6/15/21',49,'In-Store'),
(412,105,'6/14/21',295,'In-Store'),
(405,106,'7/20/21',3554,'In-Store'),
(407,107,'8/1/21',28,'Online'),
(408,104,'2/22/21',241,'Online'),
(400,109,'7/30/21',42,'In-Store'),
(414,107,'1/17/21',42,'Online'),
(403,109,'8/23/21',246,'Online'),
(408,102,'1/2/21',20,'In-Store'),
(405,113,'1/30/21',32,'Online'),
(405,109,'7/16/21',180,'In-Store'),
(404,112,'2/24/21',86,'In-Store'),
(409,102,'7/23/21',122,'In-Store'),
(400,101,'3/29/21',72,'Online'),
(405,106,'5/18/21',90,'In-Store'),
(403,108,'6/23/21',30,'Online'),
(400,100,'6/28/21',20,'In-Store'),
(406,104,'5/27/21',52,'Online'),
(413,101,'6/28/21',3725,'Online'),
(408,104,'7/10/21',7097,'Online'),
(412,111,'2/17/21',270,'Online')
;

INSERT INTO [ORDER_LINE]
    (Order_ID,Product_ID,ProductQuantity)
VALUES
    (614, 907, 2),
    (604, 922, 10),
    (620, 935, 1),
    (607, 902, 2),
    (605, 917, 9),
    (617, 903, 9),
    (605, 918, 5),
    (604, 945, 5),
    (600, 942, 6),
    (617, 913, 8),
    (607, 914, 9),
    (620, 940, 9),
    (607, 913, 10),
    (602, 911, 8),
    (618, 941, 6),
    (615, 932, 9),
    (614, 930, 3),
    (612, 910, 4),
    (620, 920, 8),
    (606, 905, 7),
    (601, 921, 10),
    (606, 920, 2),
    (606, 921, 1),
    (604, 901, 5),
    (616, 912, 7),
    (622, 903, 1),
    (603, 941, 3),
    (609, 916, 1),
    (615, 915, 5),
    (618, 924, 2),
    (616, 908, 4),
    (623, 940, 4),
    (609, 921, 9),
    (608, 911, 5),
    (608, 909, 4),
    (614, 924, 1),
    (607, 925, 9),
    (603, 904, 8),
    (622, 921, 5),
    (610, 901, 6),
    (610, 915, 7);


INSERT INTO DISCOUNT
    (Discount_Rate,Discount_Status,[Description],[Start_Date],[End_Date])
VALUES
    (5, 'Y', 'Regular Customer', '1/1/19', '1/1/50'),
    (25, 'Y', 'Black Friday', '11/21/21', '11/28/21'),
    (15, 'N', 'Cyber Monday', '11/28/21', '11/30/21'),
    (15, 'N', 'Christmas Day', '12/23/21', '12/27/21')
;

-- INSERT INTO RECEIPT
--     (Order_ID,Amount,Tax, Discount)
-- VALUES
--     (608, 0, 0, 3),
--     (604, 0, 0, 5),
--     (616, 0, 0, 2),
--     (611, 0, 0, 9),
--     (606, 0, 0, 6),
--     (606, 0, 0, 8),
--     (623, 0, 0, 8),
--     (619, 0, 0, 3),
--     (616, 0, 0, 7),
--     (624, 0, 0, 2),
--     (627, 0, 0, 3),
--     (612, 0, 0, 4),
--     (611, 0, 0, 1),
--     (610, 0, 0, 8),
--     (601, 0, 0, 9),
--     (610, 0, 0, 8),
--     (601, 0, 0, 5),
--     (606, 0, 0, 4),
--     (611, 0, 0, 4)
-- ;


INSERT INTO STORAGE
    ([Name],[Location])
VALUES
    ('Shop and Stop', 'Mission Main'),
    ('U Get All', 'Bolyston'),
    ('Planet Star', 'Park Drive'),
    ('HayMarket', 'Downtown')
;


INSERT INTO SHIPPING
    (Storage_ID, Product_ID, ShippingLotSize)
VALUES
    (1301, 922, 67),
    (1303, 938, 47),
    (1301, 939, 15),
    (1302, 911, 24),
    (1300, 915, 52),
    (1302, 910, 75),
    (1301, 924, 49),
    (1303, 928, 37),
    (1300, 913, 1),
    (1302, 925, 22),
    (1302, 923, 61),
    (1302, 942, 2),
    (1301, 910, 30),
    (1302, 944, 73),
    (1303, 905, 28),
    (1302, 902, 21),
    (1300, 930, 29),
    (1303, 940, 61),
    (1302, 924, 68),
    (1303, 911, 81),
    (1300, 946, 59),
    (1301, 948, 48),
    (1302, 941, 39),
    (1302, 935, 10),
    (1300, 931, 74),
    (1301, 912, 45),
    (1303, 909, 12),
    (1301, 916, 37),
    (1303, 948, 89),
    (1300, 927, 40),
    (1302, 932, 12),
    (1300, 937, 30),
    (1303, 907, 48),
    (1302, 916, 81),
    (1300, 903, 41),
    (1302, 950, 37),
    (1303, 924, 4),
    (1300, 906, 6),
    (1300, 949, 15),
    (1300, 936, 66),
    (1302, 946, 89),
    (1300, 917, 56),
    (1302, 940, 43),
    (1303, 947, 2),
    (1302, 930, 43),
    (1303, 923, 23),
    (1302, 928, 21)
;


INSERT INTO VENDOR
    (Vendor_Name, Mobile, Email_ID,Street, Unit, City,[State], Country, Postal_Code )
VALUES
    ('Newtec Inc', 6029069419, 'arminda@parvis.com', '1 Huntwood Ave', '984', 'Phoenix', 'AZ', 'USA', '85017'),
    ('Creative Business Systems', 3172341135, 'reita.leto@gmail.com', '55262 N French Rd', '290', 'Indianapolis', 'IN', 'USA', '46240'),
    ('Dal Tile Corporation', 3153044759, 'yolando@cox.net', '422 E 21st St', '1000', 'Syracuse', 'NY', 'USA', '13214'),
    ('Edward S Katz', 8564875412, 'lizette.stem@aol.com', '501 N 19th Ave', '967', 'Cherry Hill', 'NJ', 'USA', '8002'),
    ('Oh My Goodknits Inc', 5162121915, 'gpawlowicz@yahoo.com', '455 N Main Ave', '583', 'Garden City', 'NY', 'USA', '11530'),
    ('Redeker, Debbie', 5013081040, 'cdeleo@deleo.com', '1844 Southern Blvd', '509', 'Little Rock', 'AR', 'USA', '72202'),
    ('Desert Sands Motel', 6515912583, 'chantell@yahoo.com', '2023 Greg St', '910', 'Saint Paul', 'MN', 'USA', '55101'),
    ('Cummins Southern Plains Inc', 2153253042, 'dyum@yahoo.com', '63381 Jenks Ave', '644', 'Philadelphia', 'PA', 'USA', '19134'),
    ('Lehigh Furn Divsn Lehigh', 9858907262, 'larae_gudroe@gmail.com', '6651 Municipal Rd', '742', 'Houma', 'LA', 'USA', '70360'),
    ('United Van Lines Agent', 6319577624, 'latrice.tolfree@hotmail.com', '81 Norris Ave', '744', 'Ronkonkoma', 'NY', 'USA', '11779'),
    ('Capitol Reporters', 9165913277, 'kerry.theodorov@gmail.com', '6916 W Main St', '869', 'Sacramento', 'CA', 'USA', '95827'),
    ('Kwik Kopy Printing', 2086492373, 'dhidvegi@yahoo.com', '9635 S Main St', '889', 'Boise', 'ID', 'USA', '83704'),
    ('Centro Inc', 5125875746, 'fannie.lungren@yahoo.com', '17 Us Highway 111', '951', 'Round Rock', 'TX', 'USA', '78664')
;


INSERT INTO SUPPLY
    (Vendor_ID, Product_ID, Placed_Date, Amount)
VALUES
    (1001, 917, '3/17/20', 208),
    (1002, 946, '5/10/20', 432),
    (1009, 906, '9/6/20', 353),
    (1005, 938, '7/16/20', 341),
    (1000, 926, '2/12/20', 236),
    (1001, 939, '6/17/20', 291),
    (1005, 904, '3/19/20', 447),
    (1007, 938, '2/27/20', 399),
    (1007, 924, '7/5/20', 282),
    (1007, 935, '6/21/20', 232),
    (1004, 909, '1/9/20', 383),
    (1002, 901, '5/14/20', 209),
    (1006, 936, '9/2/20', 277),
    (1010, 943, '1/16/20', 354),
    (1007, 910, '6/3/20', 283),
    (1007, 930, '6/25/20', 310),
    (1010, 948, '8/26/20', 257),
    (1008, 918, '8/16/20', 492),
    (1011, 907, '1/10/20', 330),
    (1003, 923, '2/29/20', 229),
    (1007, 910, '3/24/20', 316),
    (1011, 938, '5/24/20', 490),
    (1006, 916, '3/31/20', 229),
    (1002, 945, '9/15/20', 459),
    (1011, 932, '5/13/20', 321),
    (1001, 925, '7/20/20', 458),
    (1010, 916, '2/2/20', 390);


INSERT INTO FEEDBACK
    (Order_ID, Rating, Comments)
VALUES
    (604, 5, 'Pls write some comments below'),
    (621, 1, 'charged extra than the listed price'),
    (613, 2, 'Rude Delivery man'),
    (612, 2, 'Can be better'),
    (619, 5, 'Fresh Vegetables'),
    (610, 4, 'Loves the products'),
    (606, 1, 'Rude sales person'),
    (617, 3, 'Expensive'),
    (602, 4, 'Value for money'),
    (622, 1, 'sub standard product'),
    (609, 4, 'easy exchange'),
    (623, 2, 'Not worth the money'),
    (603, 5, 'Would strongly recommend'),
    (618, 3, 'Big and spacious store'),
    (605, 1, 'Took a long time to delivery')
;





