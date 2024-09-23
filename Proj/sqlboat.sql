use boatLifestyle

create table Images(ImageId int PRIMARY KEY IDENTITY(1,1), ProductId int, ImageUrl nvarchar(200), foreign key(ProductId) references Products(ProductId));

select * from Images;

select * from Products

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating)
VALUES
( 'Boat Airdopes 621', 'TWS Earbuds with a massive charging case', 'Up to 150 hours playback', 2799.00, 70, 'Earbuds', 2000, 25, 4.7);

( 'Boat Airdopes 121v2', 'Wireless Earbuds with Bluetooth 5.0 and powerful sound', 'Up to 14 hours playback', 1299.00, 50, 'Earbuds', 2500, 10, 4.3),
( 'Boat Stone 1400', 'Portable Wireless Speaker with 30W sound', 'Up to 8 hours playback', 4499.00, 20, 'Speakers', 1500, 15, 4.6),
( 'Boat Rockerz 255 Pro+', 'Wireless Neckband with fast charging', 'Up to 16 hours playback', 1699.00, 100, 'Neckbands', 1800, 12, 4.4),
( 'Boat Airdopes 441', 'Truly wireless earbuds with IPX7 water resistance', 'Up to 20 hours playback', 1999.00, 80, 'Earbuds', 2100, 20, 4.5),
( 'Boat Stone 650', 'Bluetooth speaker with rugged design', 'Up to 7 hours playback', 1599.00, 30, 'Speakers', 1200, 8, 4.2),
( 'Boat Rockerz 550', 'Over-ear wireless headphones with thumping bass', 'Up to 20 hours playback', 1999.00, 60, 'Headphones', 1700, 18, 4.6),
( 'Boat BassHeads 100', 'In-ear wired earphones with extra bass', 'Wired, no playback limit', 399.00, 150, 'Earphones', 2500, 5, 4.1),
( 'Boat Watch Xtend', 'Smartwatch with Alexa built-in and multiple sports modes', 'Up to 7 days battery life', 2999.00, 40, 'Wearables', 900, 10, 4.3),
( 'Boat Stone 1200', '12W Bluetooth speaker with RGB lights', 'Up to 9 hours playback', 3199.00, 25, 'Speakers', 1100, 14, 4.4),


select * from Products


ALTER TABLE Products
ADD imgUrl VARCHAR(255);

select * from Products

select * from Products WHERE ProductName = 'Boat Airdopes 121v2';
UPDATE Products
SET imgUrl = 'https://www.boat-lifestyle.com/cdn/shop/products/airdopes-121-v2-blue_600x.png?v=1678773275'
WHERE ProductName = 'Boat Airdopes 121v2';

UPDATE Products
SET imgUrl = 'https://www.boat-lifestyle.com/cdn/shop/products/3f80dac4-2126-4838-993d-1faf28e0330d_600x.png?v=1625045518'
WHERE ProductName = 'Boat Stone 1400';

UPDATE Products
SET imgUrl = 'https://www.boat-lifestyle.com/cdn/shop/products/rockerz-255-pro-activeblack_600x.png?v=1632909759'
WHERE ProductName = 'Boat Rockerz 255 Pro+';

UPDATE Products
SET imgUrl = 'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/7f87efa7-f1a4-46c7-b77a-0cb200c34bd1_600x.png?v=1678976147'
WHERE ProductName = 'Boat Airdopes 441';

UPDATE Products
SET imgUrl = 'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/0efd1f68-8988-4e8a-98bc-6690ccb6a828_600x.png?v=1625045298'
WHERE ProductName = 'Boat Stone 650';

UPDATE Products
SET imgUrl = 'https://www.boat-lifestyle.com/cdn/shop/products/0d8d4561-6985-44ba-9e70-4998c40f4df3_600x.png?v=1625046144'
WHERE ProductName = 'Boat Rockerz 550';

UPDATE Products
SET imgUrl = 'https://www.boat-lifestyle.com/cdn/shop/products/c3d0fbbd-9479-4351-bf04-91136da2ae91_600x.png?v=1656750183'
WHERE ProductName = 'Boat BassHeads 100';

UPDATE Products
SET imgUrl = 'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/main2_529ecf13-c993-4fe7-a2d6-9357f1a47db4_600x.png?v=1650387008'
WHERE ProductName = 'Boat Watch Xtend';

UPDATE Products
SET imgUrl = 'https://www.boat-lifestyle.com/cdn/shop/products/e57bbbe7-5e99-4c43-8cf8-0ddd42caf3d3_600x.png?v=1633518105'
WHERE ProductName = 'Boat Stone 1200';

UPDATE Products
SET imgUrl = 'https://www.boat-lifestyle.com/cdn/shop/products/main-img_AD621_1_600x.png?v=1616230788'
WHERE ProductName = 'Boat Airdopes 621';

select * from Products




CREATE TABLE Users (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    UserName NVARCHAR(20) NOT NULL UNIQUE,
    Password NVARCHAR(20) NOT NULL, -- Store hashed passwords
    MobileNo BIGINT NOT NULL CHECK (LEN(CAST(MobileNo AS VARCHAR(20))) = 10), -- For 10-digit mobile numbers
    EmailId NVARCHAR(255) NOT NULL UNIQUE,
    Name NVARCHAR(100) NOT NULL,
    Role NVARCHAR(20)
);

drop table Users

INSERT INTO Users (UserName, Password, MobileNo, EmailId, Name, Role)
VALUES ('Kalyan', 'Kalyan123', 9876543210, 'kalyan@gmail.com', 'Venkata Kalyan', 'Admin');

INSERT INTO Users (UserName, Password, MobileNo, EmailId, Name, Role)
VALUES ('Hari', 'Hari123', 9123456789, 'hari@gmail.com', 'Hari Avvaru', 'User');

select * from Users;

delete from Products;


INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Airdopes 161', 
 'Wireless Earbuds with Massive Playback of upto 40 Hours, IPX5 Water & Sweat Resistance, IWP Technology, Type C Interface', 
 '40 Hours Playback', 
 2490, 
 70,  -- Random quantity
 'Earbuds', 
 110,  -- Random reviewers count
 64, 
 4.6,  -- Random rating
 'https://www.boat-lifestyle.com/cdn/shop/products/main_black_fa1c6ec3-93b7-443e-ae82-d5eeb34258f8_600x.png?v=1641206192'
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Airdopes 131', 
 'Wireless Earbuds with upto 60 Hours Playback, 13mm Drivers, IWP Technology, 650mAh Charging Case', 
 '60 Hours Playback', 
 2990, 
 80,  -- Random quantity
 'Earbuds', 
 130,  -- Random reviewers count
 73, 
 4.5,  -- Random rating
 'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/616b4ead-bbd9-4a16-aeab-8d331a16f697_600x.png?v=1642405569'
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Airdopes Alpha', 
 'True Wireless Earbuds with 35 Hours Playback, 13mm Drivers, ENx™ Tech, ASAP™ Charge, IWP™ Technology', 
 '35 Hours Playback', 
 3490, 
 85,  -- Random quantity
 'Earbuds', 
 140,  -- Random reviewers count
 72, 
 4.7,  -- Random rating
 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/Artboard2_12_800x.png?v=1688471069'
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Airdopes Ultra Plus', 
 'Wireless Earbuds with 50 Hours Playback, BEAST™ Mode, Quad Mics with ENx™ Tech, IWP™ Technology', 
 '50 Hours Playback', 
 4990, 
 75,  -- Random quantity
 'Earbuds', 
 160,  -- Random reviewers count
 68, 
 4.8,  -- Random rating
 'https://www.boat-lifestyle.com/cdn/shop/files/1_0a8efc28-6769-4c24-8465-757f61129d62_1300x.png?v=1710852876'
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Airdopes 131 Elite ANC', 
 'Wireless Earbuds with ANC up to 32dB, Transparency Mode, 60 Hours Playback, ENx™ Technology', 
 '60 Hours Playback', 
 6990, 
 90,  -- Random quantity
 'Earbuds', 
 180,  -- Random reviewers count
 82, 
 4.9,  -- Random rating
 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/131ANCELITEMainimg.56-N_800x.png?v=1718778092'
);

select * from Products

drop table  Products
drop table Images

CREATE TABLE Products (
    ProductId INT PRIMARY KEY IDENTITY,
    ProductName nVARCHAR(max) not null,
    ProductDescription nvarchar(max) not null,
    ProductSpecification nvarchar(max) not null,
    UnitPrice int not null,
    Quantity INT not null,
    Category nvarchar(max) not null,
    ReviewsCount INT not null,
    Discount INT not null,
    Rating FLOAT not null,
	imgUrl varchar(255)
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Rockerz 450 Pro', 
 'Wireless Headphone with 40mm Massive Drivers, Mountainous Playback Upto 70 Hours, Asap Charge', 
 '70 Hours Playback', 
 3990, 
 65,  -- Random quantity
 'Wireless Headphones', 
 50,  -- Random reviewers count
 37, 
 4.5,  -- Random rating
 'https://www.boat-lifestyle.com/cdn/shop/products/main-img3_600x.png?v=1616562632'
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Rockerz 551ANC', 
 'Noise Cancelling Wireless Headphone, Upto 100 Hours Playback, 40mm Driver, ENx™ Technology, Custom-tuned EQ Mode', 
 '100 Hours Playback', 
 7990, 
 75,  -- Random quantity
 'Wireless Headphones', 
 80,  -- Random reviewers count
 61, 
 4.7,  -- Random rating
 'https://www.boat-lifestyle.com/cdn/shop/products/Nirvana551ANCPackaging1.3_1800x.png?v=1681413243'
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Nirvana 751 ANC', 
 'Wireless Headphone with 40 mm drivers, 65 Hours (54 Hours with ANC), Type C, Dual Compatibility', 
 '65 Hours Playback', 
 7990, 
 70,  -- Random quantity
 'Wireless Headphones', 
 60,  -- Random reviewers count
 49, 
 4.6,  -- Random rating
 'https://www.boat-lifestyle.com/cdn/shop/products/main3_b6563f96-f1a1-4915-b686-d4e37232ec3c_600x.png?v=1685707922'
);




INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('Bassheads 900 Pro', 
 'Wired Headphone with 40mm Drivers, 5W Power Output, 1.5m Cable Length, USB Plug & Play', 
 'In-line microphone', 
 4990, 
 30,  -- Random quantity
 'Wired Headphones', 
 40,  -- Random reviewers count
 0, 
 4.4,  -- Random rating
 'https://www.boat-lifestyle.com/cdn/shop/files/Bassheads_900_Pro.1982_800x.png?v=1723613040'
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Bassheads 900', 
 'Wired Earphones with 40mm Drivers, Compact & Foldable, In-line microphone, Super Bass', 
 'In-line Microphone', 
 2490, 
 50,  -- Random quantity
 'Wired Headphones', 
 66,  -- Given reviewers count
 10, 
 4.2,  -- Random rating
 'https://www.boat-lifestyle.com/cdn/shop/products/8ec58553-3255-48ec-929e-4838215b640c_1500x.png?v=1625046271'
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Immortal 400', 
 '7.1 Channel Sound', 
 ' ',  -- No detailed specification provided
 6990, 
 40,  -- Random quantity
 'Wired Headphones', 
 66,  -- Given reviewers count
 5, 
 4.3,  -- Random rating
 'https://www.boat-lifestyle.com/cdn/shop/products/main-700_600x.png?v=1643632678'
);

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Rockerz 109', 'Wireless Earphone with 40H Playback, ASAP™ Charge, BEAST™ Mode, ENx™ Technology', '40 hours playback', 2490, 25, 'Neckbands', 120, 48, 4.5, 'https://www.boat-lifestyle.com/cdn/shop/files/Rockerz_109.1752-removebg-preview_500x.png?v=1691659034'),

('boAt Rockerz 255 Pro', 'Bluetooth Earphone with 10mm drivers, Up to 40 Hours Nonstop Playback, Type-C charging, ASAP™ Charge', '40 hours playback', 3990, 30, 'Neckbands', 85, 72, 4.3, 'https://www.boat-lifestyle.com/cdn/shop/files/R255Pro_-FI_Black03_1000x.jpg?v=1713177293'),

('boAt Rockerz 235 Pro', 'Wireless Bluetooth Neckbands with Up To 20 Hours Playback, BEAST™ Mode, ENx™ Technology', '20 hours playback', 1990, 40, 'Neckbands', 55, 55, 4.2, 'https://www.boat-lifestyle.com/cdn/shop/files/original-imagduskzzt9vapa_416x.webp?v=1685696798'),

('boAt Rockerz 255 Z plus', 'Wireless Neckband with 50 Hours Playback, BEAST™ Mode, ASAP™️ Charge, AI ENx™ Technology', '50 hours playback', 4990, 20, 'Neckbands', 76, 76, 4.6, 'https://www.boat-lifestyle.com/cdn/shop/files/Artboard2-3_a3dde17a-9a46-4c8f-af55-573e00c697d5_1000x.png?v=1721238348'),

('boAt Rockerz 245 V2 Pro', 'Wireless Bluetooth Earphones with 30 Hours Playback, 10mm drivers, ENx™️ Technology, BEAST™️ Mode', '30 hours playback', 3490, 35, 'Neckbands', 73, 73, 4.4, 'https://www.boat-lifestyle.com/cdn/shop/files/Rockerz245V2Pro_Black_600x.png?v=1693369391');



select * from Products


INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Wave Sigma 3', 'Smartwatch with 2.01 Display, BT Calling, 700+ Active Modes, Emergency SOS, Live Sports Updates', 'BT calling', 8990, 40, 'Smartwatch', 12,83, 4.5, 'https://www.boat-lifestyle.com/cdn/shop/files/WaveSigma3_FIs_ActiveBlack01_1300x.png?v=1715601060'),

('boAt Ultima Connect Max', 'Biggest 2 (5.08 cm) HD Display Smartwatch, BT Calling, Vibrations and DND Mode, 100+ Sports Mode', 'BT calling', 8990, 35, 'Smartwatch', 10, 81, 4.3, 'https://www.boat-lifestyle.com/cdn/shop/files/Artboard2_13_1000x.jpg?v=1685614028'),

('boAt Ultima Chronos', 'Smartwatch with 1.96" (4.97cm) AMOLED Display, BT Calling, Crest OS+, 100+ Watch Faces', 'AMOLED Display', 8990, 30, 'Smartwatch', 7, 82, 4.4, 'https://www.boat-lifestyle.com/cdn/shop/files/Chronos_Black__2_-removebg-preview_500x.png?v=1690528562');


INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('Bassheads 100C', 'Wired Earphone with Type-C Jack, boAt Signature Sound, In-built Mic, Integrated Controls', 'In-Line Microphone', 1990, 50, 'Wired Earphones', 99,65, 4.4, 'https://www.boat-lifestyle.com/cdn/shop/files/51oria-baXL._SL1500_1500x.jpg?v=1725100148'),

('Bassheads 100', 'Wired Earphone with 10mm Dynamic Drivers, Stylish Hawk-inspired Design, Super Extra Bass', 'In-Line Microphone', 999, 60, 'Wired Earphones', 87, 67, 4.5, 'https://www.boat-lifestyle.com/cdn/shop/products/c3d0fbbd-9479-4351-bf04-91136da2ae91_600x.png?v=1656750183'),

('Bassheads 220', 'Wired Earphones with Passive Noise Cancellation, Super Extra Bass, Hands-free communication', 'Noise Insulation', 999, 40, 'Wired Earphones', 51,50, 4.3, 'https://www.boat-lifestyle.com/cdn/shop/products/1neon_3105765c-e660-47c7-9deb-3482720df176_1500x.png?v=1592544752');

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Aavante Bar 1550', '2.1 Channel Bluetooth Soundbar with 120W Output, Sleek & Superior Design, 60W Wired Subwoofer', 'Wired Subwoofer', 16990, 30, 'Soundbars', 96, 44,  4.2, 'https://www.boat-lifestyle.com/cdn/shop/products/aavante-bar-1500-1_2fcd5acb-56af-4fff-bc39-c9c336772378_600x.png?v=1622623083'),

('boAt Aavante Bar A2060 Dolby', '160W Dolby Soundbar, 2.1 Channel with Wired Subwoofer, Master Remote Control, Multi Connectivity', 'Dolby Audio', 10498, 25, 'Soundbars',10 , 56, 4.5, 'https://www.boat-lifestyle.com/cdn/shop/files/Artboard2_f0509c29-ea58-48c7-9645-98f6e9e62611_1000x.jpg?v=1714719644'),

('boAt Aavante Bar 5500DA', 'Dolby Atmos Soundbar with 500W Immersive Sound, 5.1.2 Channel with Wired Woofer, Multi-connectivity', 'Dolby Atmos', 59990, 15, 'Soundbars',57, 65, 4.7, 'https://www.boat-lifestyle.com/cdn/shop/files/AB5500FI02_600x.jpg?v=1696495223');


INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Stone 190 Pro', 'Portable Bluetooth Speaker with 5W boAt Signature Sound, 12 Hours Playback, TWS Functionality', '12 Hours Playback', 2990, 40, 'Wireless Speakers', 11, 62, 4.1, 'https://www.boat-lifestyle.com/cdn/shop/files/S190PRO_FI_Blue_01_1500x.jpg?v=1718688920'),

('boAt Stone 180', 'Bluetooth Speaker with 5W signature sound, Up to 8 Hours of Playtime, IPX7 Sweat & Water Resistance', '8 Hours Playback', 2490, 35, 'Wireless Speakers',43, 48, 3.9, 'https://www.boat-lifestyle.com/cdn/shop/products/d3e46a5d-cda9-49f8-a24f-b975fdd50689_600x.png?v=1625046393'),

('boAt Stone 350', 'Wireless Speaker with 10W Stereo Sound, 12 Hours Nonstop Playtime, Lightweight Design, BT, TF Card & AUX Compatible', '12 Hours Playback', 3490, 30, 'Wireless Speakers', 16, 56, 4.3, 'https://www.boat-lifestyle.com/cdn/shop/files/71ep9KYzuhL._SY450_450x.jpg?v=1686125450');

INSERT INTO Products (ProductName, ProductDescription, ProductSpecification, UnitPrice, Quantity, Category, ReviewsCount, Discount, Rating, imgUrl) 
VALUES 
('boAt Immortal 200', '', '7.1 Channel Sound', 4990, 45, 'Gaming Headphones',17, 61,  4.2, 'https://www.boat-lifestyle.com/cdn/shop/products/Untitled-1_bf68149e-5ab0-4761-8116-d558ef0e178a_800x.png?v=1679352411'),

('boAt Immortal 400', '', '7.1 Channel Sound', 6990, 40, 'Gaming Headphones',15, 66, 4.5, 'https://www.boat-lifestyle.com/cdn/shop/products/main-700_600x.png?v=1643632678'),

('boAt Immortal 171', 'Wireless Gaming Earbuds 40ms Low Latency with BEAST™ Mode, 40 Hours Gameplay, IPX5 Water, BT v5.3', 'Gaming Earpods', 3499, 50, 'Gaming Headphones', 13,61,  4.0, 'https://www.boat-lifestyle.com/cdn/shop/files/IM_171_Packaging_2.3-removebg-preview_500x.png?v=1689669471');


select * from Products

update Products set Discount=48 where ProductId=27





INSERT INTO Images (ProductId, ImageUrl) VALUES (1, 'https://www.boat-lifestyle.com/cdn/shop/products/main_black_fa1c6ec3-93b7-443e-ae82-d5eeb34258f8_600x.png?v=1641206192');
INSERT INTO Images (ProductId, ImageUrl) VALUES (1, 'https://www.boat-lifestyle.com/cdn/shop/files/Black4_600x.jpg?v=1718273342');
INSERT INTO Images (ProductId, ImageUrl) VALUES (1, 'https://www.boat-lifestyle.com/cdn/shop/files/Black2_600x.jpg?v=1718273342');
INSERT INTO Images (ProductId, ImageUrl) VALUES (1, 'https://www.boat-lifestyle.com/cdn/shop/files/Black1_600x.jpg?v=1718273342');
INSERT INTO Images (ProductId, ImageUrl) VALUES (1, 'https://www.boat-lifestyle.com/cdn/shop/files/Black5_600x.jpg?v=1718273342');


INSERT INTO Images (ProductId, ImageUrl) VALUES (2, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/616b4ead-bbd9-4a16-aeab-8d331a16f697_600x.png?v=1642405569');
INSERT INTO Images (ProductId, ImageUrl) VALUES (2, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/131-3_8863bc99-3cea-41b0-a81e-e3a171cdf64b_600x.jpg?v=1726219161');
INSERT INTO Images (ProductId, ImageUrl) VALUES (2, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/ad131FIAD131TypeCcopy_800x.jpg?v=1718351991');
INSERT INTO Images (ProductId, ImageUrl) VALUES (2, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/FeatureImagesAD131BV5.0copy_800x.jpg?v=1718351991');
INSERT INTO Images (ProductId, ImageUrl) VALUES (2, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/FeatureImagesAD131VAcopy_800x.jpg?v=1718351991');

INSERT INTO Images (ProductId, ImageUrl) VALUES (3, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/Artboard2_12_800x.png?v=1688471069');
INSERT INTO Images (ProductId, ImageUrl) VALUES (3, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/Artboard3_14_800x.png?v=1688471068');
INSERT INTO Images (ProductId, ImageUrl) VALUES (3, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/Artboard3_14_800x.png?v=1688471068');
INSERT INTO Images (ProductId, ImageUrl) VALUES (3, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/Artboard1copy3_5_800x.png?v=1688471301');
INSERT INTO Images (ProductId, ImageUrl) VALUES (3, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/Artboard_1__5_-removebg-preview_1_500x.png?v=1688471466');


INSERT INTO Images (ProductId, ImageUrl) VALUES (4, 'https://www.boat-lifestyle.com/cdn/shop/files/1_0a8efc28-6769-4c24-8465-757f61129d62_1300x.png?v=1710852876');
INSERT INTO Images (ProductId, ImageUrl) VALUES (4, 'https://www.boat-lifestyle.com/cdn/shop/files/asapcharge_800x.jpg?v=1710852875');
INSERT INTO Images (ProductId, ImageUrl) VALUES (4, 'https://www.boat-lifestyle.com/cdn/shop/files/BeastMode_1x1_5434270e-f678-4e83-a6f4-8654688521ed_800x.jpg?v=1710852877');
INSERT INTO Images (ProductId, ImageUrl) VALUES (4, 'https://www.boat-lifestyle.com/cdn/shop/files/enc_800x.jpg?v=1710852876');
INSERT INTO Images (ProductId, ImageUrl) VALUES (4, 'https://www.boat-lifestyle.com/cdn/shop/files/enc_800x.jpg?v=1710852876');


INSERT INTO Images (ProductId, ImageUrl) VALUES (5, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/131ANCELITEMainimg.56-N_800x.png?v=1718778092');
INSERT INTO Images (ProductId, ImageUrl) VALUES (5, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/131ANCELITEMainimg.56-N_800x.png?v=1718778092');
INSERT INTO Images (ProductId, ImageUrl) VALUES (5, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/3-Black_800x.png?v=1718778092');
INSERT INTO Images (ProductId, ImageUrl) VALUES (5, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/5-SignatureSound_800x.png?v=1718778092');
INSERT INTO Images (ProductId, ImageUrl) VALUES (5, 'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/6-Enx_800x.png?v=1718778092');

INSERT INTO Images (ProductId, ImageUrl) VALUES (6, 'https://www.boat-lifestyle.com/cdn/shop/products/main-img3_600x.png?v=1616562632');
INSERT INTO Images (ProductId, ImageUrl) VALUES (6, 'https://www.boat-lifestyle.com/cdn/shop/files/61VwktiLvLL._SY450_450x.jpg?v=1685709047');
INSERT INTO Images (ProductId, ImageUrl) VALUES (6, 'https://www.boat-lifestyle.com/cdn/shop/files/611BUCXQROL._SY450_450x.jpg?v=1685709048');
INSERT INTO Images (ProductId, ImageUrl) VALUES (6, 'https://www.boat-lifestyle.com/cdn/shop/files/611BUCXQROL._SY450_450x.jpg?v=1685709048');
INSERT INTO Images (ProductId, ImageUrl) VALUES (6, 'https://www.boat-lifestyle.com/cdn/shop/files/81RRZdi9rAL._SY450_450x.jpg?v=1685709049');

select * from Images;




select * from USERS;


create table Cart
(
	CartId INT PRIMARY KEY IDENTITY(1,1),
	ProductId INT not null,
	UserId int not null,
	Quantity int not null,
	foreign key(UserId) references Users(UserId),
	foreign key(ProductId) references Products(ProductId)
)

insert into Cart(ProductId, UserId, Quantity) values( 1, 2, 1);

select * from Cart


