CREATE DATABASE "GROUP25_Project";
USE GROUP25_Project;

-- Create Tables
-- Create tables must follow below sequences ：
-- Step1. Tables without FK ：Profit, Category, Platform, Compatibility, Address, Reviews, Score, UserAccount

CREATE TABLE dbo.Profit
 (
  ProfitID INT IDENTITY NOT NULL PRIMARY KEY,
  ProfitType VARCHAR(45) NOT NULL,
  PaymentMethod VARCHAR(45),
  AgeRestriction VARCHAR(45),
  Description VARCHAR(400),
  CONSTRAINT check_age CHECK (AgeRestriction LIKE '>%' OR AgeRestriction LIKE '%+')
 );

INSERT dbo.Profit (ProfitType, PaymentMethod, AgeRestriction, Description)
VALUES('Free', 'None', '>0', 'Mandala Coloring Book is worth for free where a lot of person will use it as a try'),
('Paid', 'AliPay', '18+', 'Wrinkles and rejuvenation is a beauty app where users use it for further use'),
('InAppPaid', 'ApplePay', '12+', 'Sephora: Skin Care, Beauty Makeup & Fragrance Shop is also for beauty'),
('Paid', 'ApplePay', '0+', '104 Looking for a job - looking for a job, looking for a job, looking for a part-time job, health checkup, resume, treatment room'),
('Paid', 'ApplePay', '>12', 'Buff Thun - Daily Free Webtoon / Comics / Web Fiction / Mini Game'),
('Free', 'None', '>12', '[Ranobbe complete free] Novelba - Free app that you can read and write novels'),
('InAppPaid', 'AliPay', '9+', 'Sky People (SPI): A secure blind date through authentication by Seoul National University'),
('InAppPaid', 'ApplePay', '4+', 'At home - rental · real estate · room finding application such as apartment · apartment'),
('Paid', 'Wechat', '0+', 'Sniper 3D Gun Shooter: Free Shooting Games - FPS'),
('Free', 'None', '0+', 'Traditional Chinese Medicine Fangfang Liangfang Daquan - Practical and ancient Chinese medicine and old prescriptions for the treatment of various incurable diseases'),
('InAppPaid', 'ApplePay', '9+', 'Zaatar w Zeit'),
('Paid', 'AliPay', '12+', 'Casino X - Free Online Slots'),
('Free', 'None', '>0', 'Lunar Calendar'),
('Paid', 'AliPay', '18+', 'Ay Yıldız Keyboard'),
('InAppPaid', 'ApplePay', '12+', 'AZ Immune Related AEManagement'),
('Paid', 'ApplePay', '0+', 'Loreal - BA Makeup'),
('Paid', 'ApplePay', '>12', 'BC Hospital Wait Times'),
('Free', 'None', '>12', 'BD Field Force'),
('InAppPaid', 'AliPay', '9+', 'Movement BE'),
('InAppPaid', 'ApplePay', '4+', 'Talking Boyfriend'),
('Paid', 'Wechat', '0+', 'Learn Bulgarian Free'),
('Free', 'None', '0+', 'BH Connect'),
('InAppPaid', 'ApplePay', '9+', 'BJs Bingo & Gaming Casino'),
('Paid', 'AliPay', '12+', 'BJ & Jamie'),
('Free', 'None', '>0', 'BM Wallet'),
('Paid', 'AliPay', '18+', 'Dormi - Baby Monitor'),
('InAppPaid', 'ApplePay', '12+', 'HBO GO: Stream with TV Package'),
('Paid', 'ApplePay', '0+', 'Bill Miller Bar-B-Q Store Ops'),
('Paid', 'ApplePay', '>12', 'B R COACHINGS'),
('Free', 'None', '>12', 'MagicLight BT'),
('InAppPaid', 'AliPay', '9+', 'DHV accountancy BV'),
('InAppPaid', 'ApplePay', '4+', 'Bitcoin Bx (Thailand)'),
('Paid', 'Wechat', '0+', 'Color by Disney'),
('Free', 'None', '0+', 'California Cop Assist CA Cop'),
('InAppPaid', 'ApplePay', '9+', 'Antenna Tool'),
('Free', 'None', '>12', 'CE KISIO'),
('InAppPaid', 'AliPay', '9+', 'CE HPJM 69'),
('InAppPaid', 'ApplePay', '4+', 'All Info about Cg'),
('Paid', 'Wechat', '0+', 'Legit Check App by Ch Daniel'),
('Paid', 'AliPay', '12+', 'CD View');

CREATE TABLE dbo.Category
 (
  CategoryID INT IDENTITY NOT NULL PRIMARY KEY,
  CategoryName VARCHAR(45) NOT NULL
 );

DROP TABLE dbo.Category

INSERT dbo.Category (CategoryName)
VALUES('Beauty'),
('Medical'),
('Shopping'),
('Sport'),
('Life'),
('Accounting'),
('Finance'),
('TAX'),
('Electronic'),
('Child');

CREATE TABLE dbo.Platform
(
 PlatformID INT IDENTITY NOT NULL PRIMARY KEY,
 PlatformName VARCHAR(100) NOT NULL
);

INSERT dbo.Platform (PlatformName)
VALUES('Android, PC'),
('PC, Mac'),
('Mac, Linux'),
('PC, Android'),
('Android, Mac, PC'),
('Linux'),
('PC'),
('Mac, PC'),
('PC'),
('Android, Mac, Linux'),
('Android, PC'),
('PC, Mac'),
('Mac, Linux'),
('PC, Android'),
('Android, Mac, PC'),
('Linux'),
('Android'),
('Mac, PC'),
('PC'),
('Android, Mac, Linux'),
('Android, PC'),
('PC, Mac'),
('Mac, Linux'),
('PC, Android'),
('Android, Mac, PC'),
('Linux'),
('PC, Mac'),
('Mac, PC'),
('PC'),
('Android, Mac, Linux'),
('Android, PC'),
('PC, Mac'),
('Mac, Linux'),
('PC, Android'),
('Android, Mac, PC'),
('Linux, Mac'),
('PC'),
('Mac, PC'),
('PC'),
('Android, Mac, Linux');

CREATE TABLE dbo.Compatibility
(
 CompatibilityID int IDENTITY NOT NULL PRIMARY KEY,
 DevicesVersions VARCHAR(400),
 SystemVersions VARCHAR(400)
);

INSERT dbo.Compatibility (DevicesVersions, SystemVersions)
VALUES('140.56.1', 'SYN00780'),
('279.67.89', 'TSYN99765B001'),
('278.001.887', 'LSYN798'),
('279.67.89', 'TSYN87603901'),
('140.989.250', 'SYN98076'),
('140.090.76', 'SYN21780'),
('279.65.8765', 'TSYN009871'),
('278.278.098', 'LSYN552597'),
('279.842.0971', 'TSYN874'),
('140.76534.22', 'SYN0943'),
('140.56.1', 'SYN03450'),
('279.67.89', 'TSYN93525B001'),
('278.001.887', 'LS632N8'),
('279.67.89', 'TSYN5633901'),
('140.989.250', 'SYSDF076'),
('140.090.76', 'SDH80'),
('279.65.8765', 'TSSDFDS009871'),
('278.278.098', 'LSYNSDGSDF597'),
('279.842.0971', 'TSDSF4'),
('140.76534.22', 'SYNFGH43'),
('140.56.1', 'SYN0XCV'),
('279.67.89', 'TSYNXCV765B001'),
('278.001.887', 'LVC98'),
('279.67.89', 'TSYBXJH7603901'),
('140.989.250', 'SYN9SFDG076'),
('140.090.76', 'SYNDSF0'),
('279.65.8765', 'TSSDF09871'),
('278.278.098', 'LKD52597'),
('279.842.0971', 'TSY5TDS74'),
('140.76534.22', 'SSDF3R3'),
('140.56.1', 'SYSDF560'),
('279.67.89', 'TSSDF634001'),
('278.001.887', 'LSD528'),
('279.67.89', 'TDSF4501'),
('140.989.250', 'SASDB2456'),
('140.090.76', 'SSDF3252'),
('279.65.8765', 'T32S45'),
('278.278.098', 'L2SDF234257'),
('279.842.0971', 'TSADF4362R'),
('140.76534.22', 'SDFNE643');

CREATE TABLE dbo.Address
(
 AddressID INT IDENTITY NOT NULL PRIMARY KEY,
 Role VARCHAR(45) NOT NULL,
 Country VARCHAR(45),
 State VARCHAR(100),
 City VARCHAR(100),
 Street VARCHAR(400),
 ZipCode VARCHAR(100)
);

INSERT dbo.Address (Role, Country, State, City, Street, ZipCode)
VALUES('User', 'USA', 'MA', 'BOSTON', '75 Saint', '02120'),
('User', 'CHINA', 'LN', 'SY', 'ShengLi', '100142'),
('User', 'JAPAN', 'HJL', 'JK', 'Tangjiubi', '16556'),
('User', 'JAPAN', 'HYT', 'ZX', 'Kinomi', '98542'),
('User', 'USA', 'NYC', 'NewYork', '66 Flower', '08740'),
('User', 'USA', 'MA', 'BOSTON', '360 Huntington', '07740'),
('User', 'CHINA', 'BJS', 'BJ', 'Babao', '100897'),
('User', 'JAPAN', 'JNB', 'LK', 'Toshiba', '99754'),
('User', 'JAPAN', 'DBF', 'HJ', 'Sanyong', '76359'),
('User', 'USA', 'HN', 'Washington', 'K street', '975410'),
('Company', 'USA', 'MA', 'BOSTON', '75 Saint', '02120'),
('Company', 'CHINA', 'LN', 'SY', 'ShengLi', '100142'),
('Company', 'JAPAN', 'HJL', 'JK', 'Tangjiubi', '16556'),
('Company', 'JAPAN', 'HYT', 'BJK', 'Kinomi', '98542'),
('Company', 'USA', 'NYC', 'NewYork', '67 Flower', '08740'),
('Company', 'USA', 'MA', 'BOSTON', '361 Huntington', '07740'),
('Company', 'CHINA', 'BJS', 'AV', 'Babap', '100897'),
('Company', 'JAPAN', 'JNB', 'LK', 'Tokoba', '99754'),
('Company', 'JAPAN', 'DBF', 'HJ', 'Sanking', '76359'),
('Company', 'USA', 'HN', 'Washington', 'K street', '975410')

CREATE TABLE dbo.Reviews
(
 ReviewID INT IDENTITY NOT NULL PRIMARY KEY,
 Sentiment VARCHAR(45),
 SentimentScore FLOAT,
 Comments VARCHAR(500)
);

INSERT dbo.Reviews (Sentiment, SentimentScore, Comments)
VALUES('Positive', '5', 'Ten best food promote good health Good health essential long healthy lifestyle make habit eat foods promote good health. Eat fruits veggies every day.'),
('Positive', '4', 'Love It I lost 6Pounds far 215 209'),
('Positive', '4.4', 'Nothing special! Could find anything useful!'),
('Negative', '2.3', 'Just try.. So far good'),
('Nan', '3.9', 'Just so so.'),
('Positive', '4.8', 'Placing order easy especially paper copy Rx. I will update review I receive order rebate.'),
('Positive', '4.6', 'I wish maps countries around world.'),
('Negative', '1.9', 'Deeply disappointed. My free 21 days longer works. It asking high price meditations. I expect Oprah involved scam. I respect her.'),
('Nan', '3.3', 'I am 21 days FREE meditation attraction. At first I could see program free. But update keeps showing order continue I pay.'),
('Nan', '3.2', 'It is great app, easy works well'),
('Positive', '5', 'Does says get avg pro ads worth money I think cheap I like it.'),
('Positive', '4', 'Do like full-screen ads hijacking device time? If so, you! Seriously though, devs pursue another line work embarrassingly pitiful.'),
('Positive', '4.4', 'Poor Software update - issues fixes Since I got update phone freezes, run properly I cant even adjust volume anymore says internal error. This phone bloody expensive old. Except quality'),
('Negative', '2.3', 'Good small business'),
('Nan', '3.9', 'I need visit mom sometime week its hot outside. I thrilled find Tuesday 15 degrees cooler. The helps planning.'),
('Positive', '4.3', 'crashes startup latest update. To day AccuWeather never stable version type device time. Thats happens novice developers.'),
('Positive', '4.2', 'Sucks. Definitely Sucks'),
('Negative', '2.9', 'I 1500 conservative whole time yet make profit, anyone actually make profit this?'),
('Nan', '3.6', 'opens 1st time reinstall again.'),
('Nan', '3.2', 'Was able log once, never again.'),
('Positive', '4.9', 'Amazing. It even mental illnesses. Although, ask a lot questions pimples...'),
('Positive', '5', 'Very bad app. Not recommended'),
('Positive', '4.4', 'Awesome writing quotes pictures font colours. Download now.It much better others.'),
('Negative', '2.3', 'Not Another Damn Cloud Account! I want another blasted Cloud account merely open file held device. Nor I supply login credentials services like Facebook Google.'),
('Nan', '3.9', 'Basic things like save button exist. How stuff something basic? What going designed thing?'),
('Positive', '4.7', 'If wish EXPORT, give birthdate!!!! What? A mobile never asks this. Not interested.'),
('Positive', '4.6', 'This best hands annoying like create bountiful picture seconds due easy navagation. I highly suggest it.'),
('Negative', '1.9', 'Adobe Photoshop limited need another make simple Cut Out. The watermark work all. I recommend app.'),
('Nan', '3.3', 'Ive using since android first came G1, recent update longer works. I hope update released make work'),
('Nan', '3.2', 'Thanks fix lag. One thing could often let us win 3XMass potions Daily Quest.'),
('Positive', '5', 'Can u pls fix lag keeps glitching across map go black screen lag without actually getting kicked game'),
('Positive', '4', 'Fix lag add private servers others players fun without interrupted'),
('Positive', '4.2', 'Fun game. Crashes/pauses quite often though, experience anyway'),
('Negative', '2.6', 'Very best game soo lag? Please fix problem..'),
('Nan', '4.1', 'Uninstall... Even cant start play game I killed every time I pushed start...'),
('Positive', '4.8', 'Sale u work except it..hey u baster u know public.. When u know u like again.....'),
('Positive', '4.2', 'Splendid, simply marvellous, amazing'),
('Negative', '2.1', 'Always say connection wifi 101% working good. Cant anything apps. Need website.'),
('Nan', '3.3', 'Can almost anything app! Its like mini version photoshop'),
('Nan', '3.4', 'What happen map Search update? The map longer shows I search listing');

CREATE TABLE dbo.Score
(
 ScoreID INT IDENTITY NOT NULL PRIMARY KEY,
 Score INT NOT NULL,
 CONSTRAINT check_score CHECK (Score>0 AND Score<=5)
);

INSERT dbo.Score (Score)
VALUES('2'), ('5'),
('3'),
('4'),
('3'),
('4'),
('5'),
('4'),
('3'),
('1'),
('5'),
('3'),
('2'),
('1'),
('3'),
('1'),
('5'),
('2'),
('3'),
('5'),
('1'),
('2'),
('3'),
('4'),
('5'),
('2'),
('2'),
('3'),
('4'),
('1'),
('2'),
('1'),
('2'),
('3'),
('4'),
('5'),
('5'),
('2'),
('1'),
('1');

CREATE TABLE dbo.UserAccount
(
 UserAccountID INT IDENTITY PRIMARY KEY NOT NULL,
 AccountNumber VARCHAR(100) NOT NULL,
 UserName VARCHAR(100),
 Password VARCHAR(100),
 LastLoginTime DATE,
 InAppPurchase FLOAT
);

INSERT dbo.UserAccount (AccountNumber, UserName, Password, LastLoginTime, InAppPurchase)
VALUES('C142167', 'Kirito', 'Kiritobin', '2019-06-12', '892.3'),
('C998546', 'Rbbkob', 'ranzhoudsb', '2018-08-25', '9865.3'),
('B7645092', 'Straberry', 'likethis', '2017-02-28', '19762.3'),
('C985462', 'PaulKing', 'Jgglom', '2019-02-07', '2755.3'),
('B7544582', 'JOKER', 'dontlikeeverything', '2000-02-18', '2.3'),
('C14214f', 'Kirito2', 'Kiritobin22', '2011-12-31', '165.3'),
('C998g46', 'Rbbkob2', 'ranzhoudsb22', '2018-04-25', '8567.3'),
('B76gs092', 'Straberry2', 'likethis22', '2017-11-22', '192.3'),
('C98gk62', 'PaulKing2', 'Jgglom22', '2014-01-22', '941.2'),
('B7dhv582', 'JOKER2', 'dontlikeeverything22', '2009-04-16', '712.4'),
('DA142167', 'Kirito', 'Kiritobin', '2019-06-12', '892.3'),
('C99SADF546', 'Rbbkob', 'ranzhoudsb', '2018-08-25', '9865.3'),
('B764SD92', 'Straberry', 'likethis', '2017-02-28', '19762.3'),
('C985462', 'PaulKing', 'Jgglom', '2019-02-07', '2755.3'),
('BFDG44582', 'JOKER', 'dontlikeeverything', '2000-02-18', '2.3'),
('CSD344f', 'Kirito2', 'Kiritobin22', '2011-12-31', '165.3'),
('C99ADF456', 'Rbbkob2', 'ranzhoudsb22', '2018-04-25', '8567.3'),
('B7BA4592', 'Straberry2', 'likethis22', '2017-11-22', '192.3'),
('CSDF43262', 'PaulKing2', 'Jgglom22', '2014-01-22', '941.2'),
('BA4582', 'JOKER2', 'dontlikeeverything22', '2009-04-16', '712.4'),
('C1GSFHT56167', 'Kirito', 'Kiritobin', '2019-06-12', '892.3'),
('C9DFG345', 'Rbbkob', 'ranzhoudsb', '2018-08-25', '9865.3'),
('B76FAD45', 'Straberry', 'likethis', '2017-02-28', '19762.3'),
('C9DF4', 'PaulKing', 'Jgglom', '2019-02-07', '2755.3'),
('AD45', 'JOKER', 'dontlikeeverything', '2000-02-18', '2.3'),
('C14DFG32414f', 'Kirito2', 'Kiritobin22', '2011-12-31', '165.3'),
('CSG45', 'Rbbkob2', 'ranzhoudsb22', '2018-04-25', '8567.3'),
('AFD45', 'Straberry2', 'likethis22', '2017-11-22', '192.3'),
('AFD42', 'PaulKing2', 'Jgglom22', '2014-01-22', '941.2'),
('B7FDG345', 'JOKER2', 'dontlikeeverything22', '2009-04-16', '712.4'),
('C1DSF435', 'Kirito', 'Kiritobin', '2019-06-12', '892.3'),
('DFG45', 'Rbbkob', 'ranzhoudsb', '2018-08-25', '9865.3'),
('BDF45', 'Straberry', 'likethis', '2017-02-28', '19762.3'),
('ADFG435', 'PaulKing', 'Jgglom', '2019-02-07', '2755.3'),
('DFG345', 'JOKER', 'dontlikeeverything', '2000-02-18', '2.3'),
('DF435', 'Kirito2', 'Kiritobin22', '2011-12-31', '165.3'),
('CFG43', 'Rbbkob2', 'ranzhoudsb22', '2018-04-25', '8567.3'),
('SD45', 'Straberry2', 'likethis22', '2017-11-22', '192.3'),
('DFG45H3', 'PaulKing2', 'Jgglom22', '2014-01-22', '941.2'),
('SDF345', 'JOKER2', 'dontlikeeverything22', '2009-04-16', '712.4');

-- STEP2
-- Create tables having FK of created tables and referenced by other tables
CREATE TABLE dbo.App
(
 AppID INT IDENTITY NOT NULL PRIMARY KEY,
 AppName VARCHAR(200) NOT NULL,
 Size FLOAT,
 Price FLOAT,
 CurrentVersion VARCHAR(100),
 InstallQuantity INT,
 AgeRestriction VARCHAR(45),
 CompatibilityID INT NOT NULL --FK
 REFERENCES Compatibility(CompatibilityID),
 PlatformID INT NOT NULL --FK
 REFERENCES Platform(PlatformID),
 ProfitID INT NOT NULL  --FK
 REFERENCES Profit(ProfitID)
);

INSERT dbo.App (AppName, Size, Price, CurrentVersion, InstallQuantity, AgeRestriction, CompatibilityID, PlatformID, ProfitID)
VALUES('Beauty Selfie Camera', '25.5', '0', '8.012', '98662', '18+', 1, 1, 1),
('Quick PDF Scanner + OCR FREE', '102.4', '1.5', '3.55', '108683', '0+', 2, 2, 2),
('Blendr - Chat, Flirt & Meet', '398.2', '3.5', '2.34', '1273678', '12+', 3, 3, 3),
('Russian Dating & Chat for Russian speaking RusDate', '87.2', '0', '6.25', '87623', '0+', 4, 4, 4),
('Video chat live advices', '33.2', '889.2', '11.23', '1241', '18+', 5, 5, 5),
('Learn English with Wlingua', '25.5', '0', '8.012', '98662', '18+', 6, 6, 6),
('Khan Academy', '702.4', '1.5', '3.55', '1063683', '0+', 7, 7, 7),
('MEGOGO - Cinema and TV', '198.2', '3.5', '2.34', '1245678', '12+', 8, 8, 8),
('HISTORY: Watch TV Show Full Episodes & Specials', '817.2', '0', '6.25', '8523', '0+', 9, 9, 9),
('Digit Save Money Automatically', '35.2', '889.2', '11.23', '124891', '18+', 10, 10, 10),
('CR & CoC Private Server - Clash Barbarians PRO', '25.5', '0', '8.012', '98662', '18+', 11, 11, 11),
('Counter Deck Calculator for CR', '102.4', '1.5', '3.55', '108683', '0+', 12, 12, 12),
('Sniper Traning for CS GO', '398.2', '3.5', '2.34', '1273678', '12+', 13, 13, 13),
('CT-Guide & Positioning', '87.2', '0', '6.25', '87623', '0+', 14, 14, 14),
('Tech CU Mobile Banking', '33.2', '889.2', '11.23', '1241', '18+', 15, 15, 15),
('Amazing Fart Sounds', '25.5', '0', '8.012', '98662', '18+', 16, 16, 16),
('2 Amateur ham radio CW Morse code practice keys TX', '702.4', '1.5', '3.55', '1063683', '0+', 17, 17, 17),
('CW BLE Peripheral Simulator', '198.2', '3.5', '2.34', '1245678', '12+', 18, 18, 18),
('TI-Nspire CX Calculator Manual', '817.2', '0', '6.25', '8523', '0+', 19, 19, 19),
('FlexRelease CX', '35.2', '889.2', '11.23', '124891', '18+', 20, 20, 20),
('BibleRead En Cy Zh Yue', '25.5', '0', '8.012', '98662', '18+', 21, 21, 21),
('CZ-Cyberon Voice Commander', '102.4', '1.5', '3.55', '108683', '0+', 22, 22, 22),
('Download Manager for Android', '398.2', '3.5', '2.34', '1273678', '12+', 23, 23, 23),
('10,000 Quotes DB (Premium)', '87.2', '0', '6.25', '87623', '0+', 24, 24, 24),
('Driver Permit Test Prep DC DMV Drivers License Ed', '33.2', '889.2', '11.23', '1241', '18+', 25, 25, 25),
('Coloring Book for Me & Mandala', '25.5', '0', '8.012', '98662', '18+', 26, 26, 26),
('Técnico Legislativo Câmara Legislativa DF', '702.4', '1.5', '3.55', '1063683', '0+', 27, 27, 27),
('Boomerang from Instagram', '198.2', '3.5', '2.34', '1245678', '12+', 28, 28, 28),
('FrostWire: Torrent Downloader & Music Player', '817.2', '0', '6.25', '8523', '0+', 29, 29, 29),
('DN Advanced Service Coder', '35.2', '889.2', '11.23', '124891', '18+', 30, 30, 30),
('Do Not Disturb', '25.5', '0', '8.012', '98662', '18+', 31, 31, 31),
('Status For WhatsApp DP - pro', '102.4', '1.5', '3.55', '108683', '0+', 32, 32, 32),
('FINAL FANTASY DIMENSIONS', '398.2', '3.5', '2.34', '1273678', '12+', 33, 33, 33),
('Dr. Parker : Parking Simulator', '87.2', '0', '6.25', '87623', '0+', 34, 34, 34),
('SmartCircle Remote DS', '33.2', '889.2', '11.23', '1241', '18+', 35, 35, 35),
('DT Simple Interval Timer', '25.5', '0', '8.012', '98662', '18+', 36, 36, 36),
('DV-LOTTERY 2019 REGISTRATION', '702.4', '1.5', '3.55', '1063683', '0+', 37, 37, 37),
('VMAX IP Plus Mobile Client', '198.2', '3.5', '2.34', '1245678', '12+', 38, 38, 38),
('American Sniper City Fight Shooting Assassin', '817.2', '0', '6.25', '8523', '0+', 39, 39, 39),
('DZ Urgences', '35.2', '889.2', '11.23', '124891', '18+', 40, 40, 40);

CREATE TABLE dbo.Company
(
 CompanyID INT IDENTITY NOT NULL PRIMARY KEY,
 AddressID INT  --FK
 REFERENCES Address(AddressID),
 CompanyName VARCHAR(100) NOT NULL,
 CreationDate DATE,
 Email VARCHAR(100),
 PhoneNumber VARCHAR(100),
 WebPage VARCHAR(200),
 CompanyScale INT,
 CONSTRAINT check_scale CHECK (CompanyScale > 0)
);

INSERT dbo.Company (AddressID, CompanyName, CreationDate, Email, PhoneNumber, WebPage, CompanyScale)
VALUES('11', 'DeadRatGames', '2019-06-12', 'aiusgf@husky.neu.edu', '2865897626', 'www.hyasd.com', 600),
('12', 'Rainbow Runner software', '2018-03-22', 'aifsdf@husky.neu.edu', '6479729752', 'www.hdsfd.com', 400),
('13', 'NBTD Productions', '2017-03-29', 'afdfusgf@husky.neu.edu', '9765768923', 'www.ghdfg.com', 10000),
('14', 'Deca Games EOOD', '2019-05-14', 'saghf@husky.neu.edu', '8670876621', 'www.biasbd.com', 8700),
('15', 'Infinite Dreams Inc.', '2019-01-15', 'jhabshf@husky.neu.edu', '9765328621', 'www.sjabva.com', 9700),
('16', 'Memir Software Ltd.', '2013-08-27', 'jhnvba@husky.neu.edu', '9876439010', 'www.nbgga.com', 6000),
('17', 'Joaquin Grech', '2019-11-23', 'jhasgvf@husky.neu.edu', '1387980429', 'www.hjghfvcs.com', 9800),
('18', 'Dilemma Apps', '2015-11-17', 'gvahs@husky.neu.edu', '6758329087', 'www.liojh.com', 6090),
('19', 'TRADEGAME Lab Inc.', '2019-02-24', 'jbbuva@husky.neu.edu', '2769873209', 'www.ggga.com', 1100),
('20', 'Cape of Good Games', '2011-08-13', 'bhyga@husky.neu.edu', '8769853201', 'www.bgyabh.com', 9800);

CREATE TABLE dbo.Developer
 (
  DeveloperID INT IDENTITY NOT NULL PRIMARY KEY,
  CompanyID INT NOT NULL --FK
  REFERENCES Company(CompanyID),
  DeveloperName VARCHAR(100) NOT NULL,
  DeveloperScale INT,
  CreationDate DATE,
  CONSTRAINT check_dev_scale CHECK (DeveloperScale > 0)
 );

INSERT dbo.Developer (CompanyID, DeveloperName, DeveloperScale, CreationDate)
VALUES(1, 'Mighty Mighty Good Games1', 40, '2017-04-27'),
(1, 'Mighty Mighty Good Games2', 100, '2016-04-27'),
(1, 'Mighty Mighty Good Games3', 190, '2017-05-27'),
(2, 'Pomegranate Apps LLC1', 190, '2018-12-27'),
(2, 'Pomegranate Apps LLC2', 2090, '2016-09-17'),
(2, 'Pomegranate Apps LLC3', 490, '2012-02-10'),
(2, 'Pomegranate Apps LLC4', 890, '2018-09-14'),
(2, 'Pomegranate Apps LLC5', 100, '2018-05-15'),
(3, 'CrazySoft Limited1', 345, '2017-03-21'),
(3, 'CrazySoft Limited2', 123, '2014-02-16'),
(3, 'CrazySoft Limited3', 435, '2017-01-13'),
(3, 'CrazySoft Limited4', 3461, '2015-02-12'),
(4, 'Software River Solutions, Inc1', 123, '2010-08-09'),
(4, 'Software River Solutions, Inc2', 1234, '2010-08-01'),
(4, 'Software River Solutions, Inc3', 134, '2010-08-23'),
(4, 'Software River Solutions, Inc4', 876, '2010-08-21'),
(5, 'Optime Software LLC1', 170, '2017-04-21'),
(5, 'Optime Software LLC2', 240, '2017-04-22'),
(5, 'Optime Software LLC3', 686, '2017-04-15'),
(6, 'CH4 Productions1', 140, '2007-01-20'),
(6, 'CH4 Productions2', 50, '2007-02-20'),
(6, 'CH4 Productions3', 1230, '2007-03-20'),
(6, 'CH4 Productions4', 860, '2007-04-20'),
(6, 'CH4 Productions5', 1235, '2007-05-20'),
(6, 'CH4 Productions6', 2345, '2007-06-20'),
(7, 'Bubble Pop Software1', 456, '2009-08-10'),
(7, 'Bubble Pop Software2', 436, '2009-07-10'),
(7, 'Bubble Pop Software3', 2682, '2009-06-10'),
(8, 'AOBO Co.,Ltd1', 2342, '2009-01-02'),
(8, 'AOBO Co.,Ltd2', 2534, '2009-02-02'),
(8, 'AOBO Co.,Ltd3', 14, '2009-03-02'),
(8, 'AOBO Co.,Ltd4', 756, '2009-04-02'),
(9, 'Donut Games1', 435, '2010-07-17'),
(9, 'Donut Games2', 346, '2010-08-17'),
(9, 'Donut Games3', 563, '2010-09-17'),
(9, 'Donut Games4', 547, '2010-10-17'),
(10, 'Crazy Carpenter1', 245, '2001-01-14'),
(10, 'Crazy Carpenter2', 57623, '2001-02-14'),
(10, 'Crazy Carpenter3', 435, '2001-03-14'),
(10, 'Crazy Carpenter4', 6542, '2001-04-14');

CREATE TABLE dbo.AppUser
(
 UserID INT IDENTITY NOT NULL PRIMARY KEY,
 UserAccountID INT NOT NULL
 REFERENCES UserAccount(UserAccountID),
 AddressID INT  --FK
 REFERENCES Address(AddressID),
 FirstName VARCHAR(45) NOT NULL,
 LastName VARCHAR(45) NOT NULL,
 Gender VARCHAR(45),
 Email VARCHAR(100),
 PhoneNumber VARCHAR(100),
 Birthday DATE
);

INSERT INTO dbo.AppUser(UserAccountID, AddressID, FirstName, LastName, Gender, Email, PhoneNumber, Birthday)
VALUES(1 ,1, 'Jason', 'Paul', 'Male', 'jasonpaul@outlook.com', '6666666666', '1999-01-01'),
(2, 2, 'Nacy','Chris', 'Female', 'NacyChris@outlook.com', '123456789', '1889-02-01'),
(3, 3, 'Xin','Wang', 'Female', 'XinWang@outlook.com', '222222222', '2001-04-21'),
(4, 4, 'Lily','Sun', 'Female', 'LilySun@outlook.com', '212121212', '1989-06-13'),
(5, 5, 'May','Bin', 'Female', 'MayBin@outlook.com', '555555555', '2010-05-11'),
(6, 6, 'Rose','Galler', 'Male', 'RoseGaller@outlook.com', '888888888', '2014-05-21'),
(7, 7, 'Harved','Li', 'Male', 'HarvedLi@outlook.com', '777777777', '2000-05-01'),
(8, 8, 'Alice','Liu', 'Female', 'AliceLiu@outlook.com', '111111111', '1979-04-23'),
(9, 9, 'Crystal','Zhu', 'Female', 'CrystalZhu@outlook.com', '333333333', '2001-01-01'),
(10, 10, 'Lisa','Zhou', 'Female', 'LisaZhou@outlook.com', '023876455', '1996-08-01');

-- Create Trigger
-- Whenever the AppUser is changed, the LastLoginTime in UserAccount will change to current time
CREATE TRIGGER LastLoginTime
ON GROUP25_Project.dbo.AppUser
AFTER INSERT, UPDATE AS
BEGIN
	UPDATE dbo.UserAccount SET LastLoginTime = GETDATE()
	WHERE UserAccountID = ISNULL((SELECT UserAccountID FROM Inserted), (SELECT UserAccountID FROM Deleted))
END;

DROP TRIGGER LastLoginTime

UPDATE AppUser SET FirstName = 'Ok' WHERE UserAccountID = 2;

-- STEP3
-- Create tables having FK which refer before tables
CREATE TABLE dbo.AppDetail
(
 AppID INT NOT NULL PRIMARY KEY --PK
 REFERENCES App(AppID),
 CategoryID INT NOT NULL --FK
 REFERENCES Category(CategoryID),
 DeveloperID INT NOT NULL --FK
 REFERENCES Developer(DeveloperID),
 Language VARCHAR(300),
 Region VARCHAR(300)
);

INSERT INTO dbo.AppDetail (AppID, CategoryID, DeveloperID, Language, Region)
VALUES(1, 1, 1, 'AR, BN, BG, CA, HR, CS, DA, NL, EN, ET, FI, FR, DE, EL, GU, HE, HI, HU, ID, GA, IT, JA, KN, KO, LV, LT, MS, ML, MR, NB, PL, PT, RO, RU, SR, ZH, SK, SL, ES, SV, TA, TE, TH, ZH, TR, UK, UR, VI','AR, BN, BG, CA, HR, CS, DA, NL, EN, ET, FI, FR, DE, EL, GU, HE, HI, HU, ID, GA, IT, JA, KN, KO, LV, LT, MS, ML, MR, NB, PL, PT, RO, RU, SR, ZH, SK, SL, ES, SV, TA, TE, TH, ZH, TR, UK, UR, VI'),
(2, 2, 2, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(3, 3, 3, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(4, 4, 4, 'EN, FR, DE, JA','EN, FR, DE, JA'),
(5, 5, 5, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(6, 6, 6, 'DA, NL, EN, FI, FR, DE, IT, NO, PT, ES, SV','DA, NL, EN, FI, FR, DE, IT, NO, PT, ES, SV'),
(7, 7, 7, 'EN','EN'),
(8, 8, 8, 'EN, DE','EN, DE'),
(9, 9, 9, 'EN, JA, ZH','EN, JA, ZH'),
(10, 10, 10, 'EN, FR, DE','EN, FR, DE'),
(11, 1, 11, 'AR, BN, BG, CA, HR, CS, DA, NL, EN, ET, FI, FR, DE, EL, GU, HE, HI, HU, ID, GA, IT, JA, KN, KO, LV, LT, MS, ML, MR, NB, PL, PT, RO, RU, SR, ZH, SK, SL, ES, SV, TA, TE, TH, ZH, TR, UK, UR, VI','AR, BN, BG, CA, HR, CS, DA, NL, EN, ET, FI, FR, DE, EL, GU, HE, HI, HU, ID, GA, IT, JA, KN, KO, LV, LT, MS, ML, MR, NB, PL, PT, RO, RU, SR, ZH, SK, SL, ES, SV, TA, TE, TH, ZH, TR, UK, UR, VI'),
(12, 2, 12, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(13, 3, 13, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(14, 4, 14, 'EN, FR, DE, JA','EN, FR, DE, JA'),
(15, 5, 15, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(16, 6, 16, 'DA, NL, EN, FI, FR, DE, IT, NO, PT, ES, SV','DA, NL, EN, FI, FR, DE, IT, NO, PT, ES, SV'),
(17, 7, 17, 'EN','EN'),
(18, 8, 18, 'EN, DE','EN, DE'),
(19, 9, 19, 'EN, JA, ZH','EN, JA, ZH'),
(20, 10, 20, 'EN, FR, DE','EN, FR, DE'),
(21, 1, 21, 'AR, BN, BG, CA, HR, CS, DA, NL, EN, ET, FI, FR, DE, EL, GU, HE, HI, HU, ID, GA, IT, JA, KN, KO, LV, LT, MS, ML, MR, NB, PL, PT, RO, RU, SR, ZH, SK, SL, ES, SV, TA, TE, TH, ZH, TR, UK, UR, VI','AR, BN, BG, CA, HR, CS, DA, NL, EN, ET, FI, FR, DE, EL, GU, HE, HI, HU, ID, GA, IT, JA, KN, KO, LV, LT, MS, ML, MR, NB, PL, PT, RO, RU, SR, ZH, SK, SL, ES, SV, TA, TE, TH, ZH, TR, UK, UR, VI'),
(22, 2, 22, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(23, 3, 23, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(24, 4, 24, 'EN, FR, DE, JA','EN, FR, DE, JA'),
(25, 5, 25, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(26, 6, 26, 'DA, NL, EN, FI, FR, DE, IT, NO, PT, ES, SV','DA, NL, EN, FI, FR, DE, IT, NO, PT, ES, SV'),
(27, 7, 27, 'EN','EN'),
(28, 8, 28, 'EN, DE','EN, DE'),
(29, 9, 29, 'EN, JA, ZH','EN, JA, ZH'),
(30, 10, 30, 'EN, FR, DE','EN, FR, DE'),
(31, 1, 31, 'AR, BN, BG, CA, HR, CS, DA, NL, EN, ET, FI, FR, DE, EL, GU, HE, HI, HU, ID, GA, IT, JA, KN, KO, LV, LT, MS, ML, MR, NB, PL, PT, RO, RU, SR, ZH, SK, SL, ES, SV, TA, TE, TH, ZH, TR, UK, UR, VI','AR, BN, BG, CA, HR, CS, DA, NL, EN, ET, FI, FR, DE, EL, GU, HE, HI, HU, ID, GA, IT, JA, KN, KO, LV, LT, MS, ML, MR, NB, PL, PT, RO, RU, SR, ZH, SK, SL, ES, SV, TA, TE, TH, ZH, TR, UK, UR, VI'),
(32, 2, 32, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(33, 3, 33, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(34, 4, 34, 'EN, FR, DE, JA','EN, FR, DE, JA'),
(35, 5, 35, 'DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH','DA, NL, EN, FI, FR, DE, IT, JA, KO, NB, PL, PT, RU, ZH, ES, SV, ZH'),
(36, 6, 36, 'DA, NL, EN, FI, FR, DE, IT, NO, PT, ES, SV','DA, NL, EN, FI, FR, DE, IT, NO, PT, ES, SV'),
(37, 7, 37, 'EN','EN'),
(38, 8, 38, 'EN, DE','EN, DE'),
(39, 9, 39, 'EN, JA, ZH','EN, JA, ZH'),
(40, 10, 40, 'EN, FR, DE','EN, FR, DE');

CREATE TABLE dbo.SearchReviews
(
 AppID INT NOT NULL --FK
 REFERENCES App(AppID),
 UserAccountID INT NOT NULL --FK
 REFERENCES UserAccount(UserAccountID),
 ReviewID INT NOT NULL
 REFERENCES Reviews(ReviewID),
 CONSTRAINT PKSearchReviews PRIMARY KEY CLUSTERED
 (AppID, UserAccountID, ReviewID)
);

INSERT dbo.SearchReviews (AppID, UserAccountID, ReviewID)
VALUES(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30),
(31, 31, 31),
(32, 32, 32),
(33, 33, 33),
(34, 34, 34),
(35, 35, 35),
(36, 36, 36),
(37, 37, 37),
(38, 38, 38),
(39, 39, 39),
(40, 40, 40);

CREATE TABLE SearchScore
(
 ScoreID INT NOT NULL
 REFERENCES Score(ScoreID),
 AppID INT NOT NULL --FK&PK
 REFERENCES App(AppID),
 UserAccountID INT NOT NULL --FK&PK
 REFERENCES UserAccount(UserAccountID)
 CONSTRAINT PKSeachScore PRIMARY KEY CLUSTERED
 (ScoreID, AppID, UserAccountID)
);

INSERT INTO dbo.SearchScore(ScoreID, AppID, UserAccountID)
VALUES(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30),
(31, 31, 31),
(32, 32, 32),
(33, 33, 33),
(34, 34, 34),
(35, 35, 35),
(36, 36, 36),
(37, 37, 37),
(38, 38, 38),
(39, 39, 39),
(40, 40, 40);

CREATE TABLE OrderHeader(
OrderID INT IDENTITY NOT NULL PRIMARY KEY,
CustomerID INT NOT NULL
REFERENCES dbo.UserAccount(UserAccountID),
OrdereDate Date NOT NULL,
TotalAmount FLOAT DEFAULT 0
)

DROP TABLE OrderHeader

INSERT INTO OrderHeader(CustomerID,OrdereDate) VALUES 
(1,'2018-05-05'),
(2,'2019-08-12'),
(3,'2019-09-23'),
(4,'2019-05-15'),
(5,'2018-04-03'),
(6,'2018-11-03'),
(7,'2019-10-31'),
(8,'2018-10-23'),
(9,'2019-05-25'),
(10,'2018-03-22'),
(2,'2019-01-01'),
(3,'2022-08-09'),
(2,'2018-07-05'),
(1,'2019-04-23'),
(5,'2017-09-11'),
(12,'2015-04-22'),
(1,'2018-05-05'),
(2,'2019-08-12'),
(14,'2019-09-23'),
(14,'2019-05-15'),
(15,'2018-04-03'),
(16,'2018-11-03'),
(7,'2019-10-31'),
(18,'2018-10-23'),
(18,'2019-05-25'),
(18,'2018-05-05'),
(2,'2019-08-12'),
(3,'2019-09-23'),
(3,'2019-05-15'),
(3,'2018-04-03'),
(6,'2018-11-03'),
(7,'2019-10-31'),
(8,'2018-10-23'),
(9,'2019-05-25'),
(9,'2018-05-05'),
(20,'2019-08-12'),
(20,'2019-09-23'),
(30,'2019-05-15'),
(30,'2018-04-03'),
(4,'2018-11-03'),
(31,'2019-10-31'),
(5,'2018-10-23'),
(9,'2019-05-25');

CREATE TABLE OrderDetail(
OrderDetailID INT IDENTITY NOT NULL PRIMARY KEY,
OrderID INT NOT NULL
REFERENCES dbo.OrderHeader(OrderID),
AppID INT NOT NULL
REFERENCES dbo.App(AppID),
Quantity INT NOT NULL,
TotalAmount FLOAT DEFAULT 0,
CreditCardNumber NVarchar(100) 
)

DROP TABLE OrderDetail

INSERT INTO OrderDetail(OrderID,AppID,Quantity,CreditCardNumber)VALUES
(1,1,3,'6222081812002934027'),
(2,2,5,'6222081822222934027'),
(3,3,15,'6222033312002934027'),
(4,4,6,'6222081812464934027'),
(5,5,15,'6245581812002934027'),
(6,6,10,'6222081812002934027'),
(7,7,4,'62220814542002934027'),
(8,8,3,'622214352002934027'),
(9,9,6,'6222081812002934027'),
(10,10,8,'6222097002934027'),
(2,3,4,'6222084566565934027'),
(2,4,5,'622256512002934027'),
(1,1,3,'622235345662934027'),
(1,2,5,'6245657612002934027'),
(3,3,15,'6222565712002934027'),
(3,4,6,'62220898976934027'),
(5,5,15,'62225657812002934027'),
(6,6,10,'6222056565774027'),
(7,7,4,'6224545812002934027'),
(8,8,3,'62228790753934027'),
(9,9,6,'6222045462002934027'),
(11,10,8,'6222081812002934027'),
(23,3,4,'6222081812002934027'),
(23,4,5,'6222081812002934027'),
(23,1,3,'6222081812002934027'),
(2,2,5,'6222081812002934027'),
(3,3,15,'6222081812002934027'),
(4,4,6,'6222081812002934027'),
(5,5,15,'6222081812002934027'),
(5,6,10,'6222081812002934027'),
(5,7,4,'6222081812002934027'),
(8,8,3,'6222081812002934027'),
(9,9,6,'6222081812002934027'),
(30,10,8,'6222081812002934027'),
(30,3,4,'622208108997934027'),
(2,4,5,'6222081812002934027'),
(1,1,3,'6222081812002934027'),
(2,2,5,'6222081812002934027'),
(15,3,15,'6222081812002934027'),
(3,4,6,'6222081812002934027'),
(10,5,15,'6222081812002934027'),
(23,6,10,'6222081812002934027'),
(7,7,4,'6222081812002934027');

-- Computed Columns based on a function
-- Procedures to store calucated data into column
-- Procedure1: Procedure for OrderDetail table
-- Calculate TotalAmount column by using Quantity * price, where price is get from App Table selecting by appID
-- USE while function to go through all appID to store all total amount into OrderDetail Table
create procedure CalOrderDetail
@appID INT
AS
BEGIN
	DECLARE @count int
	SET @count = 1;
	DECLARE @price FLOAT
	WHILE(@count < @appID) 
	BEGIN
	SET @price = (SELECT Price FROM APP WHERE APPID = @count)
	UPDATE GROUP25_Project.dbo.OrderDetail
	SET TotalAmount = Quantity * @price where AppID = @count
	set @count = @count + 1;
	END;
END;

DECLARE @id INT
SET @id = (SELECT COUNT(*)FROM APP)
exec CalOrderDetail @id

SELECT * FROM OrderDetail

DROP PROCEDURE CalOrderDetail

-- Procedure2: Procedure for OrderHeader table
-- Calculate TotalAmount column by getting TotalAmount from OrderDetail Table selecting by OrderID
-- USE while function to go through all OrderID to store all total amount into OrderHeader Table
CREATE PROCEDURE CalOrderHeader
@orderid INT
AS
BEGIN
	DECLARE @count int
	SET @count = 1;
	DECLARE @orderamount FLOAT
	WHILE(@count < @orderid) 
	BEGIN
		SET @orderamount = (SELECT SUM(TotalAmount) as [OrderTotalAmount] FROM OrderDetail WHERE OrderID = @count)
		UPDATE  GROUP25_Project.dbo.OrderHeader
		SET TotalAmount = @orderamount where OrderID = @count
		SET @count = @count+1
	END	
END;

DECLARE @id INT
SET @id = (SELECT COUNT(OrderID) FROM OrderDetail)
exec CalOrderHeader @id
SELECT * FROM OrderHeader

drop procedure CalOrderHeader

-- Procedure3: Procedure for UserAccount table
-- Calculate TotalAmount column by getting TotalAmount from OrderHeader Table selecting by UserAccountID
-- USE while function to go through all UserAccountID to store all total amount in UserAccount Table
create procedure InAppPurchaseModified
@useraid INT
AS
BEGIN
	DECLARE @count int 
	SET @count = 1;
    DECLARE @inappamount FLOAT
    WHILE(@count < @useraid)
    BEGIN
	    SET @inappamount = (SELECT SUM(TotalAmount) as [InAppTotalPurchase] FROM OrderHeader WHERE CustomerID =@count)
	    UPDATE GROUP25_Project.dbo.UserAccount
		SET InAppPurchase = @inappamount where UserAccountID = @count
		SET @count = @count +1
    END;	
END;

DECLARE @id INT
SET @id = (SELECT COUNT(*)FROM UserAccount)
exec InAppPurchaseModified @id
SELECT * FROM UserAccount

drop procedure InAppPurchaseModified

-- Table-level CHECK Constraints based on a function
-- Check Function1: Check OrderID

CREATE FUNCTION getOrderID(@id int)
RETURNS int
AS
BEGIN
        RETURN ISNULL((SELECT OrderID FROM OrderHeader WHERE OrderID = @id),0)
END

-- Use Check Function1
ALTER TABLE OrderDetail WITH NOCHECK ADD CONSTRAINT chk_order
        CHECK (dbo.getOrderID(OrderID) != 0)
   
UPDATE OrderDetail SET OrderID = 250 where OrderDetailID = 12

ALTER TABLE OrderDetail DROP CONSTRAINT chk_order

DROP FUNCTION getOrderID

-- Check Function2: Check CategoryID

CREATE FUNCTION getCategoryID(@id int)
RETURNS int
AS
BEGIN
        RETURN ISNULL((SELECT CategoryID FROM Category WHERE CategoryID = @id),0)
END

-- use function
ALTER TABLE AppDetail WITH NOCHECK ADD CONSTRAINT chk_detail
        CHECK (dbo.getCategoryID(CategoryID) != 0)
     
UPDATE AppDetail SET CategoryID = 250 WHERE AppID = 2  

ALTER TABLE AppDetail DROP CONSTRAINT chk_detail

DROP FUNCTION getCategoryID

-- Check Function3: Check AppID
CREATE FUNCTION getAppID(@id int)
RETURNS int
AS
BEGIN
        RETURN ISNULL((SELECT AppID FROM App WHERE AppID = @id),0)
END

DROP FUNCTION getAppID

ALTER TABLE SearchScore WITH NOCHECK ADD CONSTRAINT chk_app
        CHECK (dbo.getAppID(AppID) != 0)
       
UPDATE SearchScore SET APPID = 250 WHERE ScoreID = 2

-- Check Function4: Check ScoreID

CREATE FUNCTION getScoreID(@id int)
RETURNS int
AS
BEGIN
        RETURN ISNULL((SELECT ScoreID FROM Score WHERE ScoreID = @id),0)
END

DROP FUNCTION getScoreID

ALTER TABLE SearchScore WITH NOCHECK ADD CONSTRAINT chk_score
        CHECK (dbo.getScoreID(ScoreID) != 0)
       
UPDATE SearchScore SET ScoreID = 250 WHERE AppID = 2

-- Check Function5: Check UAID

CREATE FUNCTION getUAID(@id int)
RETURNS int
AS
BEGIN
        RETURN ISNULL((SELECT UserAccountID FROM UserAccount  WHERE UserAccountID = @id),0)
END

ALTER TABLE SearchScore WITH NOCHECK ADD CONSTRAINT chk_useraccount
        CHECK (dbo.getUAID(UserAccountID) != 0)
            
UPDATE SearchScore SET UserAccountID = 250 WHERE ScoreID = 2

ALTER TABLE SearchScore DROP CONSTRAINT chk_useraccount 

DROP FUNCTION getUAID

-- Column Data Encryption
-- 1.CreditCard Encryted

CREATE MASTER KEY ENCRYPTION BY   
PASSWORD = '<group25>'; 
-- DROP MASTER KEY

CREATE CERTIFICATE CreditCardSafe  
   WITH SUBJECT = 'Customer Credit Card Numbers';  
-- DROP CERTIFICATE CreditCardSafe 

CREATE SYMMETRIC KEY CreditCards_Key_Group25  
    WITH ALGORITHM = AES_256  
    ENCRYPTION BY CERTIFICATE CreditCardSafe;  
-- DROP SYMMETRIC KEY CreditCards_Key_Group25 

-- Create a column in which to store the encrypted data.  
ALTER TABLE OrderDetail   
    ADD CardNumber_Encrypted varbinary(160);    

-- Open the symmetric key with which to encrypt the data.  
OPEN SYMMETRIC KEY CreditCards_Key_Group25  
   DECRYPTION BY CERTIFICATE CreditCardSafe;  
  
UPDATE OrderDetail   
SET CardNumber_Encrypted = EncryptByKey(Key_GUID('CreditCards_Key_Group25')  
    , CreditCardNumber, 1, HashBytes('SHA1', CONVERT( varbinary  
    , OrderDetailID)));  

-- Verify the encryption.  
OPEN SYMMETRIC KEY CreditCards_Key_Group25  
   DECRYPTION BY CERTIFICATE CreditCardSafe;   

SELECT CreditCardNumber, CardNumber_Encrypted   
    AS 'Encrypted Credit Card Number', CONVERT(nvarchar,  
    DecryptByKey(CardNumber_Encrypted, 1 ,   
    HashBytes('SHA1', CONVERT(varbinary, OrderDetailID))))  
    AS 'Decrypted Credit Card Number' FROM OrderDetail;
   
-- 2.Password Encryted

CREATE CERTIFICATE PasswordSafe  
   WITH SUBJECT = 'Password';  
-- DROP CERTIFICATE PasswordSafe 

CREATE SYMMETRIC KEY Password_Key_Group25  
    WITH ALGORITHM = AES_256
    ENCRYPTION BY CERTIFICATE PasswordSafe;  
-- DROP SYMMETRIC KEY Password_Key_Group25 

-- Create a column in which to store the encrypted data.  
ALTER TABLE UserAccount   
    ADD Password_Encrypted varbinary(160);  

-- Open the symmetric key with which to encrypt the data.  
OPEN SYMMETRIC KEY Password_Key_Group25  
   DECRYPTION BY CERTIFICATE PasswordSafe;  
  
UPDATE UserAccount   
SET Password_Encrypted = EncryptByKey(Key_GUID('Password_Key_Group25')  
    , Password);  

-- Verify the encryption.  
OPEN SYMMETRIC KEY Password_Key_Group25  
   DECRYPTION BY CERTIFICATE PasswordSafe;   

SELECT Password, Password_Encrypted   
  AS 'Encrypted Password',  
  CONVERT(varchar, DecryptByKey(Password_Encrypted))   
  AS 'Decrypted Password'  
FROM UserAccount;

-- VIEW
-- VIEW1 : Search for each category's average score and rank
CREATE VIEW viewCategoryRank
AS
SELECT res1.CategoryID, cc.CategoryName, res1.AveCategoryScore, DENSE_RANK() OVER (ORDER BY res1.AveCategoryScore DESC) CategoryScoreRank 
FROM 
(
	SELECT res.CategoryID, (CAST(ROUND(SUM(res.TotalScore) / COUNT(res.AppID), 2) AS FLOAT)) AS AveCategoryScore
	FROM 
	(
		SELECT app_score.AppID, app_score.TotalScore, app_cate.AppName, app_cate.CategoryID, app_cate.CategoryName
		FROM
		(
			SELECT ss.AppID, (CAST(ROUND(SUM(s.Score) / COUNT(s.ScoreID), 2) AS FLOAT)) AS TotalScore
			FROM SearchScore ss JOIN Score s
			ON ss.ScoreID = s.ScoreID
			GROUP BY AppID
		) AS app_score 
		INNER JOIN 
		(
			SELECT res.AppID, res.AppName, c.CategoryID, c.CategoryName
			FROM 
			(
				SELECT a.AppID, a.AppName, ad.CategoryID 
				FROM App a 
				INNER JOIN AppDetail ad
				ON a.AppID = ad.AppID
			) AS res 
			INNER JOIN Category c
			ON res.CategoryID = c.CategoryID
		) AS app_cate
		ON app_score.AppID = app_cate.AppID
	) AS res
	GROUP BY res.CategoryID
) AS res1 
INNER JOIN Category cc 
ON cc.CategoryID = res1.CategoryID;

SELECT * FROM viewCategoryRank;
DROP VIEW viewCategoryRank;

-- VIEW
-- VIEW2 : Serach for every company's app group by companyID
CREATE VIEW ViewCompanyApp
AS
SELECT Company.CompanyID, Company.CompanyName, App.AppID, App.AppName, App.CurrentVersion, App.InstallQuantity
FROM App LEFT JOIN AppDetail
ON App.AppID = AppDetail.AppID
LEFT JOIN Developer
ON AppDetail.DeveloperID = Developer.DeveloperID
LEFT JOIN Company
ON Developer.CompanyID = Company.CompanyID;

SELECT * FROM ViewCompanyApp;

DROP VIEW ViewCompanyApp;

-- VIEW
-- VIEW3 : Calculate the number of reviews in each sentiment, beyond all apps in every Categories.
CREATE VIEW ViewCateRevi
AS
SELECT tes.CN,tes.Sentiment,COUNT(tes.AppID) [totalPerSentiment]
FROM
 (
 SELECT Category.CategoryName AS CN, App.AppID, App.AppName,Reviews.Sentiment
 FROM Category LEFT JOIN AppDetail
 ON Category.CategoryID = AppDetail.CategoryID
 LEFT JOIN App
 ON  AppDetail.AppID = App.AppID 
 LEFT JOIN SearchReviews
 ON App.AppID = SearchReviews.AppID
 LEFT JOIN Reviews
 ON SearchReviews.ReviewID = Reviews.ReviewID
 ) AS tes
GROUP BY tes.CN,tes.Sentiment

SELECT * FROM ViewCateRevi;

-- FUNCTION
-- Function1: insert categoryname and get it's average score posted by users 
CREATE FUNCTION GetTopRankAppByCategory
(@categoryname varchar(100))
RETURNS TABLE
AS
RETURN
(
	SELECT res1.CategoryID, cc.CategoryName, res1.AveCategoryScore
	FROM
	(
		SELECT res.CategoryID, SUM(res.TotalScore) / COUNT(res.AppID) AS AveCategoryScore 
		FROM
		(
			SELECT app_score.AppID, app_score.TotalScore, app_cate.AppName, app_cate.CategoryID, app_cate.CategoryName
			FROM
			(
				SELECT ss.AppID, SUM(s.Score) / COUNT(s.ScoreID) AS TotalScore
				FROM SearchScore ss JOIN Score s
				ON ss.ScoreID = s.ScoreID
				GROUP BY AppID
			) AS app_score
			INNER JOIN 
			(
				SELECT res.AppID, res.AppName, c.CategoryID, c.CategoryName
				FROM
				(
					SELECT a.AppID, a.AppName, ad.CategoryID
					FROM App a INNER JOIN AppDetail ad 
					ON a.AppID = ad.AppID
				) AS res
				INNER JOIN Category c 
				ON res.CategoryID = c.CategoryID
			) AS app_cate
			ON app_score.AppID = app_cate.AppID
		) AS res
		GROUP BY res.CategoryID
	) AS res1 
	INNER JOIN Category cc ON cc.CategoryID = res1.CategoryID
	WHERE cc.CategoryName = @categoryname
);

SELECT * FROM GetTopRankAppByCategory('TAX');

-- FUNCTION 2 : Calculate the total install number for each company with the companyname as the input
CREATE FUNCTION CompanyTotalInstall(@companyname VARCHAR(100))
RETURNS TABLE
AS
RETURN
(
 SELECT temp.CompanyName, temp.TotalQuantity
 FROM
 (
  SELECT r.CompanyName AS CompanyName, SUM(r.InstallQuantity) AS TotalQuantity
  FROM
  (
   SELECT App.AppID, Company.CompanyName, App.InstallQuantity
   FROM App LEFT JOIN AppDetail
   ON App.AppID = AppDetail.AppID
   LEFT JOIN Developer
   ON AppDetail.DeveloperID = Developer.DeveloperID
   LEFT JOIN Company
   ON Developer.CompanyID = Company.CompanyID
  ) AS r
  GROUP BY r.CompanyName
 ) AS temp
 WHERE temp.CompanyName = @companyname
)

SELECT * FROM CompanyTotalInstall('Deca Games EOOD');

