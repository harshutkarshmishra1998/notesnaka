-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2021 at 08:44 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u842061770_notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(15) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_username`, `admin_password`) VALUES
(1, 'Utkarsh Mishra', 'harshutkarshmishra1998@gmail.com', 'masterdeveloper', '$2y$12$z.LzZ6ZAFqqvQh7Dsgxdk.XRR1XgZsqPYh0rOAEIhOuaPy8bntdV2'),
(2, 'Utkarsh Mishra', 'harshutkarshmishra1998@gmail.com', 'harshutkarshmishra', '$2y$12$HJ39E4AoA1dwHOZcefVfQ.YM1SQLYzfVRxO7ydAU9vYnJHSyQNvC.'),
(3, 'Aaditya Singh', 'snghaadi@gmail.com', 'snghaadi', '$2y$12$TImi3HHNUS3YtNseVjAVC.2b6dO9gNQvlEmOpghLg48d7HL8Dl3Ve'),
(7, 'Uttara ', 'uttara.athale@gmail.com', 'Uttara', '$2y$12$z5WezJqiWQcKZ8RkMtxjtuMZnb03qGszu5ISZZdt3YvTtXdPqOCXa'),
(14, 'Sonaal Singh', 'sonaalsinghkumar84@gmail.com', 'sonaalsingh', '$2y$12$EIkVgVzrpHHi78cgkMEl1O4//NWUi8b4h2gxnbEkGi/ezliciP.t6'),
(17, 'Abhishek Rai', 'ar2689954@gmail.com', 'director_manit', '$2y$12$KwIHPL7t7XAJUVupZDVGCOhutSV964zfBidSLXtKepDY.jnZbHnbK'),
(19, 'Suruchi', 'suruchikus@gmail.com', 'suruchi', '$2y$12$8t/IK1L8cHsbvnIytQdxoORoaDhrLdMd4q7XHi.Diu9/fZ455iLVm'),
(20, 'Ankit Gupta', 'ankitguptanj1@gmail.com', 'andy', '$2y$12$Ovna7nYf5V4tlOW5OgseD.LAn/U7joC4krn66QMMdIifU1O36tEO6'),
(21, 'Nilesh Sandeep Singh', 'nileshsomvansi@gmail.com', 'nilesh', '$2y$12$ZsJeVC8sa1N7Qk.6BlxEuO8aOS7Mfu6.g1DZaVU/hl.cdfqVz7upq');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(15) NOT NULL,
  `blog_dp` varchar(255) NOT NULL,
  `blog_data` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_sub` varchar(255) NOT NULL,
  `blog_sub_code` varchar(255) NOT NULL,
  `blog_branch` varchar(255) NOT NULL,
  `blog_sem` varchar(255) NOT NULL,
  `blog_year` varchar(255) NOT NULL,
  `blog_college` varchar(255) NOT NULL,
  `blog_info_1` text NOT NULL,
  `blog_info_2` text NOT NULL,
  `blog_contri_name` varchar(255) NOT NULL,
  `blog_contri_college` varchar(255) NOT NULL,
  `blog_time` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_dp`, `blog_data`, `blog_title`, `blog_sub`, `blog_sub_code`, `blog_branch`, `blog_sem`, `blog_year`, `blog_college`, `blog_info_1`, `blog_info_2`, `blog_contri_name`, `blog_contri_college`, `blog_time`) VALUES
(11, 'blog01.jpg', '', 'Overview Of College Internship/Placements Process for Software Companies', '', '', 'MISC', 'MISC', 'MISC', 'ALL', 'Learn about the process of Campus Placements and Internships and also which subjects are important for targeting software companies. ', '<p>Many software companies coming to the college allow all the branches to sit for placements. This is a very great opportunity for students from non-circuit branches (CSE, ECE, and EE) to get into the IT field.</p>\r\n\r\n<p>If you want to target placements in these companies, you should be aware of the whole process. The first shortlisting is based on your CGPA, branch, 10th, and 12th percentages, and if you have or had a back. The criteria vary with each company and sometimes even if your CGPA is higher than the threshold, the decision to shortlist you depends completely on the company.</p>\r\n\r\n<p>The first test can be a coding round, which covers Data Structures and Algorithms, an Aptitude Test, which covers Logical Reasoning and Basic Mathematics, and sometimes a combination of both. Some companies even have Verbal Ability and Reading Comprehension i.e. English based sections in their tests. <br>\r\nIt might also be the case that instead of one test, two rounds of varying syllabus and sections be conducted depending on the different roles offered by the company.</p>\r\n\r\n<p>Application forms are also used by companies to know more about their candidates apart from the CV. These forms and CVs are submitted after you have cleared the test. The application forms might include questions such as:<ul>\r\n<li>What are your interests and hobbies? How do you propose to develop these in the future?</li>\r\n<li> What are your career aspirations and how can this experience help you?</li>\r\n</ul>\r\n</p>\r\n\r\n<p>Now, let’s talk about the technical interview. If the interview is a coding interview the main focus would be on Data Structures and Algorithms. Concepts of Object-Oriented Programming might also come in handy. The next important subjects include Operating Systems, Database Management Systems, and Computer Networks. <br>\r\nSome sample questions might be:<br>\r\nWhat is a transaction, how is it different from an SQL query, what are its properties? [DBMS]<br>\r\n<ul>\r\n<li>ACID Properties. [DBMS]</li>\r\n<li>What is deadlock? [OS]</li>\r\n<li>What is thrashing?[OS]</li>\r\n<li>Balady’s Anamoly [OS]</li>\r\n<li>What is Data Abstraction? Explain it with a real-life example. [OOPS]</li>\r\n<li>What is OOPS? Why is it important? [OOPS]</li>\r\n</ul>\r\n<p>Questions based on your projects, the problems you faced, and how you overcame them are also asked.</p>\r\n\r\n<p>The H.R. Interviews or Managerial Interviews are the last stage in the selection process. Some companies however select students in 1-2 technical rounds and don’t conduct H.R. interview rounds while for others it is quite important. The questions asked in these rounds might be related to your projects, internships, strengths, weakness, goals, and why they should hire you. C.V. based questions are also common. <br>\r\n</p>', 'Uttara ', '', '1614936504'),
(12, 'img-Cement.jpg', 'cement.pdf', 'Cement', 'Chemistry', 'CH-122', 'ALL', '1/2', '1', 'NIT BHOPAL', 'Introduction to cement, composition and process involved in manufacture of portland cement, difference between dry and wet process of cement production, setting and hardening of cement.', '', 'NOTES NAKA', 'MANIT', '1614934864'),
(13, 'center-of-gravity.jpg', 'COG(updated).pdf', 'Centre of Gravity', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614935090'),
(14, '1200px-Gamma_abs_3D.png', 'COMPLEX VARIABLES.pdf', 'Complex Variable', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614935291'),
(15, '0.43013100_1569136886_earth-in-forest.jpg', 'ENV SCOPE_IMPORTANCE ECOSYSTEM_BIODIVERSITY.pdf', 'Environmental Scope Importance, Ecosystem & Biodiversity', 'Environmental Studies', 'CH-123', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614935826'),
(16, 'maxresdefault.jpg', 'Fourier series.pdf', 'Fourier Series', 'Mathematics-2', 'MTH-1', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614935999'),
(17, 'dept-of-industrial-engineering-01-mobile.jpg', 'Manufacturing Process(HandWritten)-compressed.pdf', 'Manufacturing Process', 'Workshop', 'ME-126', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614936424'),
(18, 'R7761caa359cc0c30af620cdd9fd48ec1.gif', 'MOI(updated).pdf', 'Moment of Inertia', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614936790'),
(19, 'vorw_bias.print.png', 'Semiconductor and diodes(BOOK).pdf', 'Semiconductors & Diodes', 'BEEE', 'EE-124', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614937226'),
(20, 'F0504072-01.jfif', 'Transformer(IMPconceptsandQuestion).pdf', 'Transformer - Important Concepts and Questions', 'BEEE', 'EE-124', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614937571'),
(21, 'R11a3b0b751834cec9cfb6862e1918f35.png', 'Transformer(VR,LOSSES,TESTS).pdf', 'Transformer - VR, Losses and Tests', 'BEEE', 'EE-124', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614937875'),
(22, 'OIP.jfif', 'UNIT-4 LASERS.pdf', 'Lasers', 'BEEE', 'EE-124', 'ALL', '1/2', '1', 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT', '1614938021');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(16, '-', 'notesnaka@gmail.com', 'Professional has wrong spelling.'),
(17, 'Utkarsh Mishra', 'harshutkarshmishra1998@gmail.com', 'hello'),
(18, 'SHAHNAWAZ QAISAR', 'iamqaisar117@gmail.com', 'I am facing problem in in loging,\"\" oops it look like  you are using it in another device! CLICK ON LOGOUT OF ALL DEVICES\"\"  this message is appearing when i am trying to login. and when I click on logout on all devices option it doesnot work. Kindly resolve my issue'),
(19, 'SHAHNAWAZ QAISAR', 'iamqaisar117@gmail.com', 'I am facing problem in in loging,\"\" oops it look like  you are using it in another device! CLICK ON LOGOUT OF ALL DEVICES\"\"  this message is appearing when i am trying to login. and when I click on logout on all devices option it doesnot work. Kindly resolve my issue'),
(22, 'Blog', 'notesnaka@gmail.com', 'N/A'),
(31, 'Prabhat', 'maheshsah802201@gmail.com', 'I have paid the money ,but still I am not able to see anything in notesnakka app'),
(34, 'Nikhil Sanora', 'nikhilsanora.manit@gmail.com', 'mam , the notes which are previously available on this site,  is the same notes will i get after subscription , or there is some more new content / material will you provide ?'),
(35, 'Laxman', 'laxmanvennampally2020@gmail.com', 'what does 1/2 and 6sem in notes naaka registration form mean'),
(36, 'Laxman', 'laxmanvennampally2020@gmail.com', 'what does 1/2 and 6sem in notes naaka registration form mean'),
(37, 'Laxman', 'laxmanvennampally2020@gmail.com', 'Its not logging in I paid 3 times 150 rs please allow me to log in'),
(38, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'Hello, my name’s Eric and I just ran across your website at notesnaka.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=notesnaka.com\r\n'),
(39, 'Mike Haig\r\n', 'see-email-in-message@monkeydigital.co', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your notesnaka.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your notesnaka.com to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Haig\r\n \r\nsupport@monkeydigital.co \r\nMonkey Digital'),
(40, 'Utkarsh ', 'utkarsh@gmail.com', 'I want notes'),
(41, 'Percy', 'percybock@inbox.com', 'Great information.Lucky me I rran across your webste by chance (stumbleupon).\r\nI\'ve saved as a favorite for later!\r\nhttps://kratomwwwtea.com/where-to-buy-kratom.html\r\nlong term effects of kratom\r\nlong term effects off kratom'),
(42, 'Blog', 'notesnaka@gmail.com', 'N/A'),
(43, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'Hi, my name is Eric and I’m betting you’d like your website notesnaka.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at notesnaka.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=notesnaka.com\r\n'),
(44, 'Mike Williams\r\n', 'no-replyNuRry@gmail.com', 'Hi \r\n \r\nI have just took an in depth look on your  notesnaka.com for  the current Local search visibility and seen that your website could use a boost. \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nStart improving your local visibility with us, today! \r\n \r\nregards \r\nMike Williams\r\n \r\nSpeed SEO Digital Agency \r\nsupport@speed-seo.net'),
(45, 'Amber Roy', 'amberroy160@gmail.com', 'Hi,\r\n\r\nI hope you are doing well.\r\n\r\nI want to contribute a guest post article to your website that may interest your readers.\r\n\r\nIt would be of high quality and free of cost. You can choose the topic of the article from the topic ideas that I\'ll send you in my next email once you approve this offer.\r\n\r\nPlease note that I will need you to give me a backlink within the guest post article.\r\n\r\nPlease let me know if I shall send over some amazing topic ideas?\r\n\r\nRegards,\r\n\r\nAmber Roy'),
(46, 'Mike Adderiy\r\n', 'no-reply@google.com', 'Hello \r\n \r\nI have just analyzed  notesnaka.com for its SEO metrics and saw that your website could use an upgrade. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\nregards \r\nMike Adderiy\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(47, 'Blog', 'techplay32@gmail.com', 'N/A'),
(48, 'Olivia Johnson', 'brigida.flores@hotmail.com', 'Gd\'Day Mate!\r\n\r\nFirstly we are not selling anything.\r\n\r\nUnless you have been living off the grid with no internet, the mainstream media has been reporting news on bitcoin and cryptocurrencies.\r\n\r\nTesla buys $1.5 billion in bitcoin, plans to accept it as payment\r\nhttps://www.cnbc.com/2021/02/08/tesla-buys-1point5-billion-in-bitcoin.html\r\n\r\nWeeks After $1B Bitcoin Purchase, MicroStrategy Buys Another $15M Worth Of Cryptocurrency\r\nhttps://finance.yahoo.com/news/weeks-1b-bitcoin-purchase-microstrategy-163558608.html\r\n\r\nIf you are new to cryptocurrencies, our tip for you is NOT to buy Bitcoin now. There are literally thousands of cryptocurrencies, as with all things in life, some are gems (with potential to x10 or x100) and most are garbage which eventually will go to zero.\r\n\r\nBitcoin is the KING coin in the crypto world, all other crypto currencies are collectively known as altcoins.\r\n\r\nWhat is altcoin season\r\n\r\nWhile everyone has been focusin on Bitcoin, there is a term \"Altcoin Season\" when the prices of good altcoins can go up times 10 or even x 100 in a crazy rally. This is mainly due to speculators who have made crazy gains from Bitcoins to smaller cap coins in order to chase gains.\r\n\r\nYou can literally turn $1000 into $10,000 or even $100,000 in an altcoin season (which seems to be happening now).\r\n\r\nAfter an altcoin rally which usually lasts 50 to 60 days, prices will crash hard (what goes up in a parabolic move must come down always).\r\n\r\nAnd if you can turn $1000, into $10,000 during this altcoin rally which is happening soon, we advise you to rotate your profits into bitcoin (King coin) as Bitcoin becomes relatively \"cheap\" compared to altcoins until Nov this year.\r\n\r\nYou can likely turn $10,000 into $10000 in the next bitcoin run up until Nov 2021 (a repeat of what Bitcoin and the market did in the last bull run in 2017). History does not repeat exactly but history certainly rythmes!\r\n\r\nAnd you have another chance to turn $10,000 into $1000,000 (thats 1 million) in the last leg of the altcoin rally which is likely to happen at the end of this year.\r\n\r\nWe understand there is no fundamentals to cryptos and this is a high risk game. But with the Federal Reserve holding down interest rates and printing more currencies (with the central banks around the world), the risk-reward for entering the crypto markets is simply too good.\r\n\r\nAltcoins we recommend:\r\n\r\nZilliqa coin (ZIL) which you can buy in Binance (here -> http://bit.ly/2L6ZySg)\r\n\r\nZIL coin is a project from Singapore, a country that is politically stable and widely known as a city that embraces Cryptocurrenies. The Central bank of Singapore has launched the Singapore Dollar as a crypto stable coin in Zilliaq blockchain.\r\n\r\nhttps://www.mas.gov.sg/-/media/MAS/ProjectUbin/Project-Ubin-DvP-on-Distributed-Ledger-Technologies.pdf?la=en&hash=2ADD9093B64A819FCC78D94E68FA008A6CD724FF\r\n\r\nWe believe you cannot go too wrong when you follow what the government of Singapore is pursuing. ZIL is currently trading around USD$0.20. You can buy ZIL coin in Binance, the world\'s biggest crypto currency exchange here: http://bit.ly/2L6ZySg\r\n\r\n\r\nIf you are interested to get involved with cryptos and consider joining this action, you can buy cryptos below:\r\n\r\n\r\nGet started at the world\'s biggest and most established crypto exchange Binance at the link below:\r\nhttp://bit.ly/2L6ZySg'),
(49, 'Donald Bollo', 'yokodoumba@gmail.com', 'Dear Sir/Madam, \r\n \r\nWe are interested in your products. If your company can handle a bulk supply of your products to Cameroon, please contact us. \r\nPlease forward copy of your reply to yokodumba@oepdc.org'),
(50, 'Olivia Johnson', 'tait.ana@msn.com', 'Gd\'Day Mate!\r\n\r\nIn the crypto world, Binance is the biggest brand around and they offer an ecosystem of crypto services around their own cryptocurrency - the Binance coin (or BNB).\r\n\r\nBNB powers the Binance Ecosystem and is the native coin of the Binance Chain and the Binance Smart Chain. BNB has several use cases:\r\n\r\nPay for trading fees on the Binance exchange;\r\n\r\nPay for trading fees on Binance DEX (Decentralized Exchange);\r\n\r\nPay for transaction fees on the Binance Chain;\r\n\r\nPay for transaction fees on the Binance Smart Chain;\r\n\r\nPay for goods and services for both online and in-store purchases (e.g., using Binance Card or Binance Pay);\r\n\r\nBook hotels, flights and more at Travala.com;\r\n\r\nCommunity utility token on the Binance Smart Chain ecosystem (such as games and DApps);\r\n\r\nParticipate in token sales hosted on the Binance Launchpad;\r\n\r\nDonate on Binance Charity;\r\n\r\nProvide liquidity on Binance Liquid Swap;\r\n\r\n\r\n\r\nWhat is Binance Coin (BNB)?\r\nBNB was launched through an Initial Coin Offering (or ICO) that took place from June 26th to July 3rd, 2017 - 11 days before the Binance Exchange opened for trading. The issue price was 1 ETH for 2,700 BNB or 1 BTC for 20,000 BNB.\r\n\r\nBNB was issued as an ERC-20 token, running on the Ethereum network, with a total supply of 200 million coins. 100 million BNBs were offered in the ICO, but the current total supply is lower due to periodic burning events. If you want to know more about coin burns, and why BNBs are being permanently destroyed, check out What Is a Coin Burn?.\r\n\r\nAlthough initially based on the Ethereum network, the ERC-20 BNB tokens were later swapped with BEP-2 BNB on a 1:1 ratio. The BEP-2 BNB is the native coin of the Binance Chain, and the mainnet launch was announced on April 18th, 2019.\r\n\r\nIn September 2020, Binance launched the Binance Smart Chain (BSC), which is a blockchain network that runs in parallel with the Binance Chain. This means that you can now find BNB in three different forms: \r\n\r\nBNB BEP-2 on the Binance Chain.\r\n\r\nBNB BEP-20 on the Binance Smart Chain.\r\n\r\nBNB ERC-20 on the Ethereum network.\r\n\r\nWhat is BNB used for?\r\nAs mentioned, BNB has many use cases. For instance, you can use BNB to pay for your travel expenses, buy virtual gifts, and much more. But let’s take a look at how BNB can help you with trading fees. Here’s how to buy BNB right away! \r\n\r\nWhen trading on the Binance Exchange, each trade will incur a standard fee of 0.1% (trading fees are determined by your monthly trading volume and BNB holdings). You can either pay the trading fees using the assets you are trading or you can pay for them with BNB. If you choose to pay in BNB, you will get a special discount.\r\n\r\nTherefore, if you trade a lot on Binance, you should consider getting BNB and using them to pay for your fees. Keep in mind that the deduction for trading fees follows a specific schedule, so make sure to check the current spot trading Fee Schedule. It\'s also worth noting that the Binance Futures platform follows a slightly different Fee Schedule.\r\n\r\nApart from discounted trading fees, BNB is also powering the Binance DEX (on the Binance Chain) and hundreds of applications that are running on the Binance Smart Chain (BSC).\r\n\r\n\r\nBinance coin is trading at around $280 USD per coin at the time of writing this, we expect this to increase by another 100% at least in the next rally. Sign up at Binance using this link https://bit.ly/31uRnnb and get 10% off your trading fees when you use this link!\r\n\r\n\r\nIf you are interested to get involved with cryptos and consider joining this action, you can buy cryptos below:\r\n\r\n\r\nGet started at the world\'s biggest and most established crypto exchange Binance at the link below:\r\nhttps://bit.ly/31uRnnb\r\n'),
(51, 'Hi Nice site https://google.com', 'ascehine@mail.ru', 'Hi Nice site https://google.com'),
(52, 'Richelle Worley', 'richelle.worley@gmail.com', 'Hi notesnaka.com,\r\nDo you always seat with your computer working for a long time? Or you see yourself in a position where you always focus on something for a long time, like computer screens or Television? Well, if you are in this category, you must have had experiences with neck pain. Yes, I know, that can be very painful. \r\nFortunately, Here’s an instant solution for you my friend – Smart Electric Neck Massager. This is an electric massager which when hung around your neck can give you the same relief feeling you get from a chiropractor. \r\nIt’s smart, portable, and affordable. Right now, it’s available at neckbc.com Online Store. We are offering 50% off on our product. The procurement process is very simple, just hit the buy button and we get it shipped right off to you.\r\nTo know more about this special device, you can visit here neckbc.com . Why don’t you say goodbye to that neck pain today?\r\nWe are expecting your order right away!'),
(53, 'Williamdug', 'svtelanakudelnikova1992941xd6@mail.ru', 'notesnaka.com oiotugorvygivbjfguefiugehiwjfeoswifehgidjwifhge'),
(54, 'Mike Bishop\r\n', 'no-replyNuRry@gmail.com', 'Hi \r\n \r\nI have just took an in depth look on your  notesnaka.com for the Local ranking keywords and seen that your website could use an upgrade. \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nStart improving your local visibility with us, today! \r\n \r\nregards \r\nMike Bishop\r\n \r\nSpeed SEO Digital Agency \r\nsupport@speed-seo.net'),
(55, 'Olivia Johnson', 'bev.beike22@gmail.com', 'The Federal Reserve has been stimulating and stimulating the economy by printing more USD. Do you really understand how the monetary system works and how it affects you?\r\n\r\nWe are in extra-ordinary times and extraordinary times call for extraordinary measures. How do you ensure you stay on the right side of the upcoming wealth transfer from all the currency printing by central banks around the world?\r\n\r\nBefore you make any decision, we highly recommend you invest some of your time to watch and learn from this short series of documentary (designed for the average guy on the street) in youtube.\r\n\r\nThis is a video series called \"Hidden Secrets of Money\"\r\nhttps://bit.ly/3sOxlQJ\r\n\r\nThis document will explain why it is important you own some physical gold, silver and bitcoin.\r\n\r\nI have personally watched the entire series 3 times and it has changed the way I look at the entire monetary system. Protect your family by owning some physical gold, silver and bitcoin.\r\n\r\nBuy bitcoin here and save 10% from your trading fees at the world\'s biggest crypto exchange:\r\nhttps://bit.ly/31uRnnb\r\n\r\nIf you are a US resident, you can buy bitcoin here:\r\nhttps://bit.ly/3r3oPvQ'),
(56, 'default', 'wapiti2021@mailinator.com', 'Hi there!'),
(57, '', '', ''),
(58, 'default', 'wapiti2021@mailinator.com', 'Hi there!'),
(59, '', '', ''),
(60, ';env;', 'wapiti2021@mailinator.com', 'Hi there!'),
(61, '|env', 'wapiti2021@mailinator.com', 'Hi there!'),
(62, 'a;env;', 'wapiti2021@mailinator.com', 'Hi there!'),
(63, 'a);env;', 'wapiti2021@mailinator.com', 'Hi there!'),
(64, '../../../../../../../../../../../../../../../usr/bin/env|', 'wapiti2021@mailinator.com', 'Hi there!'),
(65, 'default;env;', 'wapiti2021@mailinator.com', 'Hi there!'),
(66, 'default\nenv;', 'wapiti2021@mailinator.com', 'Hi there!'),
(67, '&set&', 'wapiti2021@mailinator.com', 'Hi there!'),
(68, 'set', 'wapiti2021@mailinator.com', 'Hi there!'),
(69, 'env', 'wapiti2021@mailinator.com', 'Hi there!'),
(70, '/e\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(71, 'a;exit(md5(\'w4p1t1_md5\'));//', 'wapiti2021@mailinator.com', 'Hi there!'),
(72, 'a;exit(md5(\'w4p1t1_md5\'));#', 'wapiti2021@mailinator.com', 'Hi there!'),
(73, '\";exit(md5(\'w4p1t1_md5\'));//', 'wapiti2021@mailinator.com', 'Hi there!'),
(74, '\";exit(md5(\'w4p1t1_md5\'));#', 'wapiti2021@mailinator.com', 'Hi there!'),
(75, '\';exit(md5(\'w4p1t1_md5\'));//', 'wapiti2021@mailinator.com', 'Hi there!'),
(76, '\';exit(md5(\'w4p1t1_md5\'));#', 'wapiti2021@mailinator.com', 'Hi there!'),
(77, '\".exit(md5(\'w4p1t1_md5\'));//', 'wapiti2021@mailinator.com', 'Hi there!'),
(78, '\".exit(md5(\'w4p1t1_md5\'));#', 'wapiti2021@mailinator.com', 'Hi there!'),
(79, '\'.exit(md5(\'w4p1t1_md5\'));//', 'wapiti2021@mailinator.com', 'Hi there!'),
(80, '\'.exit(md5(\'w4p1t1_md5\'));#', 'wapiti2021@mailinator.com', 'Hi there!'),
(81, ';exit(md5(\'w4p1t1_md5\'));//', 'wapiti2021@mailinator.com', 'Hi there!'),
(82, ';exit(md5(\'w4p1t1_md5\'));#', 'wapiti2021@mailinator.com', 'Hi there!'),
(83, 'data:;base64,PD9waHAgZWNobyAndzRwMXQxJywnX2V2YWwnOyA/Pg==', 'wapiti2021@mailinator.com', 'Hi there!'),
(84, 'a`)`', 'wapiti2021@mailinator.com', 'Hi there!'),
(85, 'a`sleep 60`', 'wapiti2021@mailinator.com', 'Hi there!'),
(86, 'a;sleep 60;', 'wapiti2021@mailinator.com', 'Hi there!'),
(87, 'a|sleep 60;', 'wapiti2021@mailinator.com', 'Hi there!'),
(88, '&ping -n 25 127.0.0.1&', 'wapiti2021@mailinator.com', 'Hi there!'),
(89, 'default', ';env;', 'Hi there!'),
(90, 'default', '|env', 'Hi there!'),
(91, 'default', 'a;env;', 'Hi there!'),
(92, 'default', 'a);env;', 'Hi there!'),
(93, 'default', '../../../../../../../../../../../../../../../usr/bin/env|', 'Hi there!'),
(94, 'default', 'wapiti2021@mailinator.com;env;', 'Hi there!'),
(95, 'default', 'wapiti2021@mailinator.com\nenv;', 'Hi there!'),
(96, 'default', '&set&', 'Hi there!'),
(97, 'default', 'set', 'Hi there!'),
(98, 'default', 'env', 'Hi there!'),
(99, 'default', '/e\0', 'Hi there!'),
(100, 'default', 'a;exit(md5(\'w4p1t1_md5\'));//', 'Hi there!'),
(101, 'default', 'a;exit(md5(\'w4p1t1_md5\'));#', 'Hi there!'),
(102, 'default', '\";exit(md5(\'w4p1t1_md5\'));//', 'Hi there!'),
(103, 'default', '\";exit(md5(\'w4p1t1_md5\'));#', 'Hi there!'),
(104, 'default', '\';exit(md5(\'w4p1t1_md5\'));//', 'Hi there!'),
(105, 'default', '\';exit(md5(\'w4p1t1_md5\'));#', 'Hi there!'),
(106, 'default', '\".exit(md5(\'w4p1t1_md5\'));//', 'Hi there!'),
(107, 'default', '\".exit(md5(\'w4p1t1_md5\'));#', 'Hi there!'),
(108, 'default', '\'.exit(md5(\'w4p1t1_md5\'));//', 'Hi there!'),
(109, 'default', '\'.exit(md5(\'w4p1t1_md5\'));#', 'Hi there!'),
(110, 'default', ';exit(md5(\'w4p1t1_md5\'));//', 'Hi there!'),
(111, 'default', ';exit(md5(\'w4p1t1_md5\'));#', 'Hi there!'),
(112, 'default', 'data:;base64,PD9waHAgZWNobyAndzRwMXQxJywnX2V2YWwnOyA/Pg==', 'Hi there!'),
(113, 'default', 'a`)`', 'Hi there!'),
(114, 'default', 'a`sleep 60`', 'Hi there!'),
(115, 'default', 'a;sleep 60;', 'Hi there!'),
(116, 'default', 'a|sleep 60;', 'Hi there!'),
(117, 'default', '&ping -n 25 127.0.0.1&', 'Hi there!'),
(118, 'default', 'wapiti2021@mailinator.com', ';env;'),
(119, 'default', 'wapiti2021@mailinator.com', '|env'),
(120, 'default', 'wapiti2021@mailinator.com', 'a;env;'),
(121, 'default', 'wapiti2021@mailinator.com', 'a);env;'),
(122, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../../../../../../usr/bin/env|'),
(123, 'default', 'wapiti2021@mailinator.com', 'Hi there!;env;'),
(124, 'default', 'wapiti2021@mailinator.com', 'Hi there!\nenv;'),
(125, 'default', 'wapiti2021@mailinator.com', '&set&'),
(126, 'default', 'wapiti2021@mailinator.com', 'set'),
(127, 'default', 'wapiti2021@mailinator.com', 'env'),
(128, 'default', 'wapiti2021@mailinator.com', '/e\0'),
(129, 'default', 'wapiti2021@mailinator.com', 'a;exit(md5(\'w4p1t1_md5\'));//'),
(130, 'default', 'wapiti2021@mailinator.com', 'a;exit(md5(\'w4p1t1_md5\'));#'),
(131, 'default', 'wapiti2021@mailinator.com', '\";exit(md5(\'w4p1t1_md5\'));//'),
(132, 'default', 'wapiti2021@mailinator.com', '\";exit(md5(\'w4p1t1_md5\'));#'),
(133, 'default', 'wapiti2021@mailinator.com', '\';exit(md5(\'w4p1t1_md5\'));//'),
(134, 'default', 'wapiti2021@mailinator.com', '\';exit(md5(\'w4p1t1_md5\'));#'),
(135, 'default', 'wapiti2021@mailinator.com', '\".exit(md5(\'w4p1t1_md5\'));//'),
(136, 'default', 'wapiti2021@mailinator.com', '\".exit(md5(\'w4p1t1_md5\'));#'),
(137, 'default', 'wapiti2021@mailinator.com', '\'.exit(md5(\'w4p1t1_md5\'));//'),
(138, 'default', 'wapiti2021@mailinator.com', '\'.exit(md5(\'w4p1t1_md5\'));#'),
(139, 'default', 'wapiti2021@mailinator.com', ';exit(md5(\'w4p1t1_md5\'));//'),
(140, 'default', 'wapiti2021@mailinator.com', ';exit(md5(\'w4p1t1_md5\'));#'),
(141, 'default', 'wapiti2021@mailinator.com', 'data:;base64,PD9waHAgZWNobyAndzRwMXQxJywnX2V2YWwnOyA/Pg=='),
(142, 'default', 'wapiti2021@mailinator.com', 'a`)`'),
(143, 'default', 'wapiti2021@mailinator.com', 'a`sleep 60`'),
(144, 'default', 'wapiti2021@mailinator.com', 'a;sleep 60;'),
(145, 'default', 'wapiti2021@mailinator.com', 'a|sleep 60;'),
(146, 'default', 'wapiti2021@mailinator.com', '&ping -n 25 127.0.0.1&'),
(147, 'https://wapiti3.ovh/e.php', 'wapiti2021@mailinator.com', 'Hi there!'),
(148, 'https://wapiti3.ovh/e.php\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(149, '/etc/passwd', 'wapiti2021@mailinator.com', 'Hi there!'),
(150, '/etc/passwd\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(151, '/etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(152, '/etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(153, 'C:\\Windows\\System32\\drivers\\etc\\services', 'wapiti2021@mailinator.com', 'Hi there!'),
(154, 'C:\\Windows\\System32\\drivers\\etc\\services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(155, 'C:\\Windows\\System32\\drivers\\etc\\services::$DATA', 'wapiti2021@mailinator.com', 'Hi there!'),
(156, 'C:/Windows/System32/drivers/etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(157, 'C:/Windows/System32/drivers/etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(158, 'C:/Windows/System32/drivers/etc/services::$DATA', 'wapiti2021@mailinator.com', 'Hi there!'),
(159, '../../../../../../../../../../lib/', 'wapiti2021@mailinator.com', 'Hi there!'),
(160, '../../../../../../../../../../windows/', 'wapiti2021@mailinator.com', 'Hi there!'),
(161, '../../../../../../../../../../etc/passwd', 'wapiti2021@mailinator.com', 'Hi there!'),
(162, '../../../../../../../../../../../../../../../../../../../../etc/passwd', 'wapiti2021@mailinator.com', 'Hi there!'),
(163, '../../../../../../../../../../etc/passwd\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(164, '../../../../../../../../../../../../../../../../../../../../etc/passwd\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(165, '../../../../../../../../../../etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(166, '../../../../../../../../../../../../../../../../../../../../etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(167, '../../../../../../../../../../etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(168, '../../../../../../../../../../../../../../../../../../../../etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(169, '../../../../../../../../../../Windows/System32/drivers/etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(170, '../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(171, '../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(172, '../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(173, 'default/../../../../../../../../../../etc/passwd', 'wapiti2021@mailinator.com', 'Hi there!'),
(174, 'default/../../../../../../../../../../../../../../../../../../../../etc/passwd', 'wapiti2021@mailinator.com', 'Hi there!'),
(175, 'default/../../../../../../../../../../etc/passwd\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(176, 'default/../../../../../../../../../../../../../../../../../../../../etc/passwd\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(177, 'default/../../../../../../../../../../etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(178, 'default/../../../../../../../../../../../../../../../../../../../../etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(179, 'default/../../../../../../../../../../etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(180, 'default/../../../../../../../../../../../../../../../../../../../../etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(181, 'default/../../../../../../../../../../Windows/System32/drivers/etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(182, 'default/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(183, 'default/../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(184, 'default/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(185, 'default/../../../../../../../../../../etc/passwd', 'wapiti2021@mailinator.com', 'Hi there!'),
(186, 'default/../../../../../../../../../../../../../../../../../../../../etc/passwd', 'wapiti2021@mailinator.com', 'Hi there!'),
(187, 'default/../../../../../../../../../../etc/passwd\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(188, 'default/../../../../../../../../../../../../../../../../../../../../etc/passwd\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(189, 'default/../../../../../../../../../../etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(190, 'default/../../../../../../../../../../../../../../../../../../../../etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(191, 'default/../../../../../../../../../../etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(192, 'default/../../../../../../../../../../../../../../../../../../../../etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(193, 'default/../../../../../../../../../../Windows/System32/drivers/etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(194, 'default/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(195, 'default/../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(196, 'default/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(197, 'file:///etc/passwd', 'wapiti2021@mailinator.com', 'Hi there!'),
(198, 'file://C:\\Windows\\System32\\drivers\\etc\\services', 'wapiti2021@mailinator.com', 'Hi there!'),
(199, '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/passwd', 'wapiti2021@mailinator.com', 'Hi there!'),
(200, '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/passwd\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(201, '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(202, '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(203, '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//Windows/System32/drivers/etc/services', 'wapiti2021@mailinator.com', 'Hi there!'),
(204, '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//Windows/System32/drivers/etc/services\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(205, 'contact.php', 'wapiti2021@mailinator.com', 'Hi there!'),
(206, 'contact.php\0', 'wapiti2021@mailinator.com', 'Hi there!'),
(207, 'contact.php::$DATA', 'wapiti2021@mailinator.com', 'Hi there!'),
(208, 'default', 'https://wapiti3.ovh/e.php', 'Hi there!'),
(209, 'default', 'https://wapiti3.ovh/e.php\0', 'Hi there!'),
(210, 'default', '/etc/passwd', 'Hi there!'),
(211, 'default', '/etc/passwd\0', 'Hi there!'),
(212, 'default', '/etc/services', 'Hi there!'),
(213, 'default', '/etc/services\0', 'Hi there!'),
(214, 'default', 'C:\\Windows\\System32\\drivers\\etc\\services', 'Hi there!'),
(215, 'default', 'C:\\Windows\\System32\\drivers\\etc\\services\0', 'Hi there!'),
(216, 'default', 'C:\\Windows\\System32\\drivers\\etc\\services::$DATA', 'Hi there!'),
(217, 'default', 'C:/Windows/System32/drivers/etc/services', 'Hi there!'),
(218, 'default', 'C:/Windows/System32/drivers/etc/services\0', 'Hi there!'),
(219, 'default', 'C:/Windows/System32/drivers/etc/services::$DATA', 'Hi there!'),
(220, 'default', '../../../../../../../../../../lib/', 'Hi there!'),
(221, 'default', '../../../../../../../../../../windows/', 'Hi there!'),
(222, 'default', '../../../../../../../../../../etc/passwd', 'Hi there!'),
(223, 'default', '../../../../../../../../../../../../../../../../../../../../etc/passwd', 'Hi there!'),
(224, 'default', '../../../../../../../../../../etc/passwd\0', 'Hi there!'),
(225, 'default', '../../../../../../../../../../../../../../../../../../../../etc/passwd\0', 'Hi there!'),
(226, 'default', '../../../../../../../../../../etc/services', 'Hi there!'),
(227, 'default', '../../../../../../../../../../../../../../../../../../../../etc/services', 'Hi there!'),
(228, 'default', '../../../../../../../../../../etc/services\0', 'Hi there!'),
(229, 'default', '../../../../../../../../../../../../../../../../../../../../etc/services\0', 'Hi there!'),
(230, 'default', '../../../../../../../../../../Windows/System32/drivers/etc/services', 'Hi there!'),
(231, 'default', '../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services', 'Hi there!'),
(232, 'default', '../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'Hi there!'),
(233, 'default', '../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'Hi there!'),
(234, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../etc/passwd', 'Hi there!'),
(235, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../etc/passwd', 'Hi there!'),
(236, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../etc/passwd\0', 'Hi there!'),
(237, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../etc/passwd\0', 'Hi there!'),
(238, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../etc/services', 'Hi there!'),
(239, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../etc/services', 'Hi there!'),
(240, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../etc/services\0', 'Hi there!'),
(241, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../etc/services\0', 'Hi there!'),
(242, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../Windows/System32/drivers/etc/services', 'Hi there!'),
(243, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services', 'Hi there!'),
(244, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'Hi there!'),
(245, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'Hi there!'),
(246, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../etc/passwd', 'Hi there!'),
(247, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../etc/passwd', 'Hi there!'),
(248, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../etc/passwd\0', 'Hi there!'),
(249, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../etc/passwd\0', 'Hi there!'),
(250, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../etc/services', 'Hi there!'),
(251, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../etc/services', 'Hi there!'),
(252, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../etc/services\0', 'Hi there!'),
(253, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../etc/services\0', 'Hi there!'),
(254, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../Windows/System32/drivers/etc/services', 'Hi there!'),
(255, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services', 'Hi there!'),
(256, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'Hi there!'),
(257, 'default', 'wapiti2021@mailinator.com/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services\0', 'Hi there!'),
(258, 'default', 'file:///etc/passwd', 'Hi there!'),
(259, 'default', 'file://C:\\Windows\\System32\\drivers\\etc\\services', 'Hi there!'),
(260, 'default', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/passwd', 'Hi there!'),
(261, 'default', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/passwd\0', 'Hi there!'),
(262, 'default', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/services', 'Hi there!'),
(263, 'default', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/services\0', 'Hi there!'),
(264, 'default', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//Windows/System32/drivers/etc/services', 'Hi there!'),
(265, 'default', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//Windows/System32/drivers/etc/services\0', 'Hi there!'),
(266, 'default', '/etc/passwd\0.com', 'Hi there!'),
(267, 'default', 'c:\\Windows\\System32\\drivers\\etc\\services\0.com', 'Hi there!'),
(268, 'default', '../../../../../../../../../../etc/passwd\0.com', 'Hi there!'),
(269, 'default', '../../../../../../../../../../windows/System32/drivers/etc/services\0.com', 'Hi there!'),
(270, 'default', 'contact.php', 'Hi there!'),
(271, 'default', 'contact.php\0', 'Hi there!'),
(272, 'default', 'contact.php::$DATA', 'Hi there!'),
(273, 'default', 'wapiti2021@mailinator.com', 'https://wapiti3.ovh/e.php'),
(274, 'default', 'wapiti2021@mailinator.com', 'https://wapiti3.ovh/e.php\0'),
(275, 'default', 'wapiti2021@mailinator.com', '/etc/passwd'),
(276, 'default', 'wapiti2021@mailinator.com', '/etc/passwd\0'),
(277, 'default', 'wapiti2021@mailinator.com', '/etc/services'),
(278, 'default', 'wapiti2021@mailinator.com', '/etc/services\0'),
(279, 'default', 'wapiti2021@mailinator.com', 'C:\\Windows\\System32\\drivers\\etc\\services'),
(280, 'default', 'wapiti2021@mailinator.com', 'C:\\Windows\\System32\\drivers\\etc\\services\0'),
(281, 'default', 'wapiti2021@mailinator.com', 'C:\\Windows\\System32\\drivers\\etc\\services::$DATA'),
(282, 'default', 'wapiti2021@mailinator.com', 'C:/Windows/System32/drivers/etc/services'),
(283, 'default', 'wapiti2021@mailinator.com', 'C:/Windows/System32/drivers/etc/services\0'),
(284, 'default', 'wapiti2021@mailinator.com', 'C:/Windows/System32/drivers/etc/services::$DATA'),
(285, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../lib/'),
(286, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../windows/'),
(287, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../etc/passwd'),
(288, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../../../../../../../../../../../etc/passwd'),
(289, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../etc/passwd\0'),
(290, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../../../../../../../../../../../etc/passwd\0'),
(291, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../etc/services'),
(292, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../../../../../../../../../../../etc/services'),
(293, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../etc/services\0'),
(294, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../../../../../../../../../../../etc/services\0'),
(295, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../Windows/System32/drivers/etc/services'),
(296, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services'),
(297, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../Windows/System32/drivers/etc/services\0'),
(298, 'default', 'wapiti2021@mailinator.com', '../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services\0'),
(299, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../etc/passwd'),
(300, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../etc/passwd'),
(301, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../etc/passwd\0'),
(302, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../etc/passwd\0'),
(303, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../etc/services'),
(304, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../etc/services'),
(305, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../etc/services\0'),
(306, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../etc/services\0'),
(307, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../Windows/System32/drivers/etc/services'),
(308, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services'),
(309, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../Windows/System32/drivers/etc/services\0'),
(310, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services\0'),
(311, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../etc/passwd'),
(312, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../etc/passwd'),
(313, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../etc/passwd\0'),
(314, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../etc/passwd\0'),
(315, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../etc/services'),
(316, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../etc/services'),
(317, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../etc/services\0'),
(318, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../etc/services\0'),
(319, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../Windows/System32/drivers/etc/services'),
(320, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services'),
(321, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../Windows/System32/drivers/etc/services\0'),
(322, 'default', 'wapiti2021@mailinator.com', 'Hi there!/../../../../../../../../../../../../../../../../../../../../Windows/System32/drivers/etc/services\0'),
(323, 'default', 'wapiti2021@mailinator.com', 'file:///etc/passwd'),
(324, 'default', 'wapiti2021@mailinator.com', 'file://C:\\Windows\\System32\\drivers\\etc\\services'),
(325, 'default', 'wapiti2021@mailinator.com', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/passwd'),
(326, 'default', 'wapiti2021@mailinator.com', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/passwd\0'),
(327, 'default', 'wapiti2021@mailinator.com', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/services'),
(328, 'default', 'wapiti2021@mailinator.com', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//etc/services\0'),
(329, 'default', 'wapiti2021@mailinator.com', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//Windows/System32/drivers/etc/services'),
(330, 'default', 'wapiti2021@mailinator.com', '....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//....//Windows/System32/drivers/etc/services\0'),
(331, 'default', 'wapiti2021@mailinator.com', 'contact.php'),
(332, 'default', 'wapiti2021@mailinator.com', 'contact.php\0'),
(333, 'default', 'wapiti2021@mailinator.com', 'contact.php::$DATA'),
(334, 'default¿\'\"(', 'wapiti2021@mailinator.com', 'Hi there!'),
(335, 'default', 'wapiti2021@mailinator.com¿\'\"(', 'Hi there!'),
(336, 'default', 'wapiti2021@mailinator.com', 'Hi there!¿\'\"('),
(337, 'wtik9kmjk1', 'wapiti2021@mailinator.com', 'Hi there!'),
(338, 'default', 'w8yega127i', 'Hi there!'),
(339, 'default', 'wapiti2021@mailinator.com', 'w08q132p92'),
(340, 'https://wapiti3.ovh/ssrf/mazeas/44/6e616d65/', 'wapiti2021@mailinator.com', 'Hi there!'),
(341, 'default', 'https://wapiti3.ovh/ssrf/mazeas/44/656d61696c/', 'Hi there!'),
(342, 'default', 'wapiti2021@mailinator.com', 'https://wapiti3.ovh/ssrf/mazeas/44/6d657373616765/'),
(343, 'EnriqueTew', 'no-replyVOG@gmail.com', 'Good day!  notesnaka.com \r\n \r\nDo you know the simplest way to mention your merchandise or services? Sending messages through contact forms can enable you to simply enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that will be sent through it will find yourself in the mailbox that\'s supposed for such messages. Sending messages using Contact forms is not blocked by mail systems, which means it\'s sure to reach the client. You will be able to send your offer to potential customers who were previously unprocurable because of spam filters. \r\nWe offer you to check our service for free. We will send up to fifty thousand message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis letter is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693'),
(344, 'Mike Jeff\r\n', 'no-reply@google.com', 'Greetings \r\n \r\nI have just analyzed  notesnaka.com for its SEO metrics and saw that your website could use an upgrade. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\nregards \r\nMike Jeff\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(345, 'Tiara Guest', 'tiara.guest@hotmail.com', 'Dear you,\r\n\r\nTimes are bad and many are suffering. This is a time when many are seeking solace and inner peace. While we cannot change much of what is going on around us, we can calibrate our inner self.\r\n\r\nI personally found Buddhism (a way of life) to be really beneficial.\r\n\r\nDo take some time off to explore Buddhism in the short videos below (including a Mantra that really sooths our soul).\r\n\r\n\r\nBuddhism As a Way of Life - From Dough\r\nhttps://www.youtube.com/watch?v=pbngKOUgCDY\r\n\r\nMy Path To Becoming A Buddhist - From Emma Slade\r\nhttps://www.youtube.com/watch?v=QnJIjEAE41w\r\n\r\nIf you are curious about the \"Mantra Of Great Compassion\" as mentioned in the videos above, you can listen to it here and calm your soul.\r\nhttps://www.youtube.com/watch?v=72luMobA_vI\r\n\r\n\r\n\r\nBuddhism is more of a way of life than a religion. It doesnt matter what your background is, we believe everyone can incorporate Buddhism into one\'s daily life.\r\n\r\nHow To Practice Buddhism for Beginners and Westerners (Daily Practice) by Alan Peto\r\nhttps://www.youtube.com/watch?v=89gM2g0KOYU\r\n\r\nIf you find this helpful and knows someone in need of this, please do share this.'),
(346, 'Joshua Wilson', 'no-reply@trailquest.nl', 'TrailQuest is een Salesforce boutique consultancy die Sales Cloud en Pardot implementaties verzorgd voor MKB Nederland. Ter gelegenheid van onze nieuw verworven officiële Salesforce partner consultant status, bieden we tijdelijk uiterst scherp geprijsde implementaties. \r\nNeem contact op en profiteer nu van onze zeer gunstige tarieven! \r\nTrailQuest \r\nAmstelkade 9-3, 1078 AA, Amsterdam \r\ninfo@trailquest.nl \r\nhttps://trailquest.nl/salesforce-partner-actie');
INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(347, 'Anita Mello', 'mello.anita@gmail.com', '\r\nIs Bitcoing going to one million dollars or zero? Check out the video below:\r\nhttps://www.youtube.com/watch?v=c6DmQxBlXms\r\n\r\n\r\nBitcoin Infiltrates Corporate America\r\nhttps://www.youtube.com/watch?v=Cg10yYZjK94\r\n\r\nThe Feds are Creating a Liquidity Tsunami - Robert Kiyosaki, Kim Kiyosaki and Richard Duncan\r\nhttps://www.youtube.com/watch?v=lJCm6MW6nok\r\n\r\nInflation is going to eat away your savings, buy some bitcoins to preserve your purchasing power (and potentially even make money from it)\r\nBuy bitcoin here and save 10% from your trading fees at the world\'s biggest crypto exchange:\r\nhttps://bit.ly/31uRnnb\r\n\r\nIf you are a US resident, you can buy bitcoin here:\r\nhttps://bit.ly/3r3oPvQ'),
(348, 'Marcus Siddins', 'siddins.marcus@msn.com', 'While the mainsteam media is talking \"Bitcoin Bitcoin Bitcoin\", it is not a good idea to buy bitcoin now.\r\n\r\nReason? It has gone up quite a lot and has lesser room to grow.\r\n\r\nIf you are going to take high risk with your money in cryptocurrency, it is reasonable to expect high returns.\r\n\r\nHow high?\r\n\r\nWe believe this coin Kin can potentially give you a x10 or even x100 from the currenct price.\r\n\r\nYes, Im talking about a 10 or even potentially 100 bagger here.\r\n\r\nA $100 can be turned into a $1000 or $10,000.\r\n\r\nA $10,000 invested in Kin might even nett you a MILLION DOLLARS!\r\n\r\nKin coin (https://kin.org/) is also currenctly not listed on Binance (the world\'s biggest cryptocurrency exchange and Coinbase (recently listed in NASDAQ).\r\n\r\nCoins which list of each of the exchanges have been known to go up in prices and Kin is a coin that has such high potential.\r\n\r\nFor more details on WHY Kin has such potential, we suggest you invest the next 15 mins of your time reading this:\r\n\r\nhttps://medium.com/@ghosttype01/why-kin-will-be-a-100b-network-7fce59a08cfe\r\n\r\nTo buy Kin, you can sign up for a free account here at FTX and get 5% off your trading fees!\r\nClick here for details: https://bit.ly/3nkbLSa'),
(349, 'VictorGog', 'jeffp@hotmail.fr', 'Common handyman from France earns earns more in a day than his former boss in a year more than $ 220,000 per week, register and start making money like him   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc1vioi&sa=D&Ha=Hg&usg=AFQjCNFLclIyfyHFrFRX3HlmOdWKlAPzmA   <<<<<<<<<<<<<'),
(350, 'Lucie Lashley', 'lucie.lashley@yahoo.com', 'The biggest trend to make money in 2021 (and beyond) is in cryptocurrencies like Bitcoin, Ethereum and XRP.\r\n\r\nThere are literally thousands of coins. And 2021 is a crazy year for cryptos where crazy gains are being made.\r\n\r\nThe single biggest problem faced by everyone is the sheer volume of new information exploding daily!\r\n\r\nBelow is a list of the biggest development in crypto land in the last week:\r\n\r\n\r\n1. https://cointelegraph.com/news/japanese-gaming-giant-nexon-invests-100m-into-bitcoin\r\n\r\n2. https://decrypt-co.cdn.ampproject.org/c/s/decrypt.co/69323/damn-huge-germany-opens-up-to-institutional-crypto-funds?amp=1\r\n\r\n3. https://decrypt.co/69409/defi-nft-booms-send-metamask-past-5-million-active-users\r\n\r\n4. https://www.cnbc.com/2021/04/28/sec-delays-decision-on-approving-bitcoin-etf.html\r\n\r\n\r\nWe are excited and we have something interesting for you. We created a Telegram groupchat ( you can download the app Telegram here: https://telegram.org/) for you.\r\n\r\nIn this groupchat, we are NOT selling you anything (although we do post affiliate links from time to time) to share with you the latest update in crypto world. Actionable info which can potentially make you money.\r\n\r\nNo courses, no selling and no nosense.\r\n\r\nIn this groupchat, we will also be documenting in an experiment of how we will try to turn USD$1000 into USD$1000,000 (ONE MILLION)\r\n\r\nJoin us in our Telegram group to follow our journey in getting to 1 million dollars!\r\nhttps://t.me/kaizenomic'),
(351, 'James Lambert', 'lambertj283@gmail.com', 'Good day \r\n \r\nI`m seeking a reputable company/ individual to partner with in a manner that would benefit both parties. The project is worth $24 Million so if interested, kindly contact me through this email jameslambert@lambert-james.com for clarification. \r\n \r\nI await your response. \r\n \r\nThanks, \r\nJames Lambert'),
(352, 'Mike Ryder\r\n', 'no-replyNuRry@gmail.com', 'Good Day \r\n \r\nI have just verified your SEO on  notesnaka.com for its Local SEO ranks and seen that your website could use a boost. \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nStart increasing your local visibility with us, today! \r\n \r\nregards \r\nMike Ryder\r\n \r\nSpeed SEO Digital Agency \r\nsupport@speed-seo.net'),
(353, 'AnnGeT', 'annGeT@allsets.xyz', 'Go ahead, have sex on the first date\r\nhttp://foderformnetpprel.gq/chk/59\r\n'),
(354, 'Mobile-Nal', 'sino@mailto.buzz', 'Can you win prize on online casinos? \r\nYes, playing online casino games are real chanse on Australian players. ... When online gambling as a replacement for real paper money, it is necessary to make a lees into your casino account. The finery online casinos advance their players a sizeable flower of reputable banking options to consign and go back on their liquidate \r\nTry this  website \r\n<a href=https://mobile-casino.me>website</a>'),
(355, 'Yahoo', 'press@yahoo.com', 'Most profitable cryptocurrency miners has been released : \r\nDBT Miner: $7,500 (Bitcoin), $13,000 (Litecoin), $13,000 (Ethereum), and $15,000 (Monero) \r\n \r\nGBT Miner: $22,500 (Bitcoin), $39,000 (Litecoin), $37,000 (Ethereum), and $45,000 (Monero) \r\nRead more here : \r\nhttps://www.yahoo.com/now/bitwats-release-most-profitable-asic-195600764.html'),
(356, 'Jann Cantor', 'cantor.jann12@gmail.com', 'Elon Musk’s SpaceX will launch the “DOGE-1 Mission to the Moon” in the first quarter of 2022, with the company accepting the meme-inspired cryptocurrency as payment.\r\n\r\nGeometric Energy Corporation announced the dogecoin-funded mission on Sunday, with DOGE-1 representing a 40 kilogram cube satellite flying as a payload on a Falcon 9 rocket.\r\n\r\nSpaceX vice president of commercial sales Tom Ochinero said in a statement that DOGE-1 “will demonstrate the application of cryptocurrency beyond Earth orbit and set the foundation for interplanetary commerce.”\r\n\r\nReference: https://www.cnbc.com/2021/05/09/spacex-accepts-dogecoin-payment-for-doge-1-mission-to-the-moon.html\r\n\r\nDoge has gone up 1161% since early April this year.\r\n\r\nIf you want to be part of this history moment, you can buy Doge coin at Binance here (biggest crypto exchange in the world).\r\n\r\nhttps://bit.ly/33yXOqz  -> Use this link to sign up at Binance for free and get 10% off ALL your trades in Binance forever!'),
(357, 'Mike Jerome\r\n', 'no-reply@google.com', 'Howdy \r\n \r\nI have just checked  notesnaka.com for the ranking keywords and saw that your website could use a push. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Jerome\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(358, 'Byronmaphy', 'RegalGS4@gmail.com', 'Elon Musk 5,000 BTC Giveaway! \r\nDue to the fact that Tesla has stopped selling cars for Bitcoins. \r\nElon Musk decided to distribute 5,000 Bitcoins per week for a month. \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc1PsE1&sa=D&Hq=Me&usg=AFQjCNGCUIRa4fS6cDrEAZvz_5ew1ySmpQ \r\nMore than 500 people have already taken part in this action and they received the promised bitcoins from Elon Musk. \r\nHurry up, otherwise you may not be enough ... \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc1PsE1&sa=D&Jr=Hy&usg=AFQjCNGCUIRa4fS6cDrEAZvz_5ew1ySmpQ'),
(359, 'Helena Sternberg', 'sternberg.helena@msn.com', 'Hi,\r\n\r\nMany have the misconception of Buddhism being a religion. Buddhism is really more of a way of life whch can wired our brains positively and see changes in a different light.\r\n\r\nSince fate has brough us here, we hope you can spend some time to explore Buddhism.\r\n\r\nWe have shortlisted a few videos from youtube with regards to Buddhism, we believe your time will not be wasted:\r\n\r\nCheck out the videos in youtube here:\r\n\r\nWhat is Buddhism?\r\nhttps://bit.ly/3olo410\r\n\r\nBasic of Buddhism by Patrick Goodness in youtube:\r\nhttps://bit.ly/3waxT4D\r\n\r\nAlbert Einstein on Buddhism - what Albert Einstein thought about Buddhism:\r\nhttps://bit.ly/3ypqr7V\r\n\r\nBertrand Russell (Nobel Prize Winner) on Buddha and Buddhism\r\nhttps://bit.ly/3fmvk91\r\n\r\nThere is a great deal of quality content in Youtube regarding Buddhism and how it can alleviate sufferings. During this trying times, we hope the above can help you! If you find this useful, please share with your friends!\r\n\r\n'),
(360, 'Akilah Sleeman', 'akilah.sleeman@hotmail.com', 'The bitcoin price, after nudging $65,000 per bitcoin in April, dropped to just under $30,000 this week before rebounding slightly.\r\n\r\nIf you have been considering to buy bitcoins but found it too expensive, your chance to buy bitcoin at 50% off is here!\r\n\r\nThe SEC in the US classifies Bitcoin as a digital asset and Bitcoin is here to stay. If you fear Bitcoin\'s price going down, please take a look at Bitcoin\'s chart over the last 10 years, each time it crashes 50%, it has always gone on to make new all time high!\r\n\r\nAnd Bitcoin is not the only cryptocurrency on discount! Most cryptos are down in prices too!\r\n\r\nIf you want profits, we buy when prices are low and sell when prices are high!\r\n\r\nSure, cryptos might drop a little more from current prices, and if you are new, you can buying a little cryptocurrency over a few days or weeks by using the dollar cost averaging method.\r\n\r\nFor example, instead of buying $1000 worth of cryptocurrencies in a single day, buy $100 per day over 10 days. In this way you can get a good average price.\r\n\r\n\r\n\r\nIf you want to take advantage of the crazy discounts now, you can buy cryptocurrecncies at Binance here (biggest crypto exchange in the world).\r\n\r\nhttps://bit.ly/33yXOqz  -> Use this link to sign up at Binance for free and get 10% off ALL your trades in Binance forever!'),
(361, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'Hey, this is Eric and I ran across notesnaka.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=notesnaka.com\r\n'),
(362, 'Mike Fraser\r\n', 'no-reply@google.com', 'Greetings \r\n \r\nI have just verified your SEO on  notesnaka.com for its SEO metrics and saw that your website could use an upgrade. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Fraser\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(363, 'Justin Trevino', 'trevino.justin@hotmail.com', 'The world was focusing on Doge Coin after Elon Musk tweeted that he owns Doge coin.\r\n\r\nDo you know there is another cryptocurrency - Shi Inbu Coin is that down 85% from its top earlier?\r\n\r\nCrypto currencies are volatile and big fortune (and losses) can be made within weeks or months.\r\n\r\nWith Shi Inu at such low prices, you can consider buying some at Binance (https://bit.ly/33yXOqz)\r\n\r\nGo to this url and simply sign up with your email and password and enjoy 10% off your trading fees for life!  ->https://bit.ly/33yXOqz\r\n\r\n\r\nIf you want to take advantage of the crazy discounts now, you can buy cryptocurrecncies at Binance here (biggest crypto exchange in the world).\r\n\r\nhttps://bit.ly/33yXOqz  -> Use this link to sign up at Binance for free and get 10% off ALL your trades in Binance forever!'),
(364, 'ThomasSax', 'hrhmbambi@gmail.com', 'Dear Director, \r\nWe are interested in your products. If your company can handle a bulk supply of your products to Cameroon, please contact us. \r\nPlease forward copy of your reply to hrhbahmbi3@oepd.org    Regards HRM Bah Mbi'),
(365, 'Ashlay Hazalton', 'ashlayhazalton36145@gmail.com', 'Hi, this is Chris. \r\nWho win all online casinos by using FREE BONUS. \r\n \r\nWitch mean, I don’t really spend money in online casinos. \r\n \r\nBut I win every time, and actually, everybody can win by following my directions. \r\n \r\neven you can win! \r\n \r\nSo, if you’re the person, who can listen to someone really smart, you should just try!! \r\n \r\nThe best online casino, that I really recommend is, Vera&John. \r\nEstablished in 2010 and became best online casino in the world. \r\n \r\nThey give you free bonus when you charge more than $50. \r\nIf you charge $50, your bonus is going to be $50. \r\n \r\nIf you charge $500, you get $500 Free bonus. \r\nYou can bet up to $1000. \r\n \r\nJust try roulette, poker, black jack…any games with dealers. \r\nBecause dealers always have to make some to win and, only thing you need to do is to be chosen. \r\n \r\nDon’t ever spend your bonus at slot machines. \r\nYOU’RE GONNA LOSE YOUR MONEY!! \r\n \r\nNext time, I will let you know how to win in online casino against dealers!! \r\n \r\nDon’t forget to open your VERA&JOHN account, otherwise you’re gonna miss even more chances!! \r\n \r\n \r\n \r\nOpen Vera&John account (free) \r\nhttps://bit.ly/3wZkpco'),
(366, 'Bennie Coffee', 'coffee.bennie27@gmail.com', '\r\nIn his TEDx talk, he will share a teaching from the oldest printed book in the world—the Diamond Cutter Sutra—which helps us get everything we want in life, in a way which also helps the entire world. We will be learning an ancient method known as the Four Steps, which can be applied to five different goals: financial independence for the rest of our life; great personal and professional relationships; vibrant health and energy; a clear, happy, and focused mind—and most importantly, how we can use all these to find out why we came into this world, and how we can live a life of great purpose and meaning.\r\n\r\nGeshe Michael Roach is a Princeton University graduate who spent 25 years in a Tibetan monastery and is the first American to be awarded the degree of Geshe, or Master of Buddhism. He utilized his monastery training to help build a major New York corporation which reached $250 million in annual sales, and was sold to super-investor Warren Buffett in 2009. Michael used a large portion of his business profits, and support from companies like Hewlett Packard, to found a 25-year effort to train and pay Tibetan refugees to input thousands of their endangered ancient books and make them available online for free.\r\n\r\nWe are not affiliated to Michael Roach in anyway. We are helping to spread his message to make this world a better place. Please share with your friends if you find this helpful.\r\nWatch Geshe Michael Roach\'s TED talk here.\r\nhttps://bit.ly/3znMgFe\r\n\r\nListen to the Diamond Cutter Sutra in English below in youtube:\r\nhttps://bit.ly/3zpREYz\r\nThe Diamond Sutra - \r\n\"The Diamond That Cuts Through Illusion\"\r\nA new translation In English by Alex Johnson\r\nRead by Chris Johnys.'),
(367, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found notesnaka.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=notesnaka.com\r\n'),
(368, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'Hi, my name is Eric and I’m betting you’d like your website notesnaka.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at notesnaka.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=notesnaka.com\r\n'),
(369, 'Mobile-Nal', 's.upe.rhe.r.o.be.n.7.7.7@gmail.com', 'Can you win cash on online casinos? \r\nYes, playing online casino games are real chanse an eye to Australian players. ... When online gambling for authentic wealth, it is necessary to make a put away into your casino account. The finery online casinos advance their players a sizeable high-quality of reputable banking options to consign and rescind their gelt \r\nmobile version \r\n<a href=http://mobile-casino.me>here</a>'),
(370, 'Jami Franz', 'jami.franz5@gmail.com', '\r\nIn his TEDx talk, he will share a teaching from the oldest printed book in the world—the Diamond Cutter Sutra—which helps us get everything we want in life, in a way which also helps the entire world. We will be learning an ancient method known as the Four Steps, which can be applied to five different goals: financial independence for the rest of our life; great personal and professional relationships; vibrant health and energy; a clear, happy, and focused mind—and most importantly, how we can use all these to find out why we came into this world, and how we can live a life of great purpose and meaning.\r\n\r\nGeshe Michael Roach is a Princeton University graduate who spent 25 years in a Tibetan monastery and is the first American to be awarded the degree of Geshe, or Master of Buddhism. He utilized his monastery training to help build a major New York corporation which reached $250 million in annual sales, and was sold to super-investor Warren Buffett in 2009. Michael used a large portion of his business profits, and support from companies like Hewlett Packard, to found a 25-year effort to train and pay Tibetan refugees to input thousands of their endangered ancient books and make them available online for free.\r\n\r\nWe are not affiliated to Michael Roach in anyway. We are helping to spread his message to make this world a better place. Please share with your friends if you find this helpful.\r\nWatch Geshe Michael Roach\'s TED talk here.\r\nhttps://bit.ly/3znMgFe\r\n\r\nListen to the Diamond Cutter Sutra in English below in youtube:\r\nhttps://bit.ly/3zpREYz\r\nThe Diamond Sutra - \r\n\"The Diamond That Cuts Through Illusion\"\r\nA new translation In English by Alex Johnson\r\nRead by Chris Johnys.'),
(371, 'Mike Taylor\r\n', 'no-replyer@gmail.com', 'Hi there \r\n \r\nIncrease your notesnaka.com SEO metrics values with us and get more visibility and exposure for your website. \r\n \r\nMore info: \r\nhttps://www.monkeydigital.org/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.org/product/ahrefs-dr50-ur70-seo-plan/ \r\nhttps://www.monkeydigital.org/product/trust-flow-seo-package/ \r\n \r\n \r\nthank you \r\nMike Taylor\r\n'),
(372, 'СloudCip', 'svidinfo1980@gmail.com', 'Hello, let me introduce you to our program. \r\nA program for fast website promotion. \r\nResult: \r\n- Your site is in the top of the search results. \r\n- The counter of visits grows before our eyes. \r\n- High scores on all indicators. \r\n- Earn money from advertising. \r\nThe program has the ability to glue the sites of competitors to omit them in the search results. \r\nLearn more about the program. \r\nhttps://freetopfast.com/ \r\ndownload'),
(373, 'SEO X Press Digital Agency', 'mike@digital-x-press.com', 'Greetings \r\n \r\nI have just analyzed  notesnaka.com for its SEO Trend and seen that your website could use a push. \r\n \r\nWe will improve your Ranks organically and safely, using only whitehat methods, \r\n \r\nIf interested, kindly hit reply \r\n \r\nregards \r\nMike Sheldon\r\n \r\nSEO X Press Digital Agency \r\nsupport@digital-x-press.com'),
(374, 'JamesVam', 'no-replyVOG@gmail.com', 'Hello!  notesnaka.com \r\n \r\nDo you know the best way to point out your product or services? Sending messages using contact forms will permit you to easily enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that will be sent through it will find yourself in the mailbox that\'s intended for such messages. Causing messages using Feedback forms isn\'t blocked by mail systems, which means it is absolute to reach the recipient. You may be able to send your supply to potential customers who were previously inaccessible due to email filters. \r\nWe offer you to test our service for gratis. We are going to send up to 50,000 message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis offer is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.'),
(375, 'Registration Certificate Database', 'noreply@webregistersolutions.com', 'The domain(s) listed below are due to expire in our certificate database within the next 24 hours: \n\nnotesnaka.com (2021-06-29) \n\nYour invoice is currently OVERDUE. Your automated payment method may have expired or failed for technical reasons. \n\nUpon expiration, your registration will automatically enter into a grace period in PENDING-DELETE status. During this time, the domain certificate will not be accessible so any web site authentication or email services associated with it will stop working. Do take note that if no payment is made within next 3 days, all data will be purged and deleted. \n\nSECURE ONLINE PAYMENT: \nhttps://webregistersolutions.com/notesnaka.com/a/1624932038/v3 \n\nPlease ensure that you submit payment in full AS SOON AS POSSIBLE to avoid any suspension or possible TERMINATION of service to notesnaka.com. \n\nDisclaimer: We can not be held legally liable for any claims, damage or loss that you may incur because of the cancellation of notesnaka.com. Any such damages may include but are not exclusively limited to: monetary losses, deleted data without backups, loss of position in search rankings, missed appointments, undelivered email and any other service, business or technical damages that you may suffer. For more information please refer section 41.a.2.f of our Terms of Service. \n\nThis is the final renewal notice which we are legally required to communicate about the expiration of notesnaka.com certificate. \n\nWe support the environment and ask that you please consider the planet before printing this notice on paper. Our organization is proud to be part of the Zero-Carbon Waste Congress environmental group. \n\nAll web services will be restored automatically on notesnaka.com and associated systems upon full receipt of payment. We thank you for your urgent attention to this matter and continued business. \n\nSECURE ONLINE PAYMENT: \nhttps://webregistersolutions.com/notesnaka.com/a/1624932038/v3'),
(376, 'Blog', 'harshutkarshmishra1998@gmail.com', 'N/A'),
(377, 'Clinton English', 'clinton.english@gmail.com', 'The world was focusing on Doge Coin after Elon Musk tweeted that he owns Doge coin.\r\n\r\nDo you know there is another cryptocurrency - Shi Inbu Coin is that down 85% from its top earlier?\r\n\r\nCrypto currencies are volatile and big fortune (and losses) can be made within weeks or months.\r\n\r\nWith Shi Inu at such low prices, you can consider buying some at Binance (https://bit.ly/33yXOqz)\r\n\r\nGo to this url and simply sign up with your email and password and enjoy 10% off your trading fees for life!  ->https://bit.ly/33yXOqz\r\n\r\n\r\nIf you want to take advantage of the crazy discounts now, you can buy cryptocurrecncies at Binance here (biggest crypto exchange in the world).\r\n\r\nhttps://bit.ly/33yXOqz  -> Use this link to sign up at Binance for free and get 10% off ALL your trades in Binance forever!'),
(378, 'Mike Winter\r\n', 'no-replyNuRry@gmail.com', 'Hello \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Winter\r\n \r\nSpeed SEO Digital Agency'),
(379, 'Mike Forman\r\n', 'caterinacarrer32@gmail.com\r\n', 'Howdy \r\n \r\nI have just analyzed  notesnaka.com for the ranking keywords and saw that your website could use a boost. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Forman\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(380, 'Hye Overton', 'hye.overton@gmail.com', 'Elon Musk is a visionary and he is well knowned to have the midas touch. Anything he tweets or gets involved in, goes up in prices.\r\n\r\nElon Musk caused Bitcoin\'s price to soar when he tweeted about it.\r\n\r\nProof: https://www.forbes.com/sites/jonathanponciano/2021/06/13/musk-denies-bitcoin-pump-and-dump-and-says-tesla-will-resume-transactions-once-this-mining-goal-is-reached/?sh=17fdcafeaa2a\r\n\r\nElon Musk caused Doge Coin to soar when he tweeted about it.\r\nhttps://www.news.com.au/finance/money/investing/dogecoin-price-elon-musk-pumps-crypto-with-ceo-tweet/news-story/adb38ab506f84b632992bd8314068003\r\n\r\nThe most important question everyone has is: \"what is next?\"\r\n\r\nThe short answer is a newly listed NASDAQ crypto mining company from Canada.\r\n\r\nRumours have it that Elon Musk or Tesla might have or is going to acquire a stake in this newly listed NASDAQ.\r\n\r\nMany are waiting for his \"infamous\" tweets to send stock price soaring.\r\n\r\nWith all the talk about going green, this newly listed Bitcoin and Ethereum mining company is a green company that mines bitcoin and ethereum using green energy.\r\n\r\nIt is currently trading at less than USD$3.50 in NASDAQ, way lower than it\'s all time high in 2018. And Bitcoin and Ethereum have broken their all time high, making this stock highly undervalued.\r\n\r\nThis company is Canadian company Hive Blockchain. You can check out their stock here:\r\nhttps://www.nasdaq.com/market-activity/stocks/hvbtf\r\n\r\nRumours have it that Elon Musk or Tesla has taken a stake in this company which just listed on NASDAQ on 1st July 2021.\r\n\r\nhttps://www.foxbusiness.com/markets/bitcoin-miners-form-council-meeting-elon-musk\r\nhttps://ca.finance.yahoo.com/news/3-reasons-hive-blockchain-technologies-230044627.html\r\n\r\nIf you are a long term investor, you can consider buying this stock for the long term.\r\n\r\nIf you are a short term speculator, you can consider the strategy of buy the rumour and sell the news on HIVE Blockchain stock.\r\n\r\nFor more on this stock, you can visit the official website here: https://www.hiveblockchain.com/\r\n\r\nAnd do check out what the investor community is saying about HIVE BLOCKCHAIN here in Yahoo: https://finance.yahoo.com/quote/HIVE.V/community?p=HIVE.V\r\n\r\nDon\'t miss out on this golden opporunity!'),
(381, 'MARIA LOPEZ', 'no-replybept@gmail.com', 'THE WEB PROMOTION PROGRAM \r\nAttn: Beneficiary \r\nWe are pleased to inform you of the release of the results of our ES.INTERNATIONAL WEBSITE PROMOTION PROGRAM. The result was released on the 05th of July 2021. Your e-Website was attached to ticket number 902089237-067 drew lucky numbers 9-24-06-18-05-26. Which consequently won our website lottery program in the 2nd category. Your website has therefore won the sum of €1, 710, 460.00. CONGRATULATION!!!!!!!!!!! \r\nAll participants were selected through a computer ballot system drawn from 25,000 website addresses All over the world as part of our international website promotion program. \r\nTo start your lottery claim and also for more enlightenment regarding to this, kindly contact your agent; Barrister Antonio Perez Domingo, FOREIGN OPERATION MANAGER OF Fenix Director Seguros S.A. by telephone N?: +34 632 822 394, Email: domingo@dpagbogado.com \r\nPlease fills the payment processing form below and return it to your claims agent to this email: domingo@dpagbogado.com  Congratulations once again. \r\nBeneficiary Full name: --------- Website: ----- \r\nEmail Address: -------- Tel: ---------- \r\nNationality: ------- Mode of Payment: ---- \r\nSincerely yours, \r\nMRS MARIA LOPEZ DANIEL. \r\n(ES.WEBSITE LOTTERY COORDINATOR)'),
(382, 'Jacques Olsson', 'erythroxylum.coca.seeds@gmail.com', 'We sell Research Chemicals, Cocaine, Coca Seeds, Coca Leaves, Coca Powder, Marijuana, Weed, Cannabis, Opioids, Ecstasy Pills, Pain Relief, HGH/HCG, Nembutal Pentobarbital, Blotters, Hashish, Heroin, we can be a solution to both Hard and Soft drugs, legal and illegal drugs. Guns for self protection and family protection as well with best prices. \r\n \r\nMinimum order 100€ \r\n \r\nFree shipping for order over 300€ \r\n \r\nDiscreet packaging. \r\n \r\nOvernight shipping with DHL, TNT, UPs or others tracking number \r\n \r\nWe ship worldwide. \r\n \r\nDelivery in EU 1-3 days and other countries out of EU 2-4 days. \r\n \r\nWe ship and e-mail you tracking number and shipping company name \r\n \r\nOur packaging being totally discrete and most secure, vacuum sealed and air tight, no custom problem as per shipment, totally safe purchase and MONEY BACK GUARANTEE if you are not satisfied with our quality or failure to get there. \r\n \r\n100% Customer Satisfaction Guaranteed. \r\n \r\nYour personal details are 1000% SECURE. \r\n \r\nYour orders are 1000% Secure and Anonymous. \r\n \r\nPayment: Western Union, MoneyGram, Bank Transfer, Bitcoin, Paypal Etc \r\n \r\nEmail: sales@bundesdrugsonline.com \r\nWhatsapp: +4915218246599 \r\nTele: +4915217748777 \r\nWebsite: https://bundesdrugsonline.com'),
(383, 'Wolfgang Locke', 'wolfgang.locke25@hotmail.com', 'Elon Musk is a visionary and he is well knowned to have the midas touch. Anything he tweets or gets involved in, goes up in prices.\r\n\r\nElon Musk caused Bitcoin\'s price to soar when he tweeted about it.\r\n\r\nProof: https://www.forbes.com/sites/jonathanponciano/2021/06/13/musk-denies-bitcoin-pump-and-dump-and-says-tesla-will-resume-transactions-once-this-mining-goal-is-reached/?sh=17fdcafeaa2a\r\n\r\nElon Musk caused Doge Coin to soar when he tweeted about it.\r\nhttps://www.news.com.au/finance/money/investing/dogecoin-price-elon-musk-pumps-crypto-with-ceo-tweet/news-story/adb38ab506f84b632992bd8314068003\r\n\r\nThe most important question everyone has is: \"what is next?\"\r\n\r\nThe short answer is a newly listed NASDAQ crypto mining company from Canada.\r\n\r\nRumours have it that Elon Musk or Tesla might have or is going to acquire a stake in this newly listed NASDAQ.\r\n\r\nMany are waiting for his \"infamous\" tweets to send stock price soaring.\r\n\r\nWith all the talk about going green, this newly listed Bitcoin and Ethereum mining company is a green company that mines bitcoin and ethereum using green energy.\r\n\r\nIt is currently trading at less than USD$3.50 in NASDAQ, way lower than it\'s all time high in 2018. And Bitcoin and Ethereum have broken their all time high, making this stock highly undervalued.\r\n\r\nThis company is Canadian company Hive Blockchain. You can check out their stock here:\r\nhttps://www.nasdaq.com/market-activity/stocks/hvbtf\r\n\r\nRumours have it that Elon Musk or Tesla has taken a stake in this company which just listed on NASDAQ on 1st July 2021.\r\n\r\nhttps://www.foxbusiness.com/markets/bitcoin-miners-form-council-meeting-elon-musk\r\nhttps://ca.finance.yahoo.com/news/3-reasons-hive-blockchain-technologies-230044627.html\r\n\r\nIf you are a long term investor, you can consider buying this stock for the long term.\r\n\r\nIf you are a short term speculator, you can consider the strategy of buy the rumour and sell the news on HIVE Blockchain stock.\r\n\r\nFor more on this stock, you can visit the official website here: https://www.hiveblockchain.com/\r\n\r\nAnd do check out what the investor community is saying about HIVE BLOCKCHAIN here in Yahoo: https://finance.yahoo.com/quote/HIVE.V/community?p=HIVE.V\r\n\r\nDon\'t miss out on this golden opporunity!'),
(384, 'Jamaal Baskett', 'baskett.jamaal@gmail.com', 'By now most people have heard of Bitcoin.\r\n\r\nUnlike traditional stock markets, Bitcoin has its own cycles of ups and downs. There is a model called \"Stock to Flow\" price predication model by PlanB (an anonymous Dutch hedge fund manager).\r\n\r\nForbes calls this model one of the most accurate price predication model of Bitcoin. https://www.forbes.com/sites/stevenehrlich/2021/04/29/demystifying-bitcoins-remarkably-accurate-price-prediction-model-stock-to-flow/?sh=60d4c376476a\r\n\r\nAccording to this model, Bitcoin can hit a price USD$150,000 to USD$300,000 by Dec 2021 or Jan 2022. You can follow this legend\'s twitter account here: https://twitter.com/100trillionUSD\r\n\r\nCurrently Bitcoin trades around USD$30,000, if PlanB is correct, we can expect a 5 to 10 times gain in Bitcoin in the next 6 to 9 months!\r\n\r\nDon\'t have enough money to buy a whole Bitcoin? No worries, anyone can buy a fraction of Bitcoin. For example, if you have $350, you can buy 1/00 (1%) of a Bitcoin!\r\n\r\nTo get started, you can buy your first Bitcoin (or a small fraction of it) below:\r\n\r\nGo to this url and simply sign up with your email and password and enjoy 10% off your trading fees for life!  ->https://bit.ly/33yXOqz\r\n\r\n\r\n\r\nIf you want to take advantage of the crazy discounts now, you can buy cryptocurrecncies at Binance here -> https://bit.ly/33yXOqz (biggest crypto exchange in the world).\r\n\r\nhttps://bit.ly/33yXOqz  -> Use this link to sign up at Binance for free and get 10% off ALL your trades in Binance forever!'),
(385, 'SEO X Press Digital Agency', 'tamboren32@gmail.com\r\n', 'Hi \r\n \r\n \r\nI have just took an in depth look on your  notesnaka.com for its SEO Trend and saw that your website could use a boost. \r\n \r\n \r\nWe will increase your Ranks organically and safely, using only whitehat methods, \r\n \r\n \r\nIf interested, please email us \r\n \r\nsupport@digital-x-press.com \r\n \r\n \r\nregards \r\nMike Derrick\r\n \r\nSEO X Press Digital Agency \r\nhttps://www.digital-x-press.com'),
(386, 'Joni Boyles', 'boyles.joni@yahoo.com', 'By now most people have heard of Bitcoin.\r\n\r\nUnlike traditional stock markets, Bitcoin has its own cycles of ups and downs. There is a model called \"Stock to Flow\" price predication model by PlanB (an anonymous Dutch hedge fund manager).\r\n\r\nForbes calls this model one of the most accurate price predication model of Bitcoin. https://www.forbes.com/sites/stevenehrlich/2021/04/29/demystifying-bitcoins-remarkably-accurate-price-prediction-model-stock-to-flow/?sh=60d4c376476a\r\n\r\nAccording to this model, Bitcoin can hit a price USD$150,000 to USD$300,000 by Dec 2021 or Jan 2022. You can follow this legend\'s twitter account here: https://twitter.com/100trillionUSD\r\n\r\nCurrently Bitcoin trades around USD$30,000, if PlanB is correct, we can expect a 5 to 10 times gain in Bitcoin in the next 6 to 9 months!\r\n\r\nDon\'t have enough money to buy a whole Bitcoin? No worries, anyone can buy a fraction of Bitcoin. For example, if you have $350, you can buy 1/00 (1%) of a Bitcoin!\r\n\r\nTo get started, you can buy your first Bitcoin (or a small fraction of it) below:\r\n\r\nGo to this url and simply sign up with your email and password and enjoy 10% off your trading fees for life!  ->https://bit.ly/33yXOqz\r\n\r\n\r\n\r\nIf you want to take advantage of the crazy discounts now, you can buy cryptocurrecncies at Binance here -> https://bit.ly/33yXOqz (biggest crypto exchange in the world).\r\n\r\nhttps://bit.ly/33yXOqz  -> Use this link to sign up at Binance for free and get 10% off ALL your trades in Binance forever!'),
(387, 'VanessaJup', 'vanessaaxonojn@nettirautakauppa.com', 'A month ago, when a 37-year-old disciplined of a Singapore boarding imitated strong practise preferably of people with cerebral disorders was diagnosed with a coronavirus, the management of the begin did not summon up a panic. Bewitching into account the specifics of the nursing peaceful, all its chastening and most of the dainty healthfulness inhabitants were vaccinated against Covid-19 as being at jeopardy funding in February-March. Regardless, accepted in extend over, the boarding diction of term was closed in compensation quarantine, and all employees, patients and other people who recently communicated with the crack-brained handmaiden or her shine up to were quarantined and began to be regularly tested. Enormous the next week, the virus was detected in three dozen people, including the 30-year-old infant from the libretto persist from the Philippines, as okay as four other employees of the boarding halfway point hold and 26 of its changeless residents. Most of those infected were fully vaccinated against Covid-19... You can announce to another article on this in at this flow  <a href=https://aterm.waribiki.fun>https://pelikan.ein-rabatt.online</a>  The abundance of interesting articles on your site amazes me! To the author-good luck and new interesting posts!. \r\n'),
(388, 'Judi Ainslie', 'ainslie.judi@gmail.com', 'Twitter is adopting Bitcoin -> https://techcrunch.com/2021/07/23/daily-crunch-bitcoin-is-a-big-part-of-our-future-says-twitter-ceo-jack-dorsey/\r\n\r\nAmazon is also jumping on the Bitcoin bandwagon - >https://www.cnbc.com/2021/07/23/amazon-is-hiring-a-digital-currency-and-blockchain-expert.html\r\n\r\nDo not miss this opportunity of the lifetime.\r\n\r\nMany people buy bitcoin and other cryptocurrencies when prices are going up, this is the worst thing that you can do. In order to make money, you have to buy low (when others are not going euphoric) and sell high.\r\n\r\nThe chance to buy bitcoin is NOW.\r\n\r\n\r\nDon\'t have enough money to buy a whole Bitcoin? No worries, anyone can buy a fraction of Bitcoin. For example, if you have $350, you can buy 1/00 (1%) of a Bitcoin!\r\n\r\nTo get started, you can buy your first Bitcoin (or a small fraction of it) below:\r\n\r\nGo to this url and simply sign up with your email and password and enjoy 10% off your trading fees for life!  ->https://bit.ly/33yXOqz\r\n\r\n\r\n\r\nIf you want to take advantage of the crazy discounts now, you can buy cryptocurrecncies at Binance here -> https://bit.ly/33yXOqz (biggest crypto exchange in the world).\r\n\r\nhttps://bit.ly/33yXOqz  -> Use this link to sign up at Binance for free and get 10% off ALL your trades in Binance forever!'),
(389, 'Mike Porter\r\n', 'aliciastripling3262@gmail.com\r\n', 'Howdy \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Porter\r\n \r\nSpeed SEO Digital Agency'),
(390, 'Emile Langton', 'emile.langton50@msn.com', 'Some new comers in crypto-sphere in the last 2 years have made life-changing gains within a short period of time.\r\n\r\nAnd many are reporting this to be a \"wife-changing experience\" as well.\r\n\r\nWhile you may laugh at this, people really CAN change when crazy gains are made.\r\n\r\nAre you sick of your marriage and feel stuck?\r\n\r\nIt is time to do something about it. Times are very difficult admist the pandemic and sometime we need to try something different. Cryptocurrency is the biggest techological revolution since the internet. Do not miss out on this!\r\n\r\n\r\nPS: Even if you do NOT want to buy cryptocurrency, do you know that the world\'s biggest exchange Binance has a referral program? You can sign up at Binance here (https://bit.ly/33yXOqz) even if you are NOT going to trade. After \r\nsigning up with Binance, you can share your referal links with your friends and make some passive income on the side. You get paid a small fee whenever your referrals buy or sell cryptocurrencies in Binance!\r\n\r\nCovid19 has caused me to lose my job and I am doing what I can to make some money to put food on the table. If you have some spare change, please research cryptocurrencies and this is really a once in a lifetime opportunity to trade.\r\n\r\nIf you do not have any spare cash, you can still sign up for a free account and make money by promoting Binance to your friends! This is a great way to earn a little side income during this challenging times.\r\n\r\nAct Now!\r\n\r\nDon\'t have enough money to buy a whole Bitcoin? No worries, anyone can buy a fraction of Bitcoin. For example, if you have $350, you can buy 1/00 (1%) of a Bitcoin!\r\n\r\nTo get started, you can buy your first Bitcoin (or a small fraction of it) below:\r\n\r\nGo to this url and simply sign up with your email and password and enjoy 10% off your trading fees for life!  ->https://bit.ly/33yXOqz\r\n\r\n\r\n\r\nIf you want to take advantage of the crazy discounts now, you can buy cryptocurrecncies at Binance here -> https://bit.ly/33yXOqz (biggest crypto exchange in the world).\r\n\r\nhttps://bit.ly/33yXOqz  -> Use this link to sign up at Binance for free and get 10% off ALL your trades in Binance forever!'),
(391, 'Mike Fraser\r\n', 'ronaldboyd3262@gmail.com\r\n', 'Good Day \r\n \r\nI have just analyzed  notesnaka.com for its SEO Trend and saw that your website could use a boost. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Fraser\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de');
INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(392, 'Chastity Bailey', 'bailey.chastity@yahoo.com', 'Some new comers in crypto-sphere in the last 2 years have made life-changing gains within a short period of time.\r\n\r\nAnd many are reporting this to be a \"wife-changing experience\" as well.\r\n\r\nWhile you may laugh at this, people really CAN change when crazy gains are made.\r\n\r\nAre you sick of your marriage and feel stuck?\r\n\r\nIt is time to do something about it. Times are very difficult admist the pandemic and sometime we need to try something different. Cryptocurrency is the biggest techological revolution since the internet. Do not miss out on this!\r\n\r\n\r\nPS: Even if you do NOT want to buy cryptocurrency, do you know that the world\'s biggest exchange Binance has a referral program? You can sign up at Binance here (https://bit.ly/33yXOqz) even if you are NOT going to trade. After \r\nsigning up with Binance, you can share your referal links with your friends and make some passive income on the side. You get paid a small fee whenever your referrals buy or sell cryptocurrencies in Binance!\r\n\r\nCovid19 has caused me to lose my job and I am doing what I can to make some money to put food on the table. If you have some spare change, please research cryptocurrencies and this is really a once in a lifetime opportunity to trade.\r\n\r\nIf you do not have any spare cash, you can still sign up for a free account and make money by promoting Binance to your friends! This is a great way to earn a little side income during this challenging times.\r\n\r\nAct Now!\r\n\r\nDon\'t have enough money to buy a whole Bitcoin? No worries, anyone can buy a fraction of Bitcoin. For example, if you have $350, you can buy 1/00 (1%) of a Bitcoin!\r\n\r\nTo get started, you can buy your first Bitcoin (or a small fraction of it) below:\r\n\r\nGo to this url and simply sign up with your email and password and enjoy 10% off your trading fees for life!  ->https://bit.ly/33yXOqz\r\n\r\n\r\n\r\nIf you want to take advantage of the crazy discounts now, you can buy cryptocurrecncies at Binance here -> https://bit.ly/33yXOqz (biggest crypto exchange in the world).\r\n\r\nhttps://bit.ly/33yXOqz  -> Use this link to sign up at Binance for free and get 10% off ALL your trades in Binance forever!'),
(393, 'Clinton', 'clintonconnell@web.de', 'Бизнесмен и меценат Максим Евгеньевич Каганский родился в Москве \r\n19 ноября 1980 года в многодетной семье сотрудника МВД.\r\nВ 1998 году поступил в Московский \r\nЮридический Институт МВД России (сейчас – \r\nАкадемия МВД России), специальность – юрист-правовед.\r\n\r\nкаганский максим евгеньевич сейчас\r\nкаганский максим евгеньевич сейчас'),
(394, 'Tommy Abels', 'officeline8400@gmail.com', 'Hello, I am a Senior Financial Strategist. I have a client who has an interest in Investing in your country into a Joint Venture / Partnership. He has funds available meant for investment. \r\n \r\nPlease contact me if you are interested. \r\n \r\nRegards, \r\nTommy Abels \r\nSenior Financial Strategist \r\n \r\nReply to Email: officeline9600@gmail.com'),
(395, 'Angeline Omalley', 'angeline.omalley@outlook.com', 'Hi,\r\n\r\nFirstly let me apologise to you as I know this is not the best way to reach you (contact form marketing). I am at my wits end to generate more income to provide for my wife and children and this is a legal (and I hope to make up to you by providing free educational value)\r\n\r\nLike many others, the pandemic has hit me hard and I lost my job. Now I am doing what I can in between jobs and experimenting with different ways to make money from the internet.\r\n\r\nI chanced upon Binance.com (https://bit.ly/3jLZLrm) and started promoting my Binance.com affiliate links to my friends and online. When you introduce your friends to Binance, you get a LIFETIME commission everytime they trade in Binance!\r\n\r\nYou do need a large number of affiliates to make things work. I was lucky to sign up 3  friends who put in USD$10,000 each and depending from their trade volume, I made an extra USD$1000 to $5000 per month PASSIVELY.\r\n\r\nAs such, you do not need to put any money of your own into Binance, you can also make money by referring Binance to your friends and associates! -> https://bit.ly/3jLZLrm (my Binance affiliate link)\r\n\r\n\r\nGo to this url and simply sign up with your email and password. This takes only 30 seconds!  -> https://bit.ly/3jLZLrm\r\n\r\n\r\n\r\n\r\n\r\n'),
(396, 'David Song', 'noreply@googlemail.com', 'Dear Sir/Madam, \r\nThis is a consultancy and brokerage Firm specializing in Growth Financial Loan. We wish to invest in any viable Project presented by your Management after reviews on your Business Project Presentation Plan. We look forward to your Swift response. \r\nEmail:davidsong2030@gmail.com. \r\n \r\nRegards, \r\nMr.David Song'),
(397, 'Eduardo', 'Eduardo', 'Hello there\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nAll the best,\r\n\r\nEduardo\r\nNotes Naka | Welcome'),
(398, 'Anthonysax', 'no.reply.feedbackform@gmail.com', 'Hеllо!  notesnaka.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd соmmеrсiаl оffеr uttеrly lеgitimаtе wаy? \r\nWе suggеsting а nеw wаy оf sеnding lеttеr thrоugh соntасt fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh lеttеrs аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh соmmuniсаtiоn Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 49 USD. \r\n \r\nThis оffеr is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  live:.cid.eef97f1d29d827b5 \r\nWhatsApp - +375259112693'),
(399, 'Cecil', 'Cecil', 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: fashiondaily.online\r\n\r\nThank You, \r\n\r\nCecil\r\nNotes Naka | Welcome'),
(400, 'Christen Emerson', 'christen.emerson@msn.com', 'Hi,\r\n\r\nFirstly let me apologise to you as I know this is not the best way to reach you (contact form marketing). I am at my wits end to generate more income to provide for my wife and children and this is a legal (and I hope to make up to you by providing free educational value)\r\n\r\nLike many others, the pandemic has hit me hard and I lost my job. Now I am doing what I can in between jobs and experimenting with different ways to make money from the internet.\r\n\r\nI chanced upon Binance.com (https://bit.ly/3jLZLrm) and started promoting my Binance.com affiliate links to my friends and online. When you introduce your friends to Binance, you get a LIFETIME commission everytime they trade in Binance!\r\n\r\nYou do need a large number of affiliates to make things work. I was lucky to sign up 3  friends who put in USD$10,000 each and depending from their trade volume, I made an extra USD$1000 to $5000 per month PASSIVELY.\r\n\r\nAs such, you do not need to put any money of your own into Binance, you can also make money by referring Binance to your friends and associates! -> https://bit.ly/3jLZLrm (my Binance affiliate link)\r\n\r\n\r\nGo to this url and simply sign up with your email and password. This takes only 30 seconds!  -> https://bit.ly/3jLZLrm\r\n\r\n\r\n\r\n\r\n\r\n'),
(401, 'SEO X Press Digital Agency', 'no-replyVOG@gmail.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Gerald\r\n \r\nsupport@digital-x-press.com'),
(402, 'Maxwell', 'maxwellculbert@peacemail.com', 'Howdy! This article could not be written much better!\r\nGoing through this post reminds me of my previous roommate!\r\nHe constantly kept talking about this. I\'ll forward this articcle to him.\r\nPretty sure he\'ll have a ery good read. Thanks for sharing!\r\n\r\nhttps://maps.google.cf/\r\nGena - Gena,'),
(403, 'Mike Porter\r\n', 'adrianagoodall3262@gmail.com\r\n', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your notesnaka.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your notesnaka.com to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Porter\r\n \r\nsupport@monkeydigital.co'),
(404, 'Gretchen Madirazza', 'madirazza.gretchen@hotmail.com', 'Hi,\r\n\r\nFirstly let me apologise to you as I know this is not the best way to reach you (contact form marketing). I am at my wits end to generate more income to provide for my wife and children and this is a legal (and I hope to make up to you by providing free educational value)\r\n\r\nLike many others, the pandemic has hit me hard and I lost my job. Now I am doing what I can in between jobs and experimenting with different ways to make money from the internet.\r\n\r\nI chanced upon Binance.com (https://bit.ly/3jLZLrm) and started promoting my Binance.com affiliate links to my friends and online. When you introduce your friends to Binance, you get a LIFETIME commission everytime they trade in Binance!\r\n\r\nYou do need a large number of affiliates to make things work. I was lucky to sign up 3  friends who put in USD$10,000 each and depending from their trade volume, I made an extra USD$1000 to $5000 per month PASSIVELY.\r\n\r\nAs such, you do not need to put any money of your own into Binance, you can also make money by referring Binance to your friends and associates! -> https://bit.ly/3jLZLrm (my Binance affiliate link)\r\n\r\n\r\nGo to this url and simply sign up with your email and password. This takes only 30 seconds!  -> https://bit.ly/3jLZLrm\r\n\r\n\r\n\r\n\r\n\r\n'),
(405, 'Mike Durham\r\n', 'earnestbell7162@gmail.com\r\n', 'Hello \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Durham\r\n \r\nSpeed SEO Digital Agency'),
(406, 'Myrtis Mactier', 'myrtis.mactier@gmail.com', 'If you consume CNN and BBC\'s coverage of China, I am sure you are under the impression that China is a really screwed up country.\r\n\r\nThe West has a very biased view of China. China\'s rise is bad for us? Is our system superior?\r\n\r\nWhat is good for the West\'s government is definitely good for Wall Streets and the bankers, but not necessarily good for the people.\r\n\r\nChina has a lot to offer to the average guy in the West.\r\n\r\nDo you have a business? Consider selling to China\r\n\r\nDo you want an incredible life experience like no others? Perhaps you can relocate to China!\r\n\r\nWhat is China really like?\r\n\r\nWe share some you tube videos of Westerners living in China. Check the videos out and perhap it will change your view of China.\r\n\r\nOr Perhaps you can visit China and seek out new opportunities there!\r\n\r\n\r\nThe Most SHOCKING Street Reactions of Foreigners living in CHINA!\r\nhttps://www.youtube.com/watch?v=0jt3M3QNrH4\r\n\r\n\r\nJason (from UK) China vs USA - Who Would Win? 2021 Military / Country Comparison\r\nhttps://www.youtube.com/watch?v=NO5OH7KFEqw\r\n\r\n\r\nHow China Became So Powerful\r\n\r\nhttps://www.youtube.com/watch?v=qw-FLc7Z01Q\r\n\r\nJohnny Harris - It\'s a story of a certain type of capitalism\r\n\r\nChina Shaolin Martial Arts\r\nhttps://www.youtube.com/watch?v=FQg5b6bagGs\r\n\r\nCheck out Philip Hartshorn\'s experience in Shao Lin learning Kungfu!\r\n\r\n\r\nWho REALLY Runs The World and How to Protect Yourself - Gerald Celente\r\nhttps://www.youtube.com/watch?v=hEusdJ7fi4Q\r\n\r\nAm I a Commie? - Question for YouTube Content Creators in China\r\nhttps://www.youtube.com/watch?v=rKx2B0C8n5c'),
(407, 'LxBodenda', 'catattack@wir.pl', 'noclegi augustow partyzantow <a href=\"https://www.noclegipracowniczneaugustow.site\">https://www.noclegipracowniczneaugustow.site</a> \r\nembargoed commandeered ethnographer  <a href=\"https://www.noclegipracowniczneaugustow.site\">noclegi pracownicze augustowie</a> \r\nportraiture misconstrued annexes  <a href=\"https://www.noclegipracowniczneaugustow.site/pokoje-augustw-nadrzeczna.htm\">nocleg augustow</a> \r\nstx21'),
(408, 'Mike Goodman\r\n', 'janlecompte7162@gmail.com\r\n', 'Hi \r\n \r\nI have just checked  notesnaka.com for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\nregards \r\nMike Goodman\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(409, 'Jay Spyer', 'jay.spyer87@yahoo.com', 'Hi,\r\n\r\nFirstly let me apologise to you as I know this is not the best way to reach you (contact form marketing). I am at my wits end to generate more income to provide for my wife and children and this is a legal (and I hope to make up to you by providing free educational value)\r\n\r\nLike many others, the pandemic has hit me hard and I lost my job. Now I am doing what I can in between jobs and experimenting with different ways to make money from the internet.\r\n\r\nI chanced upon Binance.com (https://bit.ly/3jLZLrm) and started promoting my Binance.com affiliate links to my friends and online. When you introduce your friends to Binance, you get a LIFETIME commission everytime they trade in Binance!\r\n\r\nYou do need a large number of affiliates to make things work. I was lucky to sign up 3  friends who put in USD$10,000 each and depending from their trade volume, I made an extra USD$1000 to $5000 per month PASSIVELY.\r\n\r\nAs such, you do not need to put any money of your own into Binance, you can also make money by referring Binance to your friends and associates! -> https://bit.ly/3jLZLrm (my Binance affiliate link)\r\n\r\n\r\nGo to this url and simply sign up with your email and password. This takes only 30 seconds!  -> https://bit.ly/3jLZLrm\r\n\r\n\r\n\r\n\r\n\r\n'),
(410, 'Randi', 'Randi', 'Hey\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please check our site: pharmacyoutlets.online\r\n\r\nEnjoy,\r\n\r\nRandi'),
(411, 'Renato', 'Renato', 'Hey \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.com\r\n \r\nCheers, \r\n \r\nRenato\r\nNotes Naka | Welcome'),
(412, 'Mike Kendal\r\n', 'no-replyer@gmail.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Kendal\r\n \r\nsupport@digital-x-press.com'),
(413, 'Mike Oldridge\r\n', 'no-replyer@gmail.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your notesnaka.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your notesnaka.com to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Oldridge\r\n \r\nsupport@monkeydigital.co'),
(414, 'JamesVam', 'no-replyVOG@gmail.com', 'Hi!  notesnaka.com \r\n \r\nDo you know the easiest way to mention your products or services? Sending messages exploitation feedback forms will permit you to simply enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that will be sent through it\'ll end up in the mailbox that is meant for such messages. Causing messages using Feedback forms isn\'t blocked by mail systems, which suggests it is certain to reach the client. You will be able to send your supply to potential customers who were previously untouchable thanks to email filters. \r\nWe offer you to test our service for complimentary. We are going to send up to fifty thousand message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis offer is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.'),
(415, 'Mike Jackson\r\n', 'no-replyer@gmail.com', 'Hi \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Jackson\r\n \r\nSpeed SEO Digital Agency'),
(416, '', '', ''),
(417, 'Mike Mackenzie\r\n', 'no-replyer@gmail.com', 'Hi there \r\n \r\nI have just analyzed  notesnaka.com for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\nregards \r\nMike Mackenzie\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(418, 'Zenaida', 'Zenaida', 'Good Morning\r\n\r\nBe Buzz Free! The Original Mosquito Trap.\r\n\r\n60% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping\r\n✔️LED Bionic Wave Technology\r\n✔️Eco-Friendly\r\n✔️15 Day Money-Back Guarantee\r\n\r\nShop Now: mosquitotrap.online\r\n\r\nMany Thanks,\r\n\r\nZenaida\r\nNotes Naka | Welcome'),
(419, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'Hi, my name is Eric and I’m betting you’d like your website notesnaka.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at notesnaka.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=notesnaka.com\r\n'),
(420, 'Olivia', 'Olivia', 'World\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\n\r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: hineck.online\r\n\r\nRegards,\r\n\r\nOlivia\r\nNotes Naka | Welcome'),
(421, 'Mike Nicholson\r\n', 'no-replyer@gmail.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Nicholson\r\n \r\nsupport@digital-x-press.com'),
(422, 'Twesige Selegio', 'stwesige@gmail.com', 'Grüße vom Wilma Fox Child Development Center in Uganda! \r\nWir wenden uns heute an Sie, um Sie um Ihre Unterstützung bei der Hilfe zu bitten \r\ndie Waisen und bedürftigen Kinder Ugandas. Unsere Organisation hilft dabei \r\nrette diese Kinder von den Straßen und zerbrochenen Häusern. \r\nUganda braucht heute dringend Ihre Unterstützung! Das COVID-19 \r\nPandemie hat die Bedingungen für die \r\nUgandan Waisen und bedürftige Kinder, die mit AIDS in bitterer Armut leben. Diese Waisen und \r\nandere verlassene Kinder haben keine Möglichkeit, ihre Grundbedürfnisse zu befriedigen, nein \r\nBildung und keine Zukunftshoffnung ohne Ihre Hilfe. \r\n.Sponsor heute ein Kind von \r\nMit einem monatlichen Beitrag in beliebiger Höhe können Sie sofort etwas bewirken \r\nindem Sie online unter http://www.wilmafoxcdcuganda.org/  spenden. Ihre Spende wird \r\nHelfen Sie mit, die von Ihnen geförderten Kinder mit dem Nötigsten zu versorgen \r\nsie müssen überleben. Wir stellen Ihnen die Fotos Ihres Kindes und andere Details zur Verfügung. \r\nMit freundlichen Grüßen \r\nTwesige Selegio, \r\nE-Mail: info@wilmafoxcdcuganda.org \r\nTelephone is +2566785521916 \r\nWhatsApp +256705239586'),
(423, 'Marcella', 'marcellalister@zoho.com', 'Hi there friends, good post and pleasant arguments commented at this place, I am \r\nreally enjoying by these.\r\nhttps://canvas.instructure.com/eportfolios/572671/Home/Buy_Viagra_In_Houston_Tx\r\norder 50mg viagra'),
(424, 'Mike Brooks\r\n', 'no-replyer@gmail.com', 'Good Day \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Brooks\r\n \r\nSpeed SEO Digital Agency'),
(425, 'Mike Ralphs\r\n', 'no-replyer@gmail.com', 'Hello \r\n \r\nI have just verified your SEO on  notesnaka.com for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\nregards \r\nMike Ralphs\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(426, 'Express Documents', 'davidholman200@gmail.com', 'We are a Team of IT Experts specialized in the production of Real and Novelty Documents such as Passport, Driving License , IELTS Certificate,  NCLEX Certificate, ID Cards, Diplomas, SS Cards, University Certificates, Green Cards, Death Certificate, Working Permits, Visa\'s etc. Contact us on WhatsApp for more information +49 1590 2969018. or Email us at... documentsservicesexperts@gmail.com'),
(427, 'contactludedb', 'levkovich-masljukvelimira1991@rambler.ru', 'I\'m happy to welcome you! \r\n \r\nWe offer a service of sending newsletters via follow-up forms to the sites of firms via all countries and domain zones of the world in any languages.  \r\n \r\nYour message is sent to E-mail address \r\n of organization one hundred percent will get to inside of the inbox folder! \r\n \r\n2000 bases: \r\nPrice List =» xn----7sbb1bbndheurc1a.xn--p1ai/prajs-list/ \r\n \r\nTest mailing: $20 – 20000 contact forms websites \r\n \r\nAll Europe 44 countries there are 60726150 websites – $1100 \r\n \r\nAll EU 28 countries there are 56752547 websites – $1000 \r\n \r\nAll Asia 48 countries there are 14662004 websites – $500 \r\n \r\nAll Africa 50 countries there are 1594390 websites – $200 \r\n \r\nAll North and Central America is 35 countries there are 7441637 websites – $300 \r\n \r\nAll South America 14 countries there are 5826884 websites – $200 \r\n \r\nTop 1 Million World’s Best websites – $100 \r\n \r\nTop 16821856 the most visited websites in the world – $300 \r\n \r\nNew websites from around the world registered 24-48 hours ago. (A cycle of 15 mailings during the month) – 500$ \r\n \r\nBusinesses and organizations of the Russian Federation – there are 4025015 websites – $300 \r\n \r\nAll Russian-speaking countries minus Russia – there are 14 countries and 2637726 websites – $200 \r\n \r\nNew websites of the Russian Federation, registered 24-48 hours ago. (A cycle of 15 mailings during the month) – 250$ \r\n \r\n1499203 of hosting websites around the world (there are selections for all countries, are excluded from databases for mailings) – $150 \r\n \r\n295285 websites of public authorities of all countries of the world (selections for all countries, are excluded from databases for mailings) – $100 \r\n \r\n3516251 websites online stores Worldwide – $250 \r\n \r\nBy language: \r\n \r\nEnglish-speaking websites - 54797239 websites - $1200 \r\nThat speak French language - 18655242 websites - $600 \r\nSpanish-speaking websites - 9013026 websites - $400 \r\nThat speak German language - 22397305 websites - $800 \r\nThat speak Portuguese - 6862084 websites - $300 \r\nThat speak Russian - 6662741 websites - $300 \r\n \r\nCMS mailings: \r\n \r\nAmiro	        1794     websites - $50 \r\nBitrix	        278751   websites - $80 \r\nBigCommerce     78257    websites - $50 \r\nConcrete5	39121    websites - $50 \r\nCONTENIDO	5069     websites - $50 \r\nCubeCart	1062     websites - $50 \r\nCMSimple        11052    websites - $50 \r\nCS Cart         1180     websites - $50 \r\nDatalife Engine	29438    websites - $50 \r\nDiscuz	        47962    websites - $50 \r\nDotnetnuke	82964    websites - $50 \r\nDrupal	        978298   websites - $100 \r\nFlexbe	        15072    websites - $50 \r\nHostCMS	        5042     websites - $50 \r\nInstantCMS	4136     websites - $50 \r\nInSales	        11081    websites - $50 \r\nInvision Power Board 2430websites - $30 \r\nJoomla	        1906994  websites - $150 \r\nLiferay	        5137     websites - $50 \r\nMagento	        369447   websites - $80 \r\nMODx	        64023    websites - $50 \r\nMovable Type	9171     websites - $50 \r\nNetCat	        6636     websites - $50 \r\nNopCommerce	3892     websites - $50 \r\nOpenCart	415575   websites - $80 \r\nosCommerce	68468    websites - $50 \r\nOpenCms         5916     websites - $50 \r\nphpBB	        20045    websites - $50 \r\nPrestashop	328287   websites - $80 \r\nShopify	        2343709  websites - $200 \r\nSimpla	        17429    websites - $50 \r\nSitefinity	4183     websites - $50 \r\nTextpattern	882      websites - $30 \r\nTilda	        47396    websites - $50 \r\nTYPO3	        845009   websites - $80 \r\nUMI.CMS	        13191    websites - $50 \r\nvBulletin	14460    websites - $50 \r\nVolusion        16006    websites - $50 \r\nWix	        3379081  websites - $250 \r\nWordpress       35354537 websites - $650 \r\nWooCommerce     4459525  websites - $300 \r\nXenForo         21105    websites - $50 \r\nZen Cart        26524    websites - $50 \r\n \r\n \r\n \r\n.ae 233019 websites UAE - $50 \r\n.ae 10938 websites International zone UAE:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.ag 11931 websites Antigua and Barbuda - $50 \r\n.ai 33130 websites Anguilla - $50 \r\n.am 46971 websites Armenia - $50 \r\n.am 1684 websites International zone Armenia:.com .net .biz .info .name .tel \r\n.ar 782608 websites Argentina - $80 \r\n.ar 75496 websites International zone Argentina:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.ar.com 135 websites - $30 \r\n.at 1356722 websites Austria - $100 \r\n.at 181907 websites International zone Austria :.com .net .biz .info .name \r\n.au 2432174 websites Australia - $150 \r\n.au 461279 websites International zone Australia:.com .net .biz .info .name \r\n.az 28177 websites Azerbaijan - $50 \r\n.az 2036 websites International zone Azerbaijan:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.ba 15725 websites Bosnia and Herzegovina - $30 \r\n.ba 2291 websites international zone Bosnia and Herzegovina:.com.net.biz.info.org.name.tel.mobi.asia-$30 \r\n.be 1349658 websites Belgium - $100 \r\n.be 1056248 websites International zone Belgium:.com .net .biz .info .name \r\n.bg 54418 websites Bulgaria - $50 \r\n.bg 50685 websites International zone Bulgaria:.com .net .biz .info .name \r\n.bo 2602 websites Bolivia - $30 \r\n.bo 29415 websites International zone Bolivia:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.br 3205100 websites Brazil - $200 \r\n.br 1230078 websites International zone Brazil:.com .net .biz .info .name . \r\n.by 183813 websites Belarus - $50 \r\n.by 1574 websites International zone Belarus:.com .net .biz .info .name .tel \r\n.ca 2587463 websites Canada - $150 \r\n.ca 288395 websites International zone Canada:.com .net .biz .info .name \r\n.cc 436396 websites - $80 \r\n.cc 1920589 websites Cocos Keeling Islands- $100 \r\n.cf 2461460 websites Central African Republic - $150 \r\n.cg 526 websites Congo - $30 \r\n.ch 1629450 websites Switzerland - $100 \r\n.ch 205292 websites International zone Switzerland:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.ci 5794 websites Cote d\'Ivoire - $30 \r\n.ci 112 websites International zone Cote d\'Ivoire:.com .net .biz .info .name \r\n.cl 590401 websites Chile - $80 \r\n.cl 65996 websites International zone Chile:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.cm 29221 websites Cameroon- $50 \r\n.cn 23160610 websites China - $600 \r\n.cn 1372416 websites International zone China:.com .net .biz .info .name .tel .mobi .asia-$100 \r\n.co 1878923 websites Colombia - $100 \r\n.co 10854 websites International zone Colombia:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.cx 15753 websites Christmas Island - $50 \r\n.cy 11092 websites Cyprus - $50 \r\n.cy 744 websites International zone Cyprus:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.cz 1001208 websites Czech Republic - $100 \r\n.cz 193400 websites International zone Czech Republic:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.de 15078512 websites Germany - $350 \r\n.de 3894156 websites International zone Germany:.com .net .biz .info .name .tel .mobi .asia-$150 \r\n.dk 1732020 websites Denmark - $150 \r\n.dk 148164 websites International zone Denmark:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.dm 23318 websites Dominica - $50 \r\n.dn.ua 1835 websites - $30 \r\n.do 5255 websites Dominican Republic- $30 \r\n.dy.fi 1112 websites - $30 \r\n.dz 5382 websites Algeria - $30 \r\n.ec 11731 websites Ecuador - $50 \r\n.ec 2897 websites International zone Ecuador:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.ee 172423 websites Estonia- $50 \r\n.ee 10490 websites International zone Estonia:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.es 1509048 websites Spain - $100 \r\n.es 683845 websites International zone Spain:.com .net .biz .info .name .tel .eu 3046076 websites Europe - $150 \r\n.eu 633384 websites International zone Europe:.com .net .biz .info .name .fi 361111 websites Finland - $80 \r\n.fi 69631 websites International zone Finland:.com .net .biz .info .name .fr 2810983 websites France - $150 \r\n.fr 639546 websites International zone France:.com .net .biz .info .name .ge .ge 38616 websites Georgia - $50 \r\n.ge 1676 websites International zone Georgia:.com .net .biz .info .name .tel .gf 996 websites French Guiana - $30 \r\n.gg 10528 websites Guernsey islands - $50 \r\n.gh 703 websites Ghana - $30 \r\n.gi 981 websites Gibraltar - $30 \r\n.gp 2044 websites Guadeloupe - $30 \r\n.gq 2027422 websites Equatorial Guinea - $100 \r\n.gr 327215 websites Greece - $80 \r\n.gr 57984 websites International zone Greece:.com .net .biz .info .name .tel .mobi .asia-$150 \r\n.gt 15351 websites Guatemala - $50 \r\n.hk 116093 websites Hong Kong - $50 \r\n.hm 335 websites Heard & McDonald islands - $30 \r\n.hn 4732 websites Honduras - $30 \r\n.hr 75736 websites Croatia - $50 \r\n.hr 16592 websites International zone Croatia:.com .net .biz .info .name .tel .mobi .asia \r\n.ht 1299 websites Haiti - $30 \r\n.hu 53940 websites International zone Hungary:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.ie 209620 websites Ireland - $50 \r\n.ie 49861 websites International zone Ireland:.com .net .biz .info .name .il 196266 websites Israel - $80 \r\n.il 38537 websites International zone Israel:.com .net .biz .info .name .tel .in 1157482 websites India - $100 \r\n.in 266179 websites International zone India:.com .net .biz .info .name .tel .io 496216 websites British Indian Ocean - $80 \r\n.iq 2401 websites Iraq - $30 \r\n.ir 574258 websites Iran - $80 \r\n.ir 15487 websites International zone Iran:.com .net .biz .info .name .tel .mobi .asia \r\n.it 2410105 websites Italy – $150 \r\n.it 954040 websites International zone Italy:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.je 3016 websites Ireland - $30 \r\n.jp 1825219 websites Japan - $150 \r\n.jp 4683252 websites International zone Japan:.com.net.biz.info.org.name.tel.mobi.asia-$200 \r\n.jp.net 5170 websites - $30 \r\n.ke 14677 websites Kenya - $50 \r\n.kg 16706 websites Kyrgyzstan - $50 \r\n.kg 664 websites International zone Kyrgyzstan:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.ki 79 websites Kiribati - $30 \r\n.kn 3211 websites Saint Kitts and Nevis - $30 \r\n.kr 272463 websites Korea- $80 \r\n.kw 484 websites Kuwait - $30 \r\n.ky 5783 websites Cayman Islands - $30 \r\n.kz 196249 websites Kazakhstan - $80 \r\n.kz 5876 websites International zone Kazakhstan:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.lc 1121 websites Saint Lucia - $30 \r\n.lk 32654 websites Sri Lanka - $30 \r\n.lt 138973 websites Lithuania- $50 \r\n.lt 27710 websites International zone Lithuania:.com .net .biz .info .name .tel .mobi .asia- $50 \r\n.lu 74322 websites Luxembourg - $50 \r\n.lu 4125 websites International zone Luxembourg:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.lv 202814 websites Latvia - $50 \r\n.lv 8887 websites International zone Latvia:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.ma 59103 websites Morocco - $50 \r\n.mc 3046 websites Monaco - $30 \r\n.md 31945 websites Moldova - $50 \r\n.md 1293 websites International zone Moldova:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.me 761596 websites Montenegro - $80 \r\n.me 86897 websites International zone Montenegro:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.mg 3715 websites Madagascar- $30 \r\n.mk 13266 websites Macedonia - $50 \r\n.ml 2158835 websites Mali - $100 \r\n.mn 17044 websites Mongolia - $50 \r\n.mq 1112 websites Martinique (French) - $30 \r\n.mr 776 websites Mauritania - $30 \r\n.ms 7265 websites Montserrat - $30 \r\n.mt 1402 websites Malta - $30 \r\n.mu 6475 websites Maurifius - $30 \r\n.mv 1996 websites Maldives - $30 \r\n.mw 8579 websites Malawi - $30 \r\n.mx 670901 websites Mexico- $80 \r\n.mx 174571 websites International zone Mexico:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.my 197328 websites Malaysia- $50 \r\n.my 14294 websites International zone Malaysia:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.na 1094 websites - $30 \r\n.nc 3497 websites New Coledonia (French) - $30 \r\n.nl 3925784 websites Netherlands - $200 \r\n.nl 1019697 websites International zone Netherlands:.com .net .biz .info .name .tel .mobi .asia-$100 \r\n.no 620882 websites Norway - $80 \r\n.no 74318 websites International zone Norway:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.nu 255161 websites Niue- $50 \r\n.nz 593127 websites New Zealand - $80 \r\n.om 1701 websites Oman - $30 \r\n.pe 83224 websites Peru - $50 \r\n.pe 59157 websites International zone Peru:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.pk 44464 websites Pakistan - $50 \r\n.pl 1795299 websites Poland - $100 \r\n.pl 327587 websites International zone Poland:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.pr 1358 websites Puerto Rico - $30 \r\n.pt 263136 websites Portugal - $80 \r\n.pt 17691 websites International zone Portugal:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.py 5593 websites Paraguay - $30 \r\n.py 653 websites International zone Paraguay:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.re 15089 websites Reunion (French) - $50 \r\n.ro 665267 websites Romania - $80 \r\n.ro 89068 websites International zone Romania:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.rs 85503 websites Serbia - $50 \r\n.ru 5025331 websites Russian - $250 \r\n.ru 514668 websites International zone Russian:.com .net .biz .info .name .tel .mobi .asia-$80 \r\n.rw 3806 websites Rwanda - $30 \r\n.sa 45210 websites Saudi Arabia- $50 \r\n.sa 8164 websites International zone Saudi Arabia:.com .net .biz .info .name .tel .mobi .asia - $30 \r\n.sc 4442 websites Seychelles- $30 \r\n.se 1491677 websites Sweden - $100 \r\n.se 293316 websites International zone Sweden:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.sg 150351 websites Republic Of Singapore - $50 \r\n.sh 7560 websites Saint Helena - $30 \r\n.si 103778 websites Slovenia- $50 \r\n.si 12879 websites International zone Slovenia:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.sk 414198 websites Slovakia- $80 \r\n.sk 31572 websites International zone Slovakia:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.sm 8897 websites San Marino - $30 \r\n.sn 344 websites International zone Senegal:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.sn 4465 websites Senegal - $30 \r\n.sr 580 websites Suriname - $30 \r\n.sv 8432 websites Salvador- $30 \r\n.sx 2901 websites Sint Maarten - $30 \r\n.sy 2972 websites Syria - $30 \r\n.sz 321 websites Swaziland - $30 \r\n.tc 16384 websites Turks and Caicos Islands- $50 \r\n.tf 19841 websites French Sauthern Territory - $50 \r\n.tg 1230 websites Togo - $30 \r\n.th 22368 websites Kingdom Of Thailand- $50 \r\n.tj 9492 websites Tajikistan- $50 \r\n.tj 34 websites International zone Tajikistan:.com .net .biz .info .name .tel .mobi .asia \r\n.tk 20085806 websites Tokelau - $500 \r\n.tl 2748 websites East Timor - $30 \r\n.tm 7203 websites Turkmenistan- $50 \r\n.tm 44 websites International zone Turkmenistan:.com .net .biz .info .name .tel .mobi .asia \r\n.tr 243347 websites Turkey - $80 \r\n.tr 138818 International zone Turkey:.com .net .biz .info .name .tel .mobi .asia -$50 \r\n.tt 1017 websites Trinidad & Tobago  - $30 \r\n.ua 1274459 websites Ukraina - $100 \r\n.ua 147202 websites International zone Ukraine:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.ug 3806 websites Uganda - $30 \r\n.ug 720 websites International zone Uganda:.com .net .biz .info .name .tel .mobi.asia-$30 \r\n.uk 5975887 websites United Kingdom - $250 \r\n.uk 3304606 websites International zone United Kingdom:.com .net .biz .info .name .tel .mobi .asia-$150 \r\n.us 4828526 websites USA - $300 \r\n.us 1211424 websites International zone USA:.com .net .biz .info .name .tel .mobi .asia - $100 \r\n.uy 15571 websites Uruguay - $50 \r\n.uy 31812 websites International zone Uruguay:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.uz 65125 websites Uzbekistan - $50 \r\n.uz  365 websites International zone Uzbekistan:.com .net .biz .info .name .tel .mobi .asia \r\n.vc 18641 websites Saint Vincent & Grenadines - $50 \r\n.ve 14015 websites Venezuela - $50 \r\n.ve 2898 websites International zone Venezuela:.com .net .biz .info .name .tel .mobi .asia - $30 \r\n.vg 8389 websites Virgin Islands (British) - $50 \r\n.vi 109 websites Virgin Islands (US) - $30 \r\n.vn 436005 websites Vietnam - $80 \r\n.vn 161855 websites International zone Vietnam:.com .net .biz .info .name .tel .mobi .asia - $50 \r\n.vu 1051 websites Vanuatu - $30 \r\n.wf 1133 websites Wallis & Futuna Islands - $30 \r\n.ws 99308 websites Samoa - $80 \r\n.ye 18 websites Yemen - $30 \r\n.yt 2004 websites Mayotte - $30 \r\n.za 1008308 websites South Africa - $100 \r\n \r\nwebsite =» xn----7sbb1bbndheurc1a.xn--p1ai'),
(428, 'Mike Dutton\r\n', 'no-replyer@gmail.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Dutton\r\n \r\nsupport@digital-x-press.com'),
(429, 'Simpson Middleton', 'simpsonmiddleton1111@gmail.com', 'Hello \r\n \r\nDo you need funds to finance a project? Do you want to raise capital for a business transaction?- Or maybe you require a line of credit? We can help! \r\n \r\nWe are agents working directly with private investors who are able to provide yearly renewable loans to get your project funded. \r\n \r\nMy investors are looking to invest into various businesses like real estate, hotel, oil and gas, farming, mining, construction, trade, telecommunications, etc. If you have any viable project, we are ready to open a window for further discussion. \r\n \r\nYours faithfully \r\nSimpson Middleton \r\nWhatsApp: 447452180661 \r\nE-mail: info@wealthfunders.org');

-- --------------------------------------------------------

--
-- Table structure for table `contribute`
--

CREATE TABLE `contribute` (
  `con_id` int(15) NOT NULL,
  `con_dp` varchar(255) NOT NULL,
  `con_data` varchar(255) NOT NULL,
  `con_title` varchar(255) NOT NULL,
  `con_sub` varchar(255) NOT NULL,
  `con_sub_code` varchar(255) NOT NULL,
  `con_branch` varchar(255) NOT NULL,
  `con_sem` varchar(255) NOT NULL,
  `con_year` int(15) NOT NULL,
  `con_college` varchar(255) NOT NULL,
  `con_info_1` varchar(255) NOT NULL,
  `con_info_2` varchar(255) NOT NULL,
  `con_contri_name` varchar(255) NOT NULL,
  `con_contri_college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contribute`
--

INSERT INTO `contribute` (`con_id`, `con_dp`, `con_data`, `con_title`, `con_sub`, `con_sub_code`, `con_branch`, `con_sem`, `con_year`, `con_college`, `con_info_1`, `con_info_2`, `con_contri_name`, `con_contri_college`) VALUES
(16, '139156338_1549381835256561_5546922257905120318_n.jpg', '139156338_1549381835256561_5546922257905120318_n.jpg', 'MAMA', 'MME', 'MME121', 'ALL', '1/2', 1, 'MANIT', '', '', 'MAMA', 'MANIT'),
(17, 'Lab DA 2 (2).pdf', 'Lab DA 2 (2).pdf', 'iji', '9i', '8u', 'ALL', '1/2', 2, 'okok', '', '', 'kmok', 'okk9');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(15) NOT NULL,
  `file_dp` varchar(255) NOT NULL,
  `file_data` varchar(255) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_sub` varchar(255) NOT NULL,
  `file_sub_code` varchar(255) NOT NULL,
  `file_branch` varchar(255) NOT NULL,
  `file_sem` varchar(255) NOT NULL,
  `file_year` int(15) NOT NULL,
  `file_college` varchar(255) NOT NULL,
  `file_info_1` text NOT NULL,
  `file_info_2` text NOT NULL,
  `file_contri_name` varchar(255) NOT NULL,
  `file_contri_college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `file_dp`, `file_data`, `file_title`, `file_sub`, `file_sub_code`, `file_branch`, `file_sem`, `file_year`, `file_college`, `file_info_1`, `file_info_2`, `file_contri_name`, `file_contri_college`) VALUES
(15, 'default_CaZ45vTe9b.jpg', 'FUELS.pdf', 'Fuels', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', 'Introduction to fuels, Classification of fuels, Characteristics of good fuel, calorific value,  Determination of calorific value, Bomb calorimeter, Theoretical calculation by Dulong’s formula, Analysis of coal, Ultimate analysis is involving the measurement of C, H, N, S and O', '', 'NOTES NAKA', 'MANIT'),
(16, 'default_CaZ45vTe9b.jpg', 'POLYMERS.pdf', 'Polymers', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', 'Introduction to polymers, types of polymer on different basis and brief info about them, tactility, polymerization and their types, differences between addition and condensation polymerization,  free – radical mechanism of polymerization, coupling or combination, disproportionation, preparation, properties and uses of the polymers, plastics and rubber.', '', 'NOTES NAKA', 'MANIT'),
(17, 'default_CaZ45vTe9b.jpg', 'WATER.pdf', 'Water', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', 'Introduction to water, occurrence, water purification, characteristics of water, chemical characteristics of water, hardness, hard water, soft water, the hardness of water, types of hardness, expression of hardness in terms of equivalents of CaCO3, units of hardness, estimation of total hardness of water by EDTA method, alkalinity, scale and sludge formation in boilers, caustic embrittlement, boiler corrosion, priming and foaming, softening methods, potable water and desalination of brackish water.', '', 'NOTES NAKA', 'MANIT'),
(18, 'default_CaZ45vTe9b.jpg', 'CORROSION AND CORROSION CONTROL.pdf', 'Corrosion and Corrosion control', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', 'Introduction to corrosion, pilling-Bedworth rule, mechanism of corrosion, galvanic corrosion, differential aeration corrosion, Cervice corrosion, factor influencing corrosion, the role of the nature of film formed on metal surface in the oxidation, corrosion control, electroplating, electroless plating and the constituents of paints and their functions', '', 'NOTES NAKA', 'MANIT'),
(19, 'default_CaZ45vTe9b.jpg', 'AIR POLLUTION 1.pdf', 'Atmosphere and Air Pollution', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'ALL', 'Atmosphere composition and structure, the structure of the atmosphere, air pollution, types of air pollutants, major primary pollutants produced by human activity, control of air pollution, global warming and greenhouse effect, greenhouse gases, causes of global warming, consequences of global warming, remedial measures to control global warming, acid rain and its effect, mechanism of ozone depletion, volatile organic compounds and indoor pollution causes and effects.', '', 'NOTES NAKA', 'MANIT'),
(20, 'default_CaZ45vTe9b.jpg', 'HYDROSPHERE AND WATER POLLUTION 2.pdf', 'Hydrosphere and Water Pollution', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'ALL', 'Characteristics of water, types and sources of water pollution, classification of water pollution, biochemical oxygen demand, chemical oxygen demand, what is the relationship between the cod and bod values in wastewater? what is wastewater? sources of wastewater, effects of wastewater pollutants, why wastewater treatment is necessary? steps involving wastewater treatment, odour control, energy requirements, sludge treatment and disposal, sludge treatment and disposal, aerated lagoon, activated sludge and trickling filters', '', 'NOTES NAKA', 'MANIT'),
(21, 'default_CaZ45vTe9b.jpg', 'LITHOSPHERE 3.pdf', 'Lithosphere and Soil Pollution', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'ALL', 'Composition of soil, the importance of soil, various sources of soil pollution, consequences of soil pollution and control measures of soil pollution', '', 'NOTES NAKA', 'MANIT'),
(22, 'default_CaZ45vTe9b.jpg', 'BIOSPHERE 4.pdf', 'Biosphere and its Pollution', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'ALL', 'Concept of ecology and eco-system, nutrient cycles (biogeochemical cycles), carbon cycle, oxygen cycle, nitrogen cycle, various steps in the nitrogen cycle, phosphorus cycle, phosphate utilization, phosphorus production, sulphur cycle, human impact on the sulfur cycle', '', 'NOTES NAKA', 'MANIT'),
(23, 'default_CaZ45vTe9b.jpg', 'GREEN CHE 5.pdf', 'Green Chemistry', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'ALL', 'Green chemistry, basic principles, the importance of green chemistry, environmental sustainability', '', 'NOTES NAKA', 'MANIT'),
(24, 'default_CaZ45vTe9b.jpg', 'PDE.pdf', 'Partial Differential Equation', 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'ALL', 'PDE, homogenous function, Euler\'s theorem, total differentiation, maxima and minima for one variable and two variables and Lagrange\'s method of undetermined multipliers', '', 'NOTES NAKA', 'MANIT'),
(25, 'default_CaZ45vTe9b.jpg', 'MI.pdf', 'Multiple Integral', 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'ALL', 'Introduction to double integral and method of evaluation, change of order of integration, triple integration, change of variables and length, area and volume of the curve', '', 'NOTES NAKA', 'MANIT'),
(26, 'default_CaZ45vTe9b.jpg', 'curve tracing.pdf', 'Curve Tracing', 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'ALL', 'Radius of curvature, method of tracing curves i.e. symmetry, origin, intersection with co-ordinate axis, region, tangents, extension of the curve to infinity, asymptotes etc.', '', 'NOTES NAKA', 'MANIT'),
(27, 'default_CaZ45vTe9b.jpg', 'VC.pdf', 'Vector Calculus', 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'ALL', 'Introduction to vector calculus, vector product, vector differentiation, point function, vector differential operator, gradient, divergence and curl of vector function, green theorem, gauss-divergence theorem and stokes theorem', '', 'NOTES NAKA', 'MANIT'),
(28, 'default_CaZ45vTe9b.jpg', 'vectorcalculus (1).pdf', 'Vector Calculus 2', 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'ALL', 'Gradient, divergence and curl, Laplacian and second-order operator, line, surface and volume integrals, green\'s theorem and application, gauss divergence theorem and application, stoke\'s theorem and application', '', 'NOTES NAKA', 'MANIT'),
(30, 'default_CaZ45vTe9b.jpg', 'Copy of Betagamma proofs.pdf', 'Beta Gamma Proof', 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'ALL', 'Proof of Beta Gamma Proof (Very Important in exam point of view)', '', 'NOTES NAKA', 'MANIT'),
(31, 'default_CaZ45vTe9b.jpg', 'matrix.pdf', 'Matrices', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'ALL', 'Introduction to matrices, the trace of a matrice, properties of conjugate, determinants and its properties, the rank of matrices, echelon form of matrice, the normal form of matrice, Eiegn values and vector, Cayley-hamilton theorem, properties of eigenvalues and vector', '', 'NOTES NAKA', 'MANIT'),
(32, 'default_CaZ45vTe9b.jpg', 'COMPLEX VARIABLES.pdf', 'Complex Variables', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'ALL', 'Introduction to a complex variable, complex function, a neighbourhood of hood Z0, analytic function, harmonic conjugate function, complex integration, complex power series, Taylor theorem, Lorentz series and singularity', '', 'NOTES NAKA', 'MANIT'),
(33, 'default_CaZ45vTe9b.jpg', 'FS.pdf', 'Fourier Series', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'ALL', 'Fourier series, dirchilet\'s conditions, covergence, fourier series of even and odd function, half range sine and cosine series', '', 'NOTES NAKA', 'MANIT'),
(34, 'default_CaZ45vTe9b.jpg', 'electrical Properties Of Metals _ Semiconductors.pdf', 'Solid State and Semi-Conductor Physics', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', 'Energy bands in solids, electron and hole, mobility, hall effect, PN junction transistor, transistor parameters, photocell and solar cell', '', 'NOTES NAKA', 'MANIT'),
(35, 'default_CaZ45vTe9b.jpg', 'Modern Physics _ Quantum Mechanics.pdf', 'Quantum Mechanics', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', 'Schrodinger wave equation, particle in a box, harmonic oscillator, tunnel effect', '', 'NOTES NAKA', 'MANIT'),
(36, 'default_CaZ45vTe9b.jpg', 'laser.pdf', 'Laser', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', 'Laser phenomena, Ruby and He-Ne laser and applications, laser holography', '', 'NOTES NAKA', 'MANIT'),
(37, 'default_CaZ45vTe9b.jpg', 'optical fibres.pdf', 'Fiber Optics', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', 'Types of optical fibres, Attenuation, Fiber losses, Fiber optics communication', '', 'NOTES NAKA', 'MANIT'),
(38, 'default_CaZ45vTe9b.jpg', 'OPTICS (2).pdf', 'Wave Optics', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', 'Interference and Diffraction, Michelson’s interferometer', '', 'NOTES NAKA', 'MANIT'),
(39, 'default_CaZ45vTe9b.jpg', 'electron-ballistics.pdf', 'Electron ballistics', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', ' The motion of charged particles in an electric and magnetic field, Electron microscope, Mass spectrographs', '', 'NOTES NAKA', 'MANIT'),
(40, 'default_CaZ45vTe9b.jpg', 'Lasers(ImpQ.).pdf', 'Laser Important Questions', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(41, 'default_CaZ45vTe9b.jpg', 'WATER2ndNotes 2.pdf', 'Boiler problems & softening methods', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'NIT BHOPAL', 'Introduction to boiler, Scale and Sludge formation: Disadvantages, Prevention (Internal &External Treatments), Caustic Embrittlement, Boiler Corrosion, Priming and Foaming. Softening Methods: Lime-Soda Processes (cold and hot both), Zeolite Process, Ion-Exchange Process. Numerical problems based on Lime-Soda Processes and water analysis.\r\n', '', 'NOTES NAKA', 'MANIT'),
(42, 'default_CaZ45vTe9b.jpg', 'Lubricants2ndNotes 1.pdf', 'Lubricants Detailed Notes', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', 'Introduction, Role and Effects of Friction, Functions of Lubricants, Mechanism of Lubrication – Thick Layer, Thin layer and Extreme Pressure Lubrication. Liquid Lubricants: Detailed classification of Vegetable Oils, Animal Oils, Mineral Oils, Blended and Synthetic Oils, Physical and Chemical Properties, Their Importance and Testing; Semi-solid Lubricants: Examples, Physical and Chemical Properties, Their Importance and Testing; Solid Lubricants: Examples and Their Structures; Biodegradable Lubricants; Lubricating Emulsions; Cutting\r\nFluids; Selection of Lubricants.\r\n', '', 'NOTES NAKA', 'MANIT'),
(43, 'default_CaZ45vTe9b.jpg', 'Lubri.pdf', 'Lubricants', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', 'Introduction, classification of lubricants, properties of lubricants, mechanism of lubrication, application of lubricants', '', 'NOTES NAKA', 'MANIT'),
(44, 'default_CaZ45vTe9b.jpg', 'unit1Communicationfinal.pdf', 'Communication', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', 'Communication process, Barriers to communication viz, organizational, individual, and interpersonal, Dealing with these barriers. Effective communication and modern techniques of spoken and written communication.\r\nElectronic devices in communication: computers (LAN, WAN, MAN), Facsimile, Telephone, Teleconferencing, Internet, E-Commerce', '', 'NOTES NAKA', 'MANIT'),
(45, 'default_CaZ45vTe9b.jpg', 'UNIT_2OralCommunicationfinal(pakka).pdf', 'Oral Communication Skills', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', 'Oral communication skills – verbal and non-verbal communication. Executive speaking and listening skills, Presentation skills, Body language, Voice modulation, Negotiation skills, Development of positive personal attitudes, Personal SWOT analysis and development of career plan, Identifying the job, Selection process, Written test- structural, situational, and psychological analysis, Principles of interviewing, Reducing stress, Retaining control, Setting objectives for the interview, Planning and preparation – the challenge of face to face skills', '', 'NOTES NAKA', 'MANIT'),
(46, 'default_CaZ45vTe9b.jpg', 'written communication skill-compressed.pdf', 'Written Communication Skills', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', 'Written communication skills – writing techniques and guidelines, Letter writing- basic principle and purpose, the body language of business letter, Tone of business letter, Types of business correspondence: inviting quotations, answering quotations, orders, tenders, sales letters, claim and adjustment letters, Writing smart e-mail, credit/collection letters, job application and writing resume, Report writing: types of reports, Parts of a report, Qualities of good report, Drafting reports-preparation, Analysis and interpretation of reports\r\n', '', 'NOTES NAKA', 'MANIT'),
(47, 'default_CaZ45vTe9b.jpg', 'Unit4DevelopingOtherSkills1_final(pakka).pdf', 'Developing Other Skills- I', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', 'Developing other skills: interpersonal and human skills, Reading skills, Time management skills: avoiding time wasters and identification of prime time, Choosing an appropriate leadership style, Development of an ideal mix of skills\r\n', '', 'NOTES NAKA', 'MANIT'),
(48, 'default_CaZ45vTe9b.jpg', 'DC CIRCUITS.pdf', 'DC Circuits', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', 'Review of basic concepts of charge, voltage and current, power and energy, Voltage & Current sources, Ohm’s Law and its application, the effect of temperature on resistance of conductors, semiconductors and insulators. Voltage & Current sources, KCL, KVL, loop and nodal equations, Network theorems, Star-Delta transformations for resistances, Simple series and parallel circuits\r\n', '', 'NOTES NAKA', 'MANIT'),
(49, 'default_CaZ45vTe9b.jpg', 'dcanalysis(ALLtheorems).pdf', 'DC Circuits Theorems', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', '\r\n', '', 'NOTES NAKA', 'MANIT'),
(50, 'default_CaZ45vTe9b.jpg', 'DCanalysisimportantQUES_watermark.pdf', 'DC Analysis Important Questions', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(51, 'default_CaZ45vTe9b.jpg', 'TRANSIENT, 1 PHASE AC.pdf', 'AC Circuits', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', 'Alternating quantities, RMS and average value, Phase and Phase Difference, Power and power factor, Series and Parallel AC circuits, resonance, Concept of Single Phase and Three Phase Supply; 3-phase Star-Delta connections, Inter-Relation between phase and line values of voltages and currents. Faraday‘s law of electromagnetic induction, its\r\napplication to transformer and machines.\r\n', '', 'NOTES NAKA', 'MANIT'),
(52, 'default_CaZ45vTe9b.jpg', 'ACcircuit(importantQUES)_watermark.pdf', 'AC Circuits Important Questions', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(53, 'default_CaZ45vTe9b.jpg', 'SinglePhaseTransformer_MagneticCkt-2-17.pdf', 'Magnetic Circuits and Single Phase Transformer', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', 'Basic definitions, Magnetization characteristics of Ferromagnetic materials, Magnetic field produced by\r\nthe current-carrying conductor, Force on a current-carrying conductor, AC excitation in magnetic circuits. Laws of electromagnetic Induction, induced voltage, the direction of induced E.M.F, self-inductance and mutual\r\ninductance, energy in linear magnetic systems, Coils connected in series.', '', 'NOTES NAKA', 'MANIT'),
(54, 'default_CaZ45vTe9b.jpg', 'TRANSFORMER 2.pdf', 'Introduction to Magnetic Circuits and Transformer', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(55, 'default_CaZ45vTe9b.jpg', 'Transformer(IMPconceptsandQ)final_watermark (1)_removed.pdf', 'Transformer Important Concepts', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', 'Construction, the principle of operation, phasor diagrams, equivalent circuit, losses and efficiency, OC/SC tests.', '', 'NOTES NAKA', 'MANIT'),
(56, 'default_CaZ45vTe9b.jpg', 'DC_MACHINES (1)-1-13.pdf', 'DC machines', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', 'Types of DC machines and their Construction, principle of operation, emf and\r\ntorque equations, speed and torque control methods, starters\r\n', '', 'NOTES NAKA', 'MANIT'),
(57, 'default_CaZ45vTe9b.jpg', 'semiconductor (1).pdf', 'Semiconductor devices and applications', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', 'Characteristics of PN Junction Diode and Zener Diode, applications of Zener diodes, half-wave and full-wave rectifiers, ripple factor, conversion efficiency,\r\n', '', 'NOTES NAKA', 'MANIT'),
(58, 'default_CaZ45vTe9b.jpg', 'BIPOLAR_JUNCTION_TRANSISTOR_AND_APPLICATIONS (1).pdf', 'Bipolar Junction Transistor', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', 'Principle of operation, Input/output & transfer characteristics of BJT in CB, CE, CC configurations and their applications.', '', 'NOTES NAKA', 'MANIT'),
(59, 'default_CaZ45vTe9b.jpg', 'PROGRAMMING C.pdf', 'Complete C Programming', 'CP', 'CSE-114', 'ALL', '1/2', 1, 'ALL', 'Introduction to Computer and its organization, Problem-solving using Computers by Flowchart and Algorithms., Developing a running computer program in C, C programming using conditions, loop, array, functions, pointers and structures\r\n', '', 'NOTES NAKA', 'MANIT'),
(60, 'default_CaZ45vTe9b.jpg', 'waveoptics(impQUES) (1)_removed_watermark.pdf', 'Wave Optics Important Questions', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(61, 'default_CaZ45vTe9b.jpg', 'QUANTUM(IMPques)_removed_watermark.pdf', 'Quantum Mechanics Important Questions', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(62, 'default_CaZ45vTe9b.jpg', '1. Force system and Concept of equilibrium.pdf', 'Force System and Concept Equilibrium', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'ALL', 'Force, Units of force, Characteristics of a force, Representation of forces, Classification of forces, Force systems, Free body diagrams, Transmissibility of a force, Particle, Resultant force, Component of a force, Principle of resolved parts, Laws of forces, Resultant of several coplanar concurrent forces, Equilibrium\r\nconditions for coplanar concurrent forces and Lami’s theorem', '', 'NOTES NAKA', 'MANIT'),
(63, 'default_CaZ45vTe9b.jpg', '2. Analysis of frames.pdf', 'Analysis of Frames', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'ALL', 'Types of frames, stress, analytical methods for the forces, method of joints and method of sections (or method of moments)', '', 'NOTES NAKA', 'MANIT'),
(64, 'default_CaZ45vTe9b.jpg', '3. Analysis of statically determinate trusses.pdf', 'Analysis of statically determinate trusses', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(65, 'default_CaZ45vTe9b.jpg', '4. Centroid and moment of inertia.pdf', 'Centroid and Moment of Inertia', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(66, 'default_CaZ45vTe9b.jpg', '5. Shear force and Bending moment.pdf', 'Shear Force and Bending moment', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(67, 'default_CaZ45vTe9b.jpg', '6. Simple stresses and strains.pdf', 'Simple Stresses and Strain', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(68, 'default_CaZ45vTe9b.jpg', '7. Mechanical properties of materials.pdf', 'Mechanical Properties of Materials', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(69, 'default_CaZ45vTe9b.jpg', '2.Engineering Curves.pdf', 'Engineering Curves', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(70, 'default_CaZ45vTe9b.jpg', '3.Orthographic projections.pdf', 'Orthographic Projection', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', 'Theory of Projections, reference planes, types of projection methods, orthographic projection', '', 'NOTES NAKA', 'MANIT'),
(71, 'default_CaZ45vTe9b.jpg', '4.Projections of points.pdf', 'Projection of Points', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', 'Projection of points in different angles', '', 'NOTES NAKA', 'MANIT'),
(72, 'default_CaZ45vTe9b.jpg', '5.Projections of lines.pdf', 'Projection of Lines', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(73, 'default_CaZ45vTe9b.jpg', '7.Projection of planes-compressed.pdf', 'Projection of Planes', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', 'Projection of planes, projections using auxiliary planes method', '', 'NOTES NAKA', 'MANIT'),
(74, 'default_CaZ45vTe9b.jpg', '8.Projections of solids-compressed.pdf', 'Projection of solids', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', 'Projection of polyhedrons, Prism and pyramids, Projection of solids of\r\nrevolution in different positions.\r\n', '', 'NOTES NAKA', 'MANIT'),
(75, 'default_CaZ45vTe9b.jpg', '1.Study of Diode.pdf', 'Diodes', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To plot the characteristics curves of a p-n junction diode and calculate its resistance', '', 'NOTES NAKA', 'MANIT'),
(76, 'default_CaZ45vTe9b.jpg', '2. Transistors.pdf', 'Transistor', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To plot the characteristics curves of PNP transistors in CE mode', '', 'NOTES NAKA', 'MANIT'),
(77, 'default_CaZ45vTe9b.jpg', '3.Melde_s Experiment.pdf', 'Melde', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To perform Melde’s Experiment in transverse and longitudinal modes and determine the frequency of an electrically maintained tuning fork', '', 'NOTES NAKA', 'MANIT'),
(79, 'default_CaZ45vTe9b.jpg', '4.Frequency of ac mains.pdf', 'AC Mains', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To determine the frequency of AC mains using an electrical vibrator', '', 'NOTES NAKA', 'MANIT'),
(80, 'default_CaZ45vTe9b.jpg', '5.Newton_s Rings.pdf', 'Newton\'s Ring', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To determine the radius of curvature of a lens by Newton’s ring method.', '', 'NOTES NAKA', 'MANIT'),
(81, 'default_CaZ45vTe9b.jpg', '6.refractive index.pdf', 'Refractive Index', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To determine the refractive index of the material of the prism for various colours of mercury light using prism and spectrometer', '', 'NOTES NAKA', 'MANIT'),
(82, 'default_CaZ45vTe9b.jpg', '8.Plane Transmission Grating 1.pdf', 'Plane Transmission Grating', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To determine the wavelength of different colours of mercury light using a plane transmission grating', '', 'NOTES NAKA', 'MANIT'),
(83, 'default_CaZ45vTe9b.jpg', '9.l-b Photometer.pdf', 'L-B Photometer', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To determine the percentage of transmission of light for a semitransparent film using Lummer- Brodhum photometer.', '', 'NOTES NAKA', 'MANIT'),
(84, 'default_CaZ45vTe9b.jpg', '10.Slit Diffraction.pdf', 'Slit Diffraction', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To study diffraction at a single slit using a He-Ne laser.', '', 'NOTES NAKA', 'MANIT'),
(85, 'default_CaZ45vTe9b.jpg', '11.Michelson interferometer.pdf', 'Michelson Interferometer', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To determine the wavelength of He-Ne laser by Michelson Interferometer', '', 'NOTES NAKA', 'MANIT'),
(86, 'default_CaZ45vTe9b.jpg', '12.hall effect.pdf', 'Hall Effect', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To determine Hall Potential and Hall Coefficient', '', 'NOTES NAKA', 'MANIT'),
(87, 'default_CaZ45vTe9b.jpg', '13.photo cell.pdf', 'Photo Cell', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To study the characteristic of Photo Cell', '', 'NOTES NAKA', 'MANIT'),
(88, 'default_CaZ45vTe9b.jpg', '14.nodal slide.pdf', 'Nodal Slide', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To verify the formula for the combination of lenses and to determine the cardinal points of the combination using Nodal Slide assembly', '', 'NOTES NAKA', 'MANIT'),
(89, 'default_CaZ45vTe9b.jpg', '16.planck_s constant.pdf', 'Plank Constant', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To determine the Plank’s Constant using LED', '', 'NOTES NAKA', 'MANIT'),
(90, 'default_CaZ45vTe9b.jpg', '17.photo conductivity.pdf', 'Photo Conductivity', 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'ALL', 'To study the characteristic of Photoconductive material', '', 'NOTES NAKA', 'MANIT'),
(91, 'default_CaZ45vTe9b.jpg', 'engg chem lab.pdf', 'Engineering Chemistry Lab', 'Chemistry Lab', 'CH-128', 'ALL', '1/2', 1, 'ALL', 'Determination of viscosity and viscosity-index of lubricating oil by \r\nRed Wood Viscometer Number 1 and\r\nRed Wood Viscometer number 2 \r\n<br>\r\nDetermination of Flash and Fire point of liquid fuel and lubricants by \r\nCleaveland\'s Open Cup Method,\r\nAbel\'s Flash Point Apparatus and\r\nPensky Martin\'s Flash Point Apparatus\r\n', '', 'NOTES NAKA', 'MANIT'),
(92, 'default_CaZ45vTe9b.jpg', 'titration lab.pdf', 'Titration Lab', 'Chemistry Lab', 'CH-128', 'ALL', '1/2', 1, 'ALL', 'Oxidation-Reduction Titrations\r\nEstimation of percentage of iron using potassium dichromate by internal indicator method Estimation of percentage of iron using potassium dichromate by external indicators\r\n<br>\r\nIODOMETRIC TITRATIONS\r\nIodometric titration of copper sulphate by hypo. iodometric titration of potassium dichromate by hypo.\r\n<br>\r\nWater Analysis\r\nDetermination of alkalinity of a water sample by the acid method. Determination of total hardness in water using EDTA titrations\r\nDetermination of pH of tap water sample (Demonstration)\r\n', '', 'NOTES NAKA', 'MANIT'),
(93, 'default_CaZ45vTe9b.jpg', 'electrical lab experiments.pdf', 'BEEE Lab Manual', 'BEEE Lab', 'EE-127', 'ALL', '1/2', 1, 'ALL', 'Understand the safety measures of handling electrical equipment,\r\nIdentify and use different electrical tools and equipment,\r\nConnect the measuring instruments and record the measured values correctly and\r\nAnalyze the results of a given electrical circuit and plot the desired characteristics<br><br>\r\nConsist of all handwritten lab experiments\r\n', '', 'NOTES NAKA', 'MANIT'),
(94, 'default_CaZ45vTe9b.jpg', 'observation copy.pdf', 'Observation Copy', 'BEEE Lab', 'EE-127', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(95, 'default_CaZ45vTe9b.jpg', '1.carpentary.pdf', 'Carpentry', 'Workshop', 'ME-126', 'ALL', '1/2', 1, 'ALL', 'Introduction to carpentry, types of timber, the study of various tools used in carpentry, types of joints', '', 'NOTES NAKA', 'MANIT'),
(96, 'default_CaZ45vTe9b.jpg', '2.fitting final_20190820114459.pdf', 'Fitting', 'Workshop', 'ME-126', 'ALL', '1/2', 1, 'ALL', 'Introduction to fitting and its tools', '', 'NOTES NAKA', 'MANIT'),
(97, 'default_CaZ45vTe9b.jpg', '3.foundary-1.pdf', 'Foundry', 'Workshop', 'ME-126', 'ALL', '1/2', 1, 'ALL', 'Introduction to casting, the study of tools used in making moulds and sands', '', 'NOTES NAKA', 'MANIT'),
(98, 'default_CaZ45vTe9b.jpg', '4.Welding.pdf', 'Welding', 'Workshop', 'ME-126', 'ALL', '1/2', 1, 'ALL', 'Introduction to metal joining processes, types of welding processes and joints\r\n', '', 'NOTES NAKA', 'MANIT'),
(99, 'default_CaZ45vTe9b.jpg', '5.Workshop journal-compressed.pdf', 'Workshop Journal', 'Workshop', 'ME-126', 'ALL', '1/2', 1, 'ALL', 'Complete handwritten workshop manual', '', 'NOTES NAKA', 'MANIT'),
(100, 'default_CaZ45vTe9b.jpg', 'ODE.pdf', 'ODE', 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'ALL', 'Introduction to Ordinary Differential Equation, the formation of ODE and various method to find the solution of the ODE', '', 'NOTES NAKA', 'MANIT'),
(102, 'default_CaZ45vTe9b.jpg', 'SOURCERAJU.pdf', 'DC Source Transformation', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', 'Source Transformation, Superposition Theorem, Thevenin’s Theorem, Norton’s Theorem, Maximum Power Transfer', '', 'NOTES NAKA', 'MANIT'),
(103, 'default_CaZ45vTe9b.jpg', 'Solved Questions.pdf', 'Solved Numericals', 'Data Warehousing And Mining', 'CSE-322', 'CSE', '6', 3, 'ALL', 'Solved numerical Data Warehouse and mining concepts.', '', 'NOTES NAKA', 'MANIT'),
(104, 'default_CaZ45vTe9b.jpg', '1. Amortized Analysis.pdf', 'Amortized Analysis', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'Analysis of Time Complexity using Amortized Analysis', '', 'NOTES NAKA', 'MANIT'),
(105, 'default_CaZ45vTe9b.jpg', '2. Red Black Tree.pdf', 'Red Black Trees', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'Introduction to Red-Black Trees, Insertion, Deletion', '', 'NOTES NAKA', 'MANIT'),
(106, 'default_CaZ45vTe9b.jpg', '3. Leftist Trees.pdf', 'Leftist Trees', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'Leftist Tress Introduction, Solved Examples', '', 'NOTES NAKA', 'MANIT'),
(107, 'default_CaZ45vTe9b.jpg', '5. Binomial Trees.pdf', 'Binomial Trees', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'About Binomial Trees, Different Operation and Examples', '', 'NOTES NAKA', 'MANIT'),
(108, 'default_CaZ45vTe9b.jpg', '6. Binomial Heaps.pdf', 'Binomial Heaps', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'About Binomial Heaps, Operations and Examples', '', 'NOTES NAKA', 'MANIT'),
(109, 'default_CaZ45vTe9b.jpg', '7. Fibonacci Heaps.pdf', 'Fibonacci Heaps', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'About Fibonacci Heaps, Operations and Examples', '', 'NOTES NAKA', 'MANIT'),
(110, 'default_CaZ45vTe9b.jpg', '8. String Matching.pdf', 'String Matching', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'About String Matching Algorithms with Examples', '', 'NOTES NAKA', 'MANIT'),
(111, 'default_CaZ45vTe9b.jpg', '9. Fibonacci Hepas part-2.pdf', 'Fibonacci Heaps Continued', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'Continuation of the concepts of Fibonacci heaps.', '', 'NOTES NAKA', 'MANIT'),
(112, 'default_CaZ45vTe9b.jpg', '10. Skip Lists.pdf', 'Skip Lists', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'About Skip Lists with examples', '', 'NOTES NAKA', 'MANIT'),
(113, 'default_CaZ45vTe9b.jpg', '11. Splay Trees.pdf', 'Splay Trees', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'About Splay Trees with examples', '', 'NOTES NAKA', 'MANIT'),
(114, 'default_CaZ45vTe9b.jpg', '12. Tries.pdf', 'Tries', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'About Tries with examples', '', 'NOTES NAKA', 'MANIT'),
(115, 'default_CaZ45vTe9b.jpg', '13. Suffix Trees.pdf', 'Suffix Trees', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'About Suffix Trees with examples', '', 'NOTES NAKA', 'MANIT'),
(116, 'default_CaZ45vTe9b.jpg', '14. Segment Trees and Interval Trees.pdf', 'Segment Trees and Interval Trees', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'About Segment Trees and Interval Trees with examples', '', 'NOTES NAKA', 'MANIT'),
(117, 'default_CaZ45vTe9b.jpg', '15. Network Flow.pdf', 'Network Flow', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'Network Flow Algorithms with examples', '', 'NOTES NAKA', 'MANIT'),
(118, 'default_CaZ45vTe9b.jpg', 'Practice Questions.pdf', 'Practice Questions', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'Solved Numerical Questions from ADS', '', 'NOTES NAKA', 'MANIT'),
(119, 'default_CaZ45vTe9b.jpg', '1. Introduction.pdf', 'Introduction to Artificial Intelligence', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'Introduction to AI, Uses, and course content', '', 'NOTES NAKA', 'MANIT'),
(120, 'default_CaZ45vTe9b.jpg', '2. Searching Techniques.pdf', 'Searching Techniques', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'Different Searching Techniques, Branch and Bound, Hill Climbing, A*, AO*', '', 'NOTES NAKA', 'MANIT'),
(121, 'default_CaZ45vTe9b.jpg', '3. 7 AI characteristics.pdf', '7 AI Characteristics', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'Most Important topic the 7 AI Characteristics ', '', 'NOTES NAKA', 'MANIT'),
(122, 'default_CaZ45vTe9b.jpg', '5. 7 AI Characteristics examples.pdf', '7 AI Characteristics Examples', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'Examples of 7 AI characteristics', '', 'NOTES NAKA', 'MANIT'),
(123, 'default_CaZ45vTe9b.jpg', '6. Game Playing Techniques.pdf', 'Game Playing Techniques', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'DIfferent game playing techniques with examples', '', 'NOTES NAKA', 'MANIT'),
(124, 'default_CaZ45vTe9b.jpg', '7. Semantic Nets.pdf', 'Semantic Nets', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'Introduction to semantic nets and solved examples', '', 'NOTES NAKA', 'MANIT'),
(125, 'default_CaZ45vTe9b.jpg', '8. Knowledge Representation.pdf', 'Knowledge Representation', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'Introduction to Knowledge Representation, Different ways, and solved examples', '', 'NOTES NAKA', 'MANIT'),
(126, 'default_CaZ45vTe9b.jpg', '9. Conceptual Dependency.pdf', 'Conceptual Dependency', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'Solved Numericals on Conceptual Dependency', '', 'NOTES NAKA', 'MANIT'),
(127, 'default_CaZ45vTe9b.jpg', '1. Introduction.pdf', 'Introduction', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Introduction to Computer Networks and Revision of Digital Communication', '', 'NOTES NAKA', 'MANIT'),
(128, 'default_CaZ45vTe9b.jpg', '2. Models in CN.pdf', 'Models in CN', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Models in Computer Networks, TCP/IP, OSI', '', 'NOTES NAKA', 'MANIT'),
(129, 'default_CaZ45vTe9b.jpg', '3. Physical Layer.pdf', 'Physical Layer', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Introduction to the Physical Layer ', '', 'NOTES NAKA', 'MANIT'),
(130, 'default_CaZ45vTe9b.jpg', '4. Data Link Layer.pdf', 'Data Link Layer', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Introduction to Data Link Layer', '', 'NOTES NAKA', 'MANIT'),
(131, 'default_CaZ45vTe9b.jpg', '5. Stop and Wait Protocol.pdf', 'Stop and Wait Protocol', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Explanation of stop and wait protocol with different scenarios and derivations', '', 'NOTES NAKA', 'MANIT'),
(132, 'default_CaZ45vTe9b.jpg', '6. Sliding Window Protocol.pdf', 'Sliding Window Protocol', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Explanation of Sliding Window protocol with different scenarios and derivations', '', 'NOTES NAKA', 'MANIT'),
(133, 'default_CaZ45vTe9b.jpg', '7. MAC Layer.pdf', 'MAC Layer', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Introduction to MAC Layer', '', 'NOTES NAKA', 'MANIT'),
(134, 'default_CaZ45vTe9b.jpg', '8. ALOHA.pdf', 'ALOHA ', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Explanation of ALOHA protocol with different scenarios and derivations', '', 'NOTES NAKA', 'MANIT'),
(135, 'default_CaZ45vTe9b.jpg', '9. CSMA.pdf', 'CSMA', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Explanation of CSMA protocol with different scenarios and derivations', '', 'NOTES NAKA', 'MANIT'),
(136, 'default_CaZ45vTe9b.jpg', '10. LAN and Ethernet.pdf', 'LAN and Ethernet', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'About LAN and Ethernet and their methods', '', 'NOTES NAKA', 'MANIT'),
(137, 'download.png', 'Unix VIVA.pdf', 'VIVA Questions ', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Important VIVA Questions for Unix Internal & Shell Programming.', '', 'NOTES NAKA', 'MANIT'),
(138, 'default_CaZ45vTe9b.jpg', '10. Token Ring.pdf', 'Token Ring', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Explanation of Token Ring protocol with different scenarios and derivations', '', 'NOTES NAKA', 'MANIT'),
(139, 'default_CaZ45vTe9b.jpg', '11. Switching.pdf', 'Switching', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Introduction to Switching with Examples', '', 'NOTES NAKA', 'MANIT'),
(140, 'default_CaZ45vTe9b.jpg', '1.Introduction.pdf', 'Introduction to DIP', 'Digital Image Processing', 'CSE-393', 'CSE', '6', 3, 'ALL', 'Introduction to digital image processing, and Application', '', 'NOTES NAKA', 'MANIT'),
(141, 'default_CaZ45vTe9b.jpg', '2. Image Enhancement.pdf', 'Image Enhancement', 'Digital Image Processing', 'CSE-393', 'CSE', '6', 3, 'ALL', 'Different methods of image enhancement and techniques explained with examples', '', 'NOTES NAKA', 'MANIT'),
(142, 'download.png', 'DWM VIVA.pdf', 'VIVA Questions ', 'Data Warehousing And Mining', 'CSE-322', 'CSE', '6', 3, 'ALL', 'Important VIVA Questions for Data Warehousing And Mining.', '', 'NOTES NAKA', 'MANIT'),
(143, 'default_CaZ45vTe9b.jpg', '3. Morphological Image processing -1.pdf', 'Morphological Image Processing (Self Notes)', 'Digital Image Processing', 'CSE-393', 'CSE', '6', 3, 'ALL', 'Different methods of morphological image processing and techniques explained with examples', '', 'NOTES NAKA', 'MANIT'),
(144, 'default_CaZ45vTe9b.jpg', '4. Morphological Image processing -2.pdf', 'Morphological Image Processing (Teacher Notes)', 'Digital Image Processing', 'CSE-393', 'CSE', '6', 3, 'ALL', 'Different methods of morphological image processing and techniques explained with examples', '', 'NOTES NAKA', 'MANIT'),
(145, 'default_CaZ45vTe9b.jpg', '5. Image Restoration.pdf', 'Image Restoration', 'Digital Image Processing', 'CSE-393', 'CSE', '6', 3, 'ALL', 'Different methods of Image restoration and techniques explained with examples', '', 'NOTES NAKA', 'MANIT'),
(146, 'default_CaZ45vTe9b.jpg', '6. Color Modes.pdf', 'Color Modes', 'Digital Image Processing', 'CSE-393', 'CSE', '6', 3, 'ALL', 'Different color modes and explanation', '', 'NOTES NAKA', 'MANIT'),
(147, 'default_CaZ45vTe9b.jpg', '1. History and Introduction.pdf', 'History and Introduction', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'History of Unix and how it evolved and general Introduction', '', 'NOTES NAKA', 'MANIT'),
(148, 'default_CaZ45vTe9b.jpg', '2. Shell Programming.pdf', 'Shell Programming', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Shell Programming, Syntaxes and Examples', '', 'NOTES NAKA', 'MANIT'),
(149, 'default_CaZ45vTe9b.jpg', '3.Architecture.pdf', 'Architecture of UNIX', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Introduction to the architecture of UNIX', '', 'NOTES NAKA', 'MANIT'),
(150, 'download.png', 'DIP Viva.pdf', 'VIVA Questions ', 'Digital Image Processing', 'CSE-393', 'CSE', '6', 3, 'ALL', 'Important VIVA Questions for Digital Image Processing.', '', 'NOTES NAKA', 'MANIT'),
(151, 'default_CaZ45vTe9b.jpg', '4. System calls part-1.pdf', 'System Calls part-1', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Different types of system calls ', '', 'NOTES NAKA', 'MANIT'),
(152, 'default_CaZ45vTe9b.jpg', '5. System calls part-2.pdf', 'System Calls part-2', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Different types of system calls ', '', 'NOTES NAKA', 'MANIT'),
(153, 'download.png', 'AI VIVA.pdf', 'VIVA Questions ', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'Important VIVA Questions for Artificial Intelligence.', '', 'NOTES NAKA', 'MANIT'),
(154, 'default_CaZ45vTe9b.jpg', '6. Structure of Process.pdf', 'Structure of Process', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'The structure of processes in UNIX', '', 'NOTES NAKA', 'MANIT'),
(155, 'default_CaZ45vTe9b.jpg', '7. Process Control part-1.pdf', 'Process Control part-1', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Process Control in UNIX', '', 'NOTES NAKA', 'MANIT'),
(156, 'default_CaZ45vTe9b.jpg', '8. Process Control part-2.pdf', 'Process Control part-2', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Process Control in UNIX', '', 'NOTES NAKA', 'MANIT'),
(157, 'download.png', 'CN VIVA.pdf', 'VIVA Questions ', 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'Important VIVA Questions for Computer Networks.', '', 'NOTES NAKA', 'MANIT'),
(158, 'default_CaZ45vTe9b.jpg', '9. InterProcess Communication.pdf', 'Inter process Communication', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Interprocess communication in UNIX', '', 'NOTES NAKA', 'MANIT'),
(159, 'download.png', 'ADS VIVA.pdf', 'VIVA Questions ', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'Important VIVA Questions for Advanced Data Structures.', '', 'NOTES NAKA', 'MANIT'),
(160, 'default_CaZ45vTe9b.jpg', '10. Kernel, Modules and device drivers.pdf', 'Kernel, Modules and Device Drivers', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Introduction to Kernels, Modules, and Device Drivers', '', 'NOTES NAKA', 'MANIT'),
(161, 'default_CaZ45vTe9b.jpg', '11. Types of File Systems.pdf', 'Types of File System', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Introduction to the file system and types in UNIX', '', 'NOTES NAKA', 'MANIT'),
(162, 'download.png', 'ADS Complexity.pdf', 'Time Complexity Table ', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'Time Complexity Table for Advanced Data Structures.', '', 'NOTES NAKA', 'MANIT'),
(163, 'download.png', 'ITC VIVA.pdf', 'VIVA Questions ', 'Information Theory and Coding', 'CSE-355', 'CSE', '6', 3, 'ALL', 'Important VIVA Questions for Information Theory and Coding.', '', 'NOTES NAKA', 'MANIT'),
(164, 'default_CaZ45vTe9b.jpg', 'cement.pdf', 'Cement', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', 'Introduction to cement, composition and process involved in manufacture of portland cement, difference between dry and wet process of cement production, setting and hardening of cement.', '', 'NOTES NAKA', 'MANIT'),
(165, 'default_CaZ45vTe9b.jpg', 'MECHANIAL WORKSHOP.pdf', 'VIVA Questions', 'Workshop', 'ME-126', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(167, 'default_CaZ45vTe9b.jpg', 'BEEE LAB.pdf', 'VIVA Questions', 'BEEE Lab', 'EE-127', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(168, 'default_CaZ45vTe9b.jpg', 'BEEEqwert.pdf', 'VIVA Questions', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(169, 'default_CaZ45vTe9b.jpg', 'CHEMISTRY LAB_watermark.pdf', 'VIVA Questions', 'Chemistry Lab', 'CH-128', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(170, 'default_CaZ45vTe9b.jpg', 'CHEMISTRY_watermark.pdf', 'VIVA Questions', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(171, 'default_CaZ45vTe9b.jpg', 'Physics.pdf', 'VIVA Questions', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(172, 'default_CaZ45vTe9b.jpg', 'ENV SCOPE_IMPORTANCE+ECOSYSTEM_BIODIVERSITY(1).pdf', 'Environment, Scope And Importance', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(173, 'default_CaZ45vTe9b.jpg', 'ENVIRONMENTAL POLLUTION.pdf', 'Environmental Pollution', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(174, 'default_CaZ45vTe9b.jpg', 'HUMAN POPULATION AND ENVIRONMENT.pdf', 'Human Population And Environment', 'Environmental Studies', 'CH-128', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(175, 'default_CaZ45vTe9b.jpg', 'INTRODUCTION TO ENVIRONMENTAL STUDIES AND NATURAL RESOURCES,DEFINITIONS,SCOPE,NEED FOR PUBLIC AWARENESS.pdf', 'Introduction To Environmental Studies And Natural Resources,Definitions,Scope,Need For Public Awareness', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(176, 'default_CaZ45vTe9b.jpg', 'Shorthandnotes(EVS).pdf', 'Short Notes', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(177, 'default_CaZ45vTe9b.jpg', 'Manufacturing Process(HandWritten)-compressed.pdf', 'Manufacturing Process (HandWritten)', 'BME/Elements of Mechanical Engineering', 'ME-125', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(178, 'default_CaZ45vTe9b.jpg', 'Manufacturing Process_watermark-compressed.pdf', 'Manufacturing Process', 'BME/Elements of Mechanical Engineering', 'ME-125', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(179, 'default_CaZ45vTe9b.jpg', 'Thermodynamics_watermark.pdf', 'Thermodynamics', 'BME/Elements of Mechanical Engineering', 'ME-125', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(180, 'default_CaZ45vTe9b.jpg', 'ElementsOfMech_watermark.pdf', 'Element of Mechanical Engineering', 'BME/Elements of Mechanical Engineering', 'ME-125', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(181, 'default_CaZ45vTe9b.jpg', 'WaveOpticsnotes.pdf', 'Waves Optics', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(182, 'default_CaZ45vTe9b.jpg', 'nuclear1.pdf', 'Nuclear Physics Part 1', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(183, 'default_CaZ45vTe9b.jpg', 'nuclear2.pdf', 'Nuclear Physics Part 2', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(184, 'default_CaZ45vTe9b.jpg', 'nuclear3.pdf', 'Nuclear Physics Part 3', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(185, 'default_CaZ45vTe9b.jpg', 'nuclear4.pdf', 'Nuclear Physics Part 4', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(186, 'default_CaZ45vTe9b.jpg', 'STR(updated).pdf', 'Special Theory of Relativity', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT MEGHALAYA', '', '', 'NOTES NAKA', 'MANIT'),
(187, 'default_CaZ45vTe9b.jpg', 'OrdinaryDifferentialEq(2nd).pdf', 'Ordinary Differential Equation (ODE) - 2', 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(188, 'default_CaZ45vTe9b.jpg', 'Complex Variables(2ndNotes).pdf', 'Complex Variables - 2', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(189, 'default_CaZ45vTe9b.jpg', 'Fourier Series.pdf', 'Fourier Series - 2', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(190, 'default_CaZ45vTe9b.jpg', 'UNIT1(What is communication_)_watermark.pdf', 'What is Communication?', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(191, 'default_CaZ45vTe9b.jpg', 'Unit2(CONSTITUENTS OF TECHNICAL WRITTEN COMMUNICATION)_watermark.pdf', 'Constituents of Technical Written Communication', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(192, 'default_CaZ45vTe9b.jpg', 'UNIT3(BUISSNESS COMM.)_watermark.pdf', 'Business Communication', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(193, 'default_CaZ45vTe9b.jpg', 'UNIT4(phonetics)_watermark.pdf', 'Phonetics', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(194, 'default_CaZ45vTe9b.jpg', 'FUELS(updated+numerical)_watermark.pdf', 'Fuels - 2', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(195, 'default_CaZ45vTe9b.jpg', 'water(updated)_watermark.pdf', 'Boilers - Numericals', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(196, 'default_CaZ45vTe9b.jpg', 'COG(updated)_watermark.pdf', 'Centre of Gravity', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(197, 'default_CaZ45vTe9b.jpg', 'EngineeringMechanics(BEST)_watermark.pdf', 'Engineering Mechanics Complete', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(198, 'default_CaZ45vTe9b.jpg', 'MOI(updated)_watermark.pdf', 'Moment of Inertia', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(199, 'default_CaZ45vTe9b.jpg', 'SFD_BMD(updated)_watermark.pdf', 'Sheer Force Diagram & Bending Moment Diagram', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(200, 'default_CaZ45vTe9b.jpg', 'TRUSS(updated)_watermark.pdf', 'Trusses', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(201, 'default_CaZ45vTe9b.jpg', 'Solved Numericals+Questions2 (1)_watermark.pdf', 'Engineering Mechanics + Solved Numericals', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(202, 'default_CaZ45vTe9b.jpg', 'TRANSFORMER+Semiconductor+BJT+DCmachines+BJTamplifier+Specialdiode_watermark.pdf', 'Transformer, Semiconductor, BJT, DC Machine, BJT Amplifier, Special Diode VIVA Question', 'BEEE Lab', 'EE-127', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(203, 'default_CaZ45vTe9b.jpg', 'VERIFICATION OF KCL&KVL_watermark.pdf', 'KVL & KCL VIVA Question', 'BEEE Lab', 'EE-127', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(204, 'default_CaZ45vTe9b.jpg', 'Mathematics 1 VIVA QUESTIONS.pdf', 'VIVA Questions', 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(205, 'default_CaZ45vTe9b.jpg', 'Engineering Mechanics_watermark.pdf', 'VIVA Question', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(206, 'default_CaZ45vTe9b.jpg', 'Engineering graphics_watermark 2.pdf', 'VIVA Questions', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(207, 'default_CaZ45vTe9b.jpg', 'CP_watermark.pdf', 'VIVA Questions', 'CP', 'CSE-114', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(208, 'default_CaZ45vTe9b.jpg', 'statistical.pdf', 'Statistical Physics', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(209, 'default_CaZ45vTe9b.jpg', 'Black Body Radiation.pdf', 'Black Body Radiation (Statistical Physics)', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT');
INSERT INTO `file` (`file_id`, `file_dp`, `file_data`, `file_title`, `file_sub`, `file_sub_code`, `file_branch`, `file_sem`, `file_year`, `file_college`, `file_info_1`, `file_info_2`, `file_contri_name`, `file_contri_college`) VALUES
(210, 'default_CaZ45vTe9b.jpg', 'Crystal Structure.pdf', 'Crystal Structure', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(211, 'default_CaZ45vTe9b.jpg', 'Crystal structure (2).pdf', 'Crystal Structure - 1', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(212, 'default_CaZ45vTe9b.jpg', 'Types of Solid.pdf', 'Crystal Structure - 2', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(213, 'default_CaZ45vTe9b.jpg', 'electromag (1).pdf', 'Electromagnetism - 1', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(214, 'default_CaZ45vTe9b.jpg', 'electromag1 (1).pdf', 'Electromagnetism - 2', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(215, 'default_CaZ45vTe9b.jpg', 'fourier transform_watermark.pdf', 'Fourier Transform', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(216, 'default_CaZ45vTe9b.jpg', 'fourier transform 2_watermark.pdf', 'Fourier Transform - 2', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(217, 'default_CaZ45vTe9b.jpg', 'Z Transform_watermark.pdf', 'Z Transform', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT'),
(218, 'default_CaZ45vTe9b.jpg', 'Z transform 2_watermark.pdf', 'Z Transform - 2', 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'NIT BHOPAL', '', '', 'NOTES NAKA', 'MANIT');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `pay_id` int(15) NOT NULL,
  `pay_amount` int(15) NOT NULL,
  `pay_discount` int(15) NOT NULL DEFAULT 0,
  `pay_discount_name` varchar(255) NOT NULL,
  `pay_duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`pay_id`, `pay_amount`, `pay_discount`, `pay_discount_name`, `pay_duration`) VALUES
(1, 200, 25, 'Early Bird', 3);

-- --------------------------------------------------------

--
-- Table structure for table `qp`
--

CREATE TABLE `qp` (
  `qp_id` int(15) NOT NULL,
  `qp_dp` varchar(255) NOT NULL,
  `qp_data` varchar(255) NOT NULL,
  `qp_title` varchar(255) NOT NULL,
  `qp_sub` varchar(255) NOT NULL,
  `qp_sub_code` varchar(255) NOT NULL,
  `qp_branch` varchar(255) NOT NULL,
  `qp_sem` varchar(255) NOT NULL,
  `qp_year` int(15) NOT NULL,
  `qp_college` varchar(255) NOT NULL,
  `qp_info_1` text NOT NULL,
  `qp_info_2` text NOT NULL,
  `qp_contri_name` varchar(255) NOT NULL,
  `qp_contri_college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qp`
--

INSERT INTO `qp` (`qp_id`, `qp_dp`, `qp_data`, `qp_title`, `qp_sub`, `qp_sub_code`, `qp_branch`, `qp_sem`, `qp_year`, `qp_college`, `qp_info_1`, `qp_info_2`, `qp_contri_name`, `qp_contri_college`) VALUES
(3, 'default_CaZ45vTe9b.jpg', 'ilovepdf_merged_watermark.pdf', 'SEMESTER PAPERS', 'CHEMISTRY', 'CH-122', 'ALL', '1/2', 1, 'ALL', 'The attached PDF consists of Engineering Chemistry previous year Question Papers in well-sorted format', '', 'NOTES NAKA', 'MANIT'),
(4, 'default_CaZ45vTe9b.jpg', '1st and 2nd sem question paper_page-0027-min_watermark.pdf', 'SEMESTER PAPERS', 'PHYSICS', 'PHY-112', 'ALL', '1/2', 1, 'ALL', 'The attached PDF consists of Physics previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(5, 'default_CaZ45vTe9b.jpg', 'BEEE_QP.pdf', 'SEMESTER PAPERS', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', 'The attached PDF consists of BEEE previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(6, 'default_CaZ45vTe9b.jpg', 'COMMUNICATION_QP.pdf', 'SEMESTER PAPERS', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', 'The attached PDF consists of Communication Skills previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(7, 'default_CaZ45vTe9b.jpg', 'ED.pdf', 'SEMESTER PAPERS', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', 'The attached PDF consists of Engineering Graphics previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(8, 'default_CaZ45vTe9b.jpg', 'CP.pdf', 'SEMESTER PAPERS', 'CP', 'CSE-114', 'ALL', '1/2', 1, 'ALL', 'The attached PDF consists of CP previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(9, 'default_CaZ45vTe9b.jpg', 'EVS.pdf', 'SEMESTER PAPERS', 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'ALL', 'The attached PDF consists of Environmental Studies previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(10, 'default_CaZ45vTe9b.jpg', 'solid mech.pdf', 'SEMESTER PAPERS', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'ALL', 'The attached PDF consists of Engineering Mechanics previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(11, 'default_CaZ45vTe9b.jpg', 'Maths.pdf', 'SEMESTER PAPERS', 'Mathematics', 'MTH-111, MTH-121', 'ALL', '1/2', 1, 'ALL', 'The attached PDF consists of Mathematics previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(12, 'download.png', 'UNIX-Quest.pdf', 'SEMESTER PAPERS', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'The attached PDF consists of Unix Internal & Shell Programming previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(13, 'download.png', 'dipques_watermark.pdf', 'SEMESTER PAPERS', ' Digital Image Processing ', 'CSE-393 ', 'CSE', '6', 3, 'ALL', 'The attached PDF consists of Digital Image Processing previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(14, 'download.png', 'Data Ware Houising and Mining quest.pdf', 'SEMESTER PAPERS', ' Data Warehousing And Mining', 'CSE-322 ', 'CSE', '6', 3, 'ALL', 'The attached PDF consists of  DATA WAREHOUSING AND MINING previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(15, 'download.png', 'Comp Network quest.pdf', 'SEMESTER PAPERS', ' Computer Networks', 'CSE-321', 'CSE', '6', 3, 'ALL', 'The attached PDF consists of Computer Networks previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(16, 'download.png', 'AI quest.pdf', 'SEMESTER PAPERS', 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'ALL', 'The attached PDF consists of ARTIFICIAL INTELLIGENCE previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(17, 'download.png', 'ADS quest.pdf', 'SEMESTER PAPERS', 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'ALL', 'The attached PDF consists of Advanced Data Structures previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT'),
(18, 'download.png', 'ITC_Quest.pdf', 'SEMESTER PAPERS	', 'Information Theory and Coding', 'CSE-355', 'CSE', '6', 3, 'ALL', 'The attached PDF consists of Information Theory and Coding previous year Question Papers in well-sorted format.', '', 'NOTES NAKA', 'MANIT');

-- --------------------------------------------------------

--
-- Table structure for table `renew`
--

CREATE TABLE `renew` (
  `renew_id` int(15) NOT NULL,
  `renew_amount` int(15) NOT NULL,
  `renew_discount` int(15) NOT NULL DEFAULT 0,
  `renew_discount_name` varchar(255) NOT NULL,
  `renew_duration` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `renew`
--

INSERT INTO `renew` (`renew_id`, `renew_amount`, `renew_discount`, `renew_discount_name`, `renew_duration`) VALUES
(1, 200, 25, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `sub_id` int(15) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `sub_code` varchar(255) NOT NULL,
  `sub_branch` varchar(255) NOT NULL,
  `sub_sem` varchar(255) NOT NULL,
  `sub_year` int(15) NOT NULL,
  `sub_college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`sub_id`, `sub_title`, `sub_code`, `sub_branch`, `sub_sem`, `sub_year`, `sub_college`) VALUES
(8, 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(9, 'Environmental Studies', 'CH-123', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(10, 'Mathematics-1', 'MTH-111', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(11, 'Mathematics-2', 'MTH-121', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(12, 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(13, 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(14, 'CP', 'CSE-114', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(15, 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(16, 'Physics Lab', 'PHY-117', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(17, 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(18, 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(19, 'Workshop', 'ME-126', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(20, 'BEEE Lab', 'EE-127', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(21, 'Chemistry Lab', 'CH-128', 'ALL', '1/2', 1, 'NIT BHOPAL'),
(22, 'Advanced Data Structures', 'CSE-342', 'CSE', '6', 3, 'NIT BHOPAL'),
(23, 'Artificial Intelligence', 'CSE-323', 'CSE', '6', 3, 'NIT BHOPAL'),
(24, 'Computer Networks', 'CSE-321', 'CSE', '6', 3, 'NIT BHOPAL'),
(25, 'Data Warehousing And Mining', 'CSE-322', 'CSE', '6', 3, 'NIT BHOPAL'),
(26, 'Digital Image Processing', 'CSE-393', 'CSE', '6', 3, 'NIT BHOPAL'),
(27, 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'NIT BHOPAL'),
(28, 'Information Theory and Coding', 'CSE-355', 'CSE', '6', 3, 'NIT BHOPAL'),
(29, 'BME/Elements of Mechanical Engineering', 'ME-125', 'ALL', '1/2', 1, 'NIT BHOPAL');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `data_id` int(31) NOT NULL,
  `data_code` varchar(255) NOT NULL COMMENT 'user_code',
  `data_history` varchar(255) NOT NULL COMMENT 'file_data',
  `data_type` varchar(255) NOT NULL COMMENT 'blog/file/qp/video',
  `data_fav` int(15) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`data_id`, `data_code`, `data_history`, `data_type`, `data_fav`) VALUES
(85, 'cae5b992d3ca0eae623e7790c7e2a6_user', 'FUELS.pdf', 'Notes', 1),
(87, '3750fc3dc0eff81403b9b603af3883_user', 'Cement.pdf', 'Notes', 1),
(88, '7278268cb28f99d0a1e5b85ee69fb3_user', '1st and 2nd sem question paper_page-0027-min_watermark.pdf', 'QP', 1),
(89, 'd4762421993506e80fee8dab63c8f5_user', 'Cement.pdf', 'Notes', 1),
(90, 'd4762421993506e80fee8dab63c8f5_user', 'https://drive.google.com/file/d/1uxLARcM-VDtC8G_UZn39kbL9_36jaQ9a/view?usp=sharing', 'Video', 1),
(91, 'd4762421993506e80fee8dab63c8f5_user', 'https://drive.google.com/file/d/1uxLARcM-VDtC8G_UZn39kbL9_36jaQ9a/view?usp=sharing', 'Video', 1),
(93, 'd4762421993506e80fee8dab63c8f5_user', 'https://drive.google.com/file/d/1uxLARcM-VDtC8G_UZn39kbL9_36jaQ9a/view?usp=sharing', 'Video', 1),
(94, '01bfe355008016f54bc88016fd2085_user', 'Cement.pdf', 'Notes', 1),
(96, '01bfe355008016f54bc88016fd2085_user', 'Cement.pdf', 'Notes', 1),
(98, 'f053607f7d9d02224e4385700c7707_user', 'PDE.pdf', 'Notes', 1),
(99, '6f05e5a061035aea7297b5a263c68b_user', 'https://drive.google.com/file/d/1Smdpma-klqWAU72bb8vgkBNbctFWMyHx/view?usp=sharing', 'Video', 1),
(104, 'd4762421993506e80fee8dab63c8f5_user', 'COMMUNICATION_QP.pdf', 'QP', 1),
(108, 'd90b6d4241feedccfbea4698d0b646_user', 'curve tracing.pdf', 'Notes', 1),
(109, 'd90b6d4241feedccfbea4698d0b646_user', 'ODE.pdf', 'Notes', 1),
(110, 'fd7f5f30e4247985ffdd02bad37789_user', 'Maths.pdf', 'QP', 1),
(111, 'fd7f5f30e4247985ffdd02bad37789_user', 'ilovepdf_merged_watermark.pdf', 'QP', 1),
(112, 'fd7f5f30e4247985ffdd02bad37789_user', '1st and 2nd sem question paper_page-0027-min_watermark.pdf', 'QP', 1),
(113, 'd4762421993506e80fee8dab63c8f5_user', 'electrical lab experiments.pdf', 'Notes', 1),
(114, '1b28530c185c1b5284df39d6d485ac_user', 'WATER.pdf', 'Notes', 1),
(115, '1b28530c185c1b5284df39d6d485ac_user', 'HYDROSPHERE AND WATER POLLUTION 2.pdf', 'Notes', 1),
(116, '95fa22f82681f70e051914ebbb8b7a_user', 'WATER.pdf', 'Notes', 1),
(117, '95fa22f82681f70e051914ebbb8b7a_user', 'HYDROSPHERE AND WATER POLLUTION 2.pdf', 'Notes', 1),
(118, 'fd7f5f30e4247985ffdd02bad37789_user', 'TRANSIENT, 1 PHASE AC.pdf', 'Notes', 1),
(120, '95fa22f82681f70e051914ebbb8b7a_user', 'electrical lab experiments.pdf', 'Notes', 1),
(122, '1b28530c185c1b5284df39d6d485ac_user', 'ODE.pdf', 'Notes', 1),
(123, '1b28530c185c1b5284df39d6d485ac_user', '4. Centroid and moment of inertia.pdf', 'Notes', 1),
(126, '26c993321b7312a0eb2a0c84986dae_user', 'MECHANIAL WORKSHOP.pdf', 'Notes', 1),
(127, '5e30efe479dad1e2bce7e8e02ca7ba_user', 'engg chem lab.pdf', 'Notes', 1),
(128, '5e30efe479dad1e2bce7e8e02ca7ba_user', 'engg chem lab.pdf', 'Notes', 1),
(129, '5e30efe479dad1e2bce7e8e02ca7ba_user', 'engg chem lab.pdf', 'Notes', 1),
(130, '3f58377d268e0891dd7d33356b5ae3_user', '4. Morphological Image processing -2.pdf', 'Notes', 1),
(131, '3f58377d268e0891dd7d33356b5ae3_user', '1.Introduction.pdf', 'Notes', 1),
(132, '3f58377d268e0891dd7d33356b5ae3_user', '1.Introduction.pdf', 'Notes', 1),
(133, '02448ab35d7752c98f986a8c221459_user', 'PDE.pdf', 'Notes', 1),
(134, '02448ab35d7752c98f986a8c221459_user', 'PDE.pdf', 'Notes', 1),
(136, 'd8840fd67457aca1e7042f994ec5c9_user', 'EngineeringMechanics(BEST)_watermark.pdf', 'Notes', 1),
(138, '27da4cc86dfc6b45c1767c0081fe25_user', 'Physics.pdf', 'Notes', 1),
(139, '63789917fb4c129641470fd8c4b125_user', 'https://drive.google.com/file/d/1sw7k4NNAEqdVxjBEqOeTV6DexB3g8pu9/view?usp=sharing', 'Video', 1),
(140, 'f053607f7d9d02224e4385700c7707_user', 'PROGRAMMING C.pdf', 'Notes', 1),
(141, '02448ab35d7752c98f986a8c221459_user', 'UNIT_2OralCommunicationfinal(pakka).pdf', 'Notes', 1),
(142, '02448ab35d7752c98f986a8c221459_user', 'UNIT_2OralCommunicationfinal(pakka).pdf', 'Notes', 1),
(143, 'b37cfe95c7c136284fa50a861c4aa9_user', 'CHEMISTRY LAB_watermark.pdf', 'Notes', 1),
(144, '02448ab35d7752c98f986a8c221459_user', 'CP_watermark.pdf', 'Notes', 1),
(145, '02448ab35d7752c98f986a8c221459_user', 'CP_watermark.pdf', 'Notes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(15) NOT NULL,
  `user_code` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_branch` varchar(255) NOT NULL,
  `user_sem` varchar(255) NOT NULL,
  `user_year` int(15) NOT NULL,
  `user_college` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_expire` varchar(255) NOT NULL,
  `user_expire_month` varchar(255) NOT NULL,
  `user_restrict` int(15) NOT NULL DEFAULT 0,
  `user_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_id`, `user_code`, `user_email`, `user_password`, `user_name`, `user_branch`, `user_sem`, `user_year`, `user_college`, `user_image`, `user_expire`, `user_expire_month`, `user_restrict`, `user_ip`) VALUES
(9, '4f8d2ad879b62d1c68614fa5695693_user', 'harshutkarshmishra1998@gmail.com', '$2y$12$X.lxlReNBMNogfkHY7WYdeUVBZfzFq8Gfk6P4eHug5KUPbIa0WJWS', 'Utkarsh Mishra', 'MME', '1/2', 1, 'MANIT', 'pexels-jackson-david-3147528.jpg', '01-04-2022', 'APRIL', 0, '2405:201:600e:bb2e:ad50:d49f:c5a7:94fb'),
(54, '4e1668ca74d73fd4c34ee2d81121b7_user', 'maheshsah802201@gmail.com', '$2y$12$4a9TCd0m8IAjP0VQ5LHT1uqohGf9DcXpr813bwFlnl150K2XzEHw2', 'P.k', 'CSE', '4', 2, 'Manit', 'default_DVcG2eAw3E.jpg', '15-01-2022', 'JANUARY', 1, '2405:201:600e:b840:8860:dd96:b0e6:eac9'),
(56, '007337be33cb356483a963c0475a1d_user', 'ar2689954@gmail.com', '$2y$12$k8I.fHsI4owDsWHj9S9PAOdtzkBwNsYz2sUg061FfG3KS49JaKmW6', 'Raju', 'ALL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '30-01-2021', 'JAN', 0, '2402:8100:3a2d:56da:d10:8d92:ee79:7524'),
(57, '9684e9e21e5b535b018c28461ad6ec_user', 'snghaadi03@gmail.com', '$2y$12$wJMRpR0QdALTHJrwzd/QJuFS6vpamiCAmhlRSQib01G56d/NdpI3S', 'Aaditya Singh', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '30-01-2021', 'JAN', 0, '2407:5200:300:442:79ad:cd8c:f7a5:4558'),
(58, '7278268cb28f99d0a1e5b85ee69fb3_user', 'sonal@gmail.com', '$2y$12$uTloSMNoSVXof14ghNphi.NdIdmCh9k9rHEGeAUnikiiMqOvlxpEq', 'Sonal', 'EE', '1/2', 0, 'MANIT', 'default_DVcG2eAw3E.jpg', '30-01-2021', 'JAN', 0, '112.133.246.32'),
(65, '3750fc3dc0eff81403b9b603af3883_user', 'notesnaka@gmail.com', '$2y$12$Req5bamL1.nPnl3mT4UCA.kzoFRPYInmNyGrvUUdkjnrrcgacRiW2', 'Notes Naka', 'CSE', '1/2', 1, 'MANIT', 'Book_Icon_-_NN-removebg-preview.png', '18-07-2021', 'JULY', 0, '2405:201:600e:b840:3cff:e60e:762d:95f2'),
(67, 'd4762421993506e80fee8dab63c8f5_user', 'harshutkarshmishra.um@gmail.com', '$2y$12$VsUDbK3OxzigggKi.U6zuOI5jm5axbWgIJzij1MqYCY6Dmgaes8De', 'Utkarsh Mishra', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '19-07-2022', 'JULY', 0, '49.36.213.182'),
(68, '6dd1afd7f570385a340fea449d6bc4_user', 'suruchikus@gmail.com', '$2y$12$l5j/Q7cMbh6w6Y0DSsbGguxROXnTjmhv66ehgmnvDJUOQaPjlBFIe', 'Suruchi Kushwaha', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '19-07-2021', 'JULY', 0, '183.83.215.13'),
(69, 'a87f1e2934cdc6aa655353d5e47206_user', 'navyasree@gmail.com', '$2y$12$xUlfJiRZw66IqIFS5ey5mOM5A8dVOzYsYQbY1suhINj0W6eKT3AsC', 'Navyasree', 'ALL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JAN', 1, '117.251.231.200'),
(70, '727afc8db936ad69a6b1768cc68403_user', 'veena@gmail.com', '$2y$12$RrLFErcxGnl1CrY2kZEG2eDDe61LfHe1ye3heV7TuzTTX2mvgYWWi', 'Veena', 'ALL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JAN', 1, '115.98.187.104'),
(71, '726488e05b155413e6f11c4aa227e5_user', 'nishant@gmail.com', '$2y$12$SuaFm7YFZEbRTxU31nhs8eSw75fNFB/OV4LJ6YeVW.//kPyhbFrLa', 'Nishant', 'ALL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JAN', 1, '2402:8100:2395:346d:b449:965f:5170:d3db'),
(72, 'dbb3e22b4fa6675f2efeb31acd202a_user', 'suraj@gmail.com', '$2y$12$yEVUOcvUDMHNG3cZwJ3emeCnVjISqdmDjwLUDyEiYpsbZVKjx56FK', 'Suraj', 'ALL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JAN', 1, '2409:4043:2d14:802c:2977:25f6:727f:f654'),
(74, 'ed4df6dd30b75cf718ea6bb7793bf0_user', 'nishant@gmail.com', '$2y$12$0mw14PXrlha0okjemWqYiOtkFi2MgQxwNpcC3Cj6En4f1tBLr7bBK', 'Nishant', 'ALL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JAN', 1, '2402:8100:239d:6a7e:9925:9c3d:2f97:ee'),
(75, '26c993321b7312a0eb2a0c84986dae_user', 'iamqaisar117@gmail.com', '$2y$12$07GCpEY0FRX/qdNJamsYmO1PSphXJBqepTqS6HKx2hamof8v6Rdx2', 'SHAHNAWAZ QAISAR', 'ME', '1/2', 1, 'NIT Bhopal', 'default_DVcG2eAw3E.jpg', '11-11-2021', 'NOVEMBER', 0, '2401:4900:3c7d:9b45:d023:5fb7:7748:11dd'),
(76, '64567b38712981b6413681de0b03bd_user', 'patankarpawan15@gmail.com', '$2y$12$LLOmZlmeubZCC3RgoaILUemEvdGkG/O33XmQHg0ky7o7lveMMyg0S', 'Pawan', 'ME', '1/2', 1, 'MaANIT BHOPAL', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(77, '2ee8ca88bb1b4dca5674d93d30e1f1_user', 'sid@gmail.com', '$2y$12$FyrKJ1MkIhiSrgPsELdK3u68mE0aImIDeolkQJMJ/KUoBA8/YUchy', 'Sidhanth', 'ALL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JAN', 1, '103.14.197.18'),
(78, '87572516e17c5c0bf98b0d1ef6ff2b_user', 'kirantiwarikt098@gmail.com', '$2y$12$C1t53sjz2c2oaEiE2/u7ReHe6Tg.tNv/IhYEdkTjpLXrlt01B29PK', 'Kiran Tiwari', 'EE', '1/2', 1, 'Manit', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(79, 'a02cb785e297d777b437749810ee14_user', 'ak1002565@gmail.com', '$2y$12$LyvSl5SUBu8mhoCtPMaLXuAVbAK7lePa9r7jtt2nzSPkoJf1jAJm6', 'ADARSH KUMAR', 'CSE', '1/2', 1, 'MANIT, BHOPAL', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(80, '5c9bc926b4c1dec66feae91ce0e42e_user', 'agrawalarpit115@gmail.com', '$2y$12$NgFAhUQc0vAcC8EeCnfk4.lxsFDN5.CqegRIr7zpDvW1xu.FT6S7G', 'Arpit', 'ME', '1/2', 1, 'Manit', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(81, 'fe877372517ba234ab42e3121388da_user', 'khiyanigourav2001@gmail.com', '$2y$12$mbdqS7eEJn6IPPymtIVqg.K0Ty8.UGpqAAn3Gpqx7cXtK/huA4r.6', 'Gourav khiyani', 'EE', '1/2', 1, 'Manit bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(82, 'b893c7a2b0aa1fdad8b8a987d81f7f_user', 'hemant.thota@gmail.com', '$2y$12$LrmdTUEtylqZPLIKwbLu9.jQCmslWXIEZdjwVkslZlhHLUdomqESm', 'Hemanth Thota', 'CSE', '1/2', 1, 'MANIT BHOPAL', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(83, '2cc889a463450b7818b11a71636f00_user', 'samsamgupta1976@gmail.com', '$2y$12$KF.NVA2BpwO.XP.z6c.Jge91K7q8MgCbwSd6yh7kn5WFXA6L8L7vO', 'Samarth Gupta', 'CSE', '1/2', 1, 'ABES EC', 'default_DVcG2eAw3E.jpg', '14-11-2021', 'NOVEMBER', 0, '2405:201:6006:d119:81d9:9fb4:f650:9f3e'),
(84, '0224ded3b22f8ff1d1197cfa4fad75_user', 'nalinverma0905@gmail.com', '$2y$12$zSwuRAx4Yhahk4/k2Lh/t.Y7JkxF67CHxrUHPvdfMyFCkbnmHiSuO', 'Nalin Verma', 'CHEM', '1/2', 1, 'MANIT-Bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(85, 'ef4b8a42ec3d034699dd9331b1b70e_user', 'singhvidhi45@gmail.com', '$2y$12$pGmTm9bDYQB5k/Z3FtroB.HQHF3GVURESz2grKXcORVqH.Z5U7xGi', 'Vidhi Singh', 'ME', '1/2', 1, 'Manit Bhopal ', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(86, '80a5206c68c152022f38dcbaabfaec_user', 'namansingh22901@gmail.com', '$2y$12$Y21.TjEf2BDbH8vnn07WoOq2wU7a3ih4xCKypM0kuRB4J6aBS6KPK', 'Aman Singh Phogat', 'MME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(87, '0224ded3b22f8ff1d1197cfa4fad75_user', 'nalinverma0905@gmail.com', '$2y$12$S2Wi8rjq.O4YkLW0nSla.e5p1YpfFzmgundjvSSFOVbNmLugegTI2', 'Nalin Verma', 'CHEM', '1/2', 1, 'MANIT-Bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(88, '5e10e9210243b741dbe5ccbf006df8_user', 'anandptnl08@gmail.com', '$2y$12$X9OBpnaHE0KpVkzS8X.2SOLAfr17icoI5ftrKwxYWE1G1PRX5fLbG', 'Abhinav kumar', 'CIVIL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(89, 'f909bccad8d3148a731e5eafcab9ee_user', 'shanmukh.34@gmail.com', '$2y$12$0GEBI7ANEpuO6G0ZDKsOA.oqV9r0Y4/i7DlN54qy/yBb9To.k44gS', 'POLADI SHANMUKH', 'CSE', '6', 3, 'manit', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(90, '3d8e3092a2f5b5d2c317aa43e0209d_user', 'anilsuthar2636205@gmail.com', '$2y$12$uzLO/77oTMM6IL3ZO8faqulGTtUEGPgEvRh7BKzzxLa1WczMAIcci', 'Anil suthar', 'EE', '1/2', 1, 'MANIT Bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(91, '06745e99b67637f06fed6e0d249d80_user', 'karnikabari01@gmail.com', '$2y$12$G5Y.qAfLCh7HHLVQihv4h.RyzrpW20hYChM6IiiAL17Q6VCGQ/ibq', 'Karnika Bari', 'MME', '1/2', 1, 'Maulana Azad National Institute of Technology', 'default_DVcG2eAw3E.jpg', '12-08-2021', 'AUGUST', 0, '2405:201:3012:e889:fdcf:396e:e2f3:cfb'),
(92, 'e547f3850ac97eb70f8988e1e3a4ba_user', 'yadavsachin20april@gmail.com', '$2y$12$b34EatJUCUGHa0gogs85s.8BltE8acR6URLuT1HyQKZWtkDODzoJK', 'Sachin Yadav ', 'EE', '1/2', 1, 'Maolana Azad National Institute of Technology ', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(93, '0224ded3b22f8ff1d1197cfa4fad75_user', 'nalinverma0905@gmail.com', '$2y$12$C98sG2QPKeSj6ac5KWofrexrd0iOotcuCTYI/FNetT7s2R7Jxj.QG', 'Nalin Verma', 'CHEM', '1/2', 1, 'MANIT-Bhopal', 'default_DVcG2eAw3E.jpg', '20-04-2021', 'APRIL', 0, '106.214.228.141'),
(94, '6f05e5a061035aea7297b5a263c68b_user', 'maheepathiveena1003@gmail.com', '$2y$12$.q0vHliX5XngmfJYg/HfbuWx7XMqSGotXkCaQmxttIZDFBiRaAP/a', 'Maheepathi Veena Rao', 'EE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(95, '6f05e5a061035aea7297b5a263c68b_user', 'maheepathiveena1003@gmail.com', '$2y$12$l4hBAyBA0ROQkFhVsfwYJOtl72QPticr/a0/KkLqSFOE6SQVBbzli', 'Maheepathi Veena Rao', 'EE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '20-04-2021', 'APRIL', 0, '115.98.63.87'),
(96, 'f053607f7d9d02224e4385700c7707_user', 'sanskarshukla1411@gmail.com', '$2y$12$n9e3UW08TELejmCWJumlXu8CfPyXa9c6uqp8e3fYIlyXgTQdfQA3m', 'Sanskar Shukla', 'CSE', '1/2', 1, 'Manit', 'default_DVcG2eAw3E.jpg', '20-04-2021', 'APRIL', 0, ''),
(97, '2a0c5e6e538381baac38aedfe940c2_user', 'skdav.crpf1@gmail.com', '$2y$12$OnP0h7GLuvyhIadgGKX0o.Rjj.3y.1xCLOls3X6D6UfSfCqhYRs0O', 'Supriya Kumari', 'EE', '1/2', 1, 'Manit Bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(98, '7f4cef5e75781dc84314aef8a82aae_user', 'prernashankpal18@gmail.com', '$2y$12$ofGpKeF1p0T47Vp/4aV6veQt3lx1LhaWlq20yq1sSERSSUWGausD6', 'Prerna shankhpal ', 'CSE', '1/2', 1, 'Maulana azad national institute of technology ', 'img1588148678370.png', '20-07-2021', 'JULY', 0, '2409:4043:2d92:77d0::d889:1b10'),
(99, 'bf87429d8ae6fac853025a4c4383a5_user', 'maheshmmc2004@gmail.com', '$2y$12$Q9I9iM9H58ih77jjfIFpmOior8M/WRXGIxtgYMaiDitIoBm49H.Mm', 'Mahesh', 'MME', '1/2', 1, 'Mavlana azad national institute of technology Bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(100, 'bf87429d8ae6fac853025a4c4383a5_user', 'maheshmmc2004@gmail.com', '$2y$12$pOEesMUbPEwlY/m4sXuKkuYi/VU3vob8jMekv3hewP1krb8jmn.Xu', 'Mahesh', 'MME', '1/2', 1, 'Mavlana azad national institute of technology Bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(101, 'a625c3f662e1c77c7656d981e2def2_user', 'rairajeev51@gmail.com', '$2y$12$bRErHssuvRtzgeBDD4iUKeajGgquPESc032u0f.Mh4zk53rJRA95K', 'Rajeev Rai', 'ME', '1/2', 1, 'Maulana Azad National Institute Of Technology Bhopal', 'default_DVcG2eAw3E.jpg', '24-04-2021', 'APRIL', 0, '2401:4900:216f:feab:2:2:3106:902e'),
(102, 'f55ee5718761ec221443bca8e6035f_user', 'nupurprajapati29@gmail.com', '$2y$12$.4UDi1OCKhvnluE4JXfedOD0vgRSmm/wDCLySBtr1DnrSnvCyUQZy', 'Nupur Prajapati ', 'EE', '1/2', 1, 'Manit bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(103, '4f534cc87617f977f1b8cc1dd24007_user', 'sonysneha2001@gmail.com', '$2y$12$mXzNH9JuatixefNeAhbnQu2vyJCH.kQ.3BlG8Qr3LGDE1No8H1yHW', 'Sneha Sony', 'MME', '1/2', 1, 'Maulana Azad National Institute Of Technology', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(104, '4285161525cb14c7d5aa5539352b30_user', 'ssdavian@gmail.com', '$2y$12$ZrcXqe/QS7GnH77LFdRYge5gk8JpxREASmDLF4oY5A6k2WPqyssQi', 'Shiv Shankar', 'CIVIL', '1/2', 1, 'MANIT BHOPAL', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(105, '5cadc1ae3e24dad4cd46985aa66177_user', 'rishiben18@gmail.com', '$2y$12$jGjkEhzX5De4maKDMGZQQ.6UfF2jm379JWBCeI1JMPzBggL0Ij95u', 'Rishi ben', 'CSE', '1/2', 1, 'Maulana azad national institute of technology bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(106, '90ec1434d43f8ef9b3e3ab387756f6_user', 'sauravujwal@gmail.com', '$2y$12$DhEJGDDVTIqvfVPsnhJgzOImxKHXnCizaOVmKlszWzWAm9QbRnpY2', 'Ujwal Saurav', 'CSE', '4', 2, 'MANIT', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(107, 'be4228c51e0fd1b8643ec7a25a313f_user', 'akshatcharan18@gmail.com', '$2y$12$vuTTG1UOVFHlqwn8OKSrXe7n0Mqt4VjPc1inin1UFfemv1uBr9fhq', 'Akshat Charan', 'CIVIL', '1/2', 1, 'manit bhopal', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(108, '4fa5659215c42b3f0e9de9be68fc0a_user', 'abhishek.jajoo009@gmail.com', '$2y$12$hYexcd.7ZAH/1u0/2G3baO9v8AbavuekEsJcY6N7i9Hi.pGeM3SEK', 'Abhishek Jajoo', 'CSE', '3', 2, 'MANIT', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(109, 'c4d2022c7cf3c11f1ca2f460e80525_user', 'vishnushankar6889@gmail.com', '$2y$12$WqFLAiePY.0PNvcAGzHGJO6rh5MgYTlq1YC8pImcx8aO5hw872wPa', 'Vishnu Shankar', 'CSE', '1/2', 1, 'MAULANA AZAD NATIONAL INSTITUTE OF TECHNOLOGY BHOPAL', 'default_DVcG2eAw3E.jpg', '20-01-2021', 'JANUARY', 0, ''),
(110, '2e3a3b82566dd5051e9a3b144d9092_user', 'bhaskarraj252003@gmail.com', '$2y$12$oXdyDVsVKQZX8DSjvcf7HOLbB4zrmHecW5uqQ4P9UoOrFv4czdQem', 'Bhaskar Raj', 'EE', '1/2', 1, 'Manit BHOPAL', 'default_DVcG2eAw3E.jpg', '20-07-2021', 'JULY', 0, '2405:205:118d:2e9d:864c:e7fe:dd9a:56d5'),
(111, '58ddb65805cfbf84fbd33ecd54f4d3_user', 'mdev2399@gmail.com', '$2y$12$QdxhDB9/VLhVJgaXx5eeyuz809mkhCF0RW1i82BL3kDWa6huqCZhW', 'Devesh mishra ', 'ME', '1/2', 1, 'Manit ', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JANUARY', 0, ''),
(112, 'ed5116211dd76fe1d55311ac176c5b_user', 'amansaini50016@gmail.com', '$2y$12$XK1PJkLX2xCXMzl4/7tSY.GmioPtC.VULRA0/4H6Q0AjYuVgAcY2C', 'Aman Saini', 'ME', '1/2', 1, 'Maulana Azad national institute of technology (MANIT)', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JANUARY', 0, ''),
(113, 'f18eee3d30ae12d4571bf6210f9fea_user', 'darlaglory27@gmail.com', '$2y$12$Foi7P8KshnvlksyaDkxk5OZKNQpT83RxJAPxiK7wRQISSpxRvffZi', 'Lalitha', 'ME', '1/2', 1, 'Maulana Azad National Institute Of Technology', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JANUARY', 0, ''),
(114, '27da4cc86dfc6b45c1767c0081fe25_user', 'kartikgehlot123@gmail.com', '$2y$12$AyykV/7CBOvJSW3A0SSifu1YAcQYcJtS9C29Wuc2oZ4fpVuyZaXQ6', 'Golu Gehlot', 'MME', '1/2', 1, 'Maulana Azad National Institute of technology ', 'default_DVcG2eAw3E.jpg', '21-04-2021', 'APRIL', 0, '2402:8100:3872:a011:1:1:a632:627d'),
(115, '101a7a48bdc058443dd58796af5b22_user', 'ahdt1703@gmail.com', '$2y$12$Vp9hhmaYE2eDrdtIx5KiTOOywcJdtJMcLkiYyKsK9B0Yh8B/UEhOu', 'Ayush 3', 'ME', '4', 2, 'MANIT', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JANUARY', 0, ''),
(116, '95fa22f82681f70e051914ebbb8b7a_user', 'sanidhyadebate@gmail.com', '$2y$12$/sdeMQdGi8T3syfT93Z/5uMCgIYPLMpYAhHbzHcM6F8lao2m4cVFq', 'Sanidhya', 'CHEM', '1/2', 1, 'NIT BHOPAL', 'default_DVcG2eAw3E.jpg', '21-07-2021', 'JULY', 0, '2401:4900:51da:9cc0:78b1:a4e6:d79e:fd3d'),
(117, 'f4cb473ba2e2e3d18fe6e49340603d_user', 'ayushat0401@gmail.com', '$2y$12$oNl8hvfQ2umlZpdXcdwGUOzVJXke3W6GhgUUR7ocSeLDPrcu6Vijq', 'Ayush (Ram) Tiwari', 'ECE', '1/2', 1, 'MANIT Bhopal', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JANUARY', 0, ''),
(118, '5e30efe479dad1e2bce7e8e02ca7ba_user', 'suryanshirathore2018@gmail.com', '$2y$12$6aavjrwS0PN14yXo1ZmxGO/qRszhoGGMEK9Wtgqmw8dqTxMWVjB1.', 'Suryanshi Rathore', 'MME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '21-07-2021', 'JULY', 0, '2402:8100:2351:247d:195e:50e3:9567:8150'),
(119, 'fb1e428cae497ba259f37a1a238fbe_user', 'yadavharsh501@gmail.com', '$2y$12$qlWnQ.6rmnSWSK3VqXFTpe2lAjXuqGeuR1E3gEYgHG.Us5xahvmdO', 'Harsh Yadav ', 'EE', '3', 1, 'MANIT BHOPAL', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JANUARY', 0, ''),
(121, '0bed574fe1cb1825f851195cbf02b6_user', 'anandpatel39603@gmail.com', '$2y$12$SYQ6UJYx8.Ir2bNhOO93C.DFxDV16dDKcsKqh2ORUDc62m7KK7/Ym', 'Anand patel', 'ECE', '1/2', 2, 'Maulana Azad national institute of technology bhopal', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JANUARY', 0, ''),
(122, '4d5713b97cdff4064948cf48b5d22b_user', 'nida13nk@gmail.com', '$2y$12$S2hcbdV6nrOCxfFnIgsgKu0Re87w9gUhEPo/42LUpl.cvyVQ3HSei', 'Nida Khan', 'CSE', '1/2', 1, 'Maulana Azad National Institute of Technology', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JANUARY', 0, ''),
(123, 'bbe24bd31a2585f9eb1ccabc6fb49b_user', 'vartikakoli107@gmail.com', '$2y$12$PWrInnzuJe1qkVB.umRIOudb5jKLFnBWpiPdVrv5mKihzoX6U7VsG', 'Vartika koli', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '23-04-2021', 'APRIL', 0, '2401:4900:1b23:bd1:6076:3c8c:657:3fec'),
(124, '70b7770772a3942c218027e305815f_user', 'singhvidhi436@gmail.com', '$2y$12$1qXchYP9kiAbwJ4QMaSdKOBvhH3q9m6UwpcDqdxlGBPu/AK08Y4R2', 'Vidhi Singh', 'ME', '1/2', 1, 'Manit Bhopal ', 'default_DVcG2eAw3E.jpg', '21-01-2021', 'JANUARY', 0, ''),
(125, '70b7770772a3942c218027e305815f_user', 'singhvidhi436@gmail.com', '$2y$12$RJE//PmC1IXn46xjYPNWQeHyMlGtCMNU8/QXTq0r634ts/Gl1qw4q', 'Vidhi Singh', 'ME', '1/2', 1, 'Manit Bhopal ', 'default_DVcG2eAw3E.jpg', '07-08-2021', 'AUGUST', 0, '171.60.171.186'),
(126, '8768de30e760007651630b1fc65746_user', 'bhavyabunny03@gmail.com', '$2y$12$cUNzN3ChfXu9Ol8ezioPwe3wPjYTPtCDVDwXboTjLo5KjXukzY3iK', 'Bhavya Sree', 'CSE', '1/2', 1, 'Maulana Azad National Institute of Technology', 'default_DVcG2eAw3E.jpg', '21-04-2021', 'APRIL', 0, '103.242.238.14'),
(127, '5e7b9550018f81e29a1508516cff12_user', 'mujumdarishan@gmail.com', '$2y$12$6/4rfDe8hfrwX1V2vsL7L.Makc6XItNBh0ZMapEq977EHDJ9ctr2O', 'Ishan Mujumdar', 'CSE', '1/2', 1, 'MANIT Bhopal', 'default_DVcG2eAw3E.jpg', '25-04-2021', 'APRIL', 0, '223.236.60.98'),
(128, '4be91bc1a53059a01265f678adc5ac_user', 'ashwaniksingh111@gmail.com', '$2y$12$XWyHHDDLlSUgTay8iBgTEukENv2PQDRx4FlFe9oIzaodJhtllcu4m', 'Ashwani kumar singh', 'CSE', '1/2', 1, 'Maulana Azad national Institute of technology', 'default_DVcG2eAw3E.jpg', '21-04-2021', 'APRIL', 0, '2409:4043:2d90:2a22::ddc8:b00e'),
(129, 'd3ddb320e228ab437e851cb1e42d7a_user', 'hakunamatata2938@gmail.com', '$2y$12$2R.mJkHzkI/3splztdGRPOgkif5iYbYh.lFjLF.TM3D.acL8pBW56', 'Hakuna', 'CSE', '1/2', 1, 'Maulana azad National Institute of technology', 'default_DVcG2eAw3E.jpg', '22-01-2021', 'JANUARY', 0, ''),
(130, '7e6348b39fb69ecbdff107cd998dcd_user', 'suyashbadole2912@gmail.com', '$2y$12$1Y96UAzFvHXRUGaynZYfKekzNJEKM0Bj.cxBFOO41WTlgVQUllVdm', 'Suyash Badole', 'CHEM', '1/2', 1, 'MANIT bhopal', 'default_DVcG2eAw3E.jpg', '22-04-2021', 'APRIL', 0, '103.253.150.51'),
(131, 'c0c5a76d633114433e0e301f0e5d6d_user', 'spark777labs@gmail.com', '$2y$12$izGMJ.q76gKge5tXlD2jn.2w1LSjHLHxgS.CGiikMrM/f0puBZJeu', 'Aviral Srivastava', 'MME', '1/2', 1, 'NIT BHOPAL', 'default_DVcG2eAw3E.jpg', '22-01-2021', 'JANUARY', 0, ''),
(132, 'aadcd6e4e5b410f76e4d26ae0a74aa_user', 'dipendramehra2002@outlook.com', '$2y$12$e8T.LqRAp7dcAZ0P4.1JLeahuzlt3s4gYmoTP.VoGyVYYUz8264PK', 'Dipendra mehra', 'ME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '22-01-2021', 'JANUARY', 0, ''),
(133, 'ca53511cbcc19f1bb913d9fe16dd5e_user', 'tanishqgoyal703@gmail.com', '$2y$12$Tg7RdkAlj2RLR4o4hOkDbuaHFlFc7AtIJ7EqEYKAxkAl0D/P3UD9u', 'Tanishq Goyal', 'ME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '22-04-2021', 'APRIL', 0, '103.149.21.24'),
(134, '4556d936be000a61642e2678e26c95_user', 'aviral852111@gmail.com', '$2y$12$PvTQF8JF3DCW0oDooa.lhuLVkSVbPJs5OFCA4nOCgBEjoaf.fnLJ.', 'Aviral Srivastava', 'MME', '1/2', 1, 'NIT BHOPAL', 'default_DVcG2eAw3E.jpg', '22-07-2021', 'JULY', 0, '2401:4900:b09:936c:1623:8ba7:a840:7800'),
(135, 'c1bdb017860a23808e1abe933f6be4_user', 'mggupta87988@gmail.com', '$2y$12$jGEgJNYDFH91fIlYgzl2t.78MxwcrOfYLxW.wOIvhDu10/13gx3v.', 'Mayank Gupta', 'EE', '1/2', 1, 'Maulana Azad National Institute of technology', 'default_DVcG2eAw3E.jpg', '23-01-2021', 'JANUARY', 0, ''),
(136, '0c93e7079eb82c6dff78e3491f6611_user', 'suyash13.sm@gmail.com', '$2y$12$wFPlG0sg7773tUBLQFldwu.flWpyzYSsrPHskpYfrFosroUIBcuHG', 'Suyash Mishra', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '23-01-2021', 'JANUARY', 0, ''),
(137, '4cf3e6d64411010766d9ec6941962c_user', 'tusharjhod000@gmail.com', '$2y$12$YHO1Z4JyuDg0U5WTVpi39ODWisbyrOQY7bpHYRpyMeiVfasXleonm', 'Tuahar jhod', 'ME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '23-01-2021', 'JANUARY', 0, ''),
(138, '45bc1830b870c2d9a0455a4e7f1bcd_user', 'akhileshgupta695@gmail.com', '$2y$12$D6md4KvhI4vnjrmV7q./UeddmW8PpMT/Xzo/y1tOMQ.Jxp3CQeqYS', 'Akhilesh kumar gupta', 'CSE', '1/2', 1, 'Manit bhopal', 'default_DVcG2eAw3E.jpg', '23-01-2021', 'JANUARY', 0, ''),
(139, '63789917fb4c129641470fd8c4b125_user', 'bholak993@gmail.com', '$2y$12$Xt9C5DUyQys8HzP.9rqvreG1H9SYMShw/A6rt1ETBtaIA85o42RZi', 'Bhola kumar', 'CSE', '1/2', 1, 'Manit Bhopal', 'default_DVcG2eAw3E.jpg', '23-04-2021', 'APRIL', 0, '2409:4064:696:6e3c::15aa:a0a5'),
(140, 'b0dc1497cbf77c9abb5bf0192fd081_user', 'navyasree.1823@gmail.com', '$2y$12$kJZWZwZTULzp4qr0e8uE3ez/XpiYtjTv4X4a6VWi1E1igT35Ae5da', 'Navyasree Konagalla', 'CSE', '1/2', 1, 'MANIT BHOPAL', 'default_DVcG2eAw3E.jpg', '23-01-2021', 'JANUARY', 0, ''),
(141, 'f91ec38dbcf39196e896dc5055e86d_user', 'shubham2710gupta@gmail.com', '$2y$12$EEFhrmXyb743CcHSibJl6.LWFEbxSSmM19XK0L69JnkKgZa6V3r1C', 'Shubham gupta', 'EE', '1/2', 1, 'Manit bhopal', 'default_DVcG2eAw3E.jpg', '23-01-2021', 'JANUARY', 0, ''),
(142, 'da9bdd3fd82519bc58521a0496be5a_user', 'sumitmahobe@gmail.com', '$2y$12$GULMVcu1PR9DGYa2wXDNd.DSHnvMVAiqXxvYIziPbu6RJq6UOEioC', 'Sumit', 'ECE', '1/2', 1, 'Maulana Azad national institute of technology Bhopal', 'default_DVcG2eAw3E.jpg', '23-01-2021', 'JANUARY', 0, ''),
(144, '591d8d5a3cbf2648294fd0c49ff313_user', 'amitchoube27@gmail.com', '$2y$12$lbKEOV3dKKggCjZXGJH/kecB3TECoWEiiAqFAlGT7BRXTLAm9Wg4i', 'Amit', 'ECE', '1/2', 1, 'Maulana Azad National Institute of Technology, BHOPAL', 'default_DVcG2eAw3E.jpg', '24-01-2021', 'JANUARY', 0, ''),
(145, '591d8d5a3cbf2648294fd0c49ff313_user', 'amitchoube27@gmail.com', '$2y$12$L0cHWXNxdzlKkV6ZmTgjU.stqB/NvHdZWAR77lRmolWLNrkkm9yYe', 'Amit', 'ECE', '1/2', 1, 'Maulana Azad National Institute of Technology, BHOPAL', 'IMG_20201202_184135_710.jpg', '24-07-2021', 'JULY', 0, '2409:4043:2496:2c53::293c:e0a4'),
(146, '9cfa1e4b11d59b2521b24bfd607150_user', 'harshkara09@gmail.com', '$2y$12$wFErlHunDvHTB34aKoWeAuurFCxr7ktQ55ED0tzCO4HtGy1WEfEV.', 'Harsh kara', 'CIVIL', '1/2', 1, 'MANIT, Bhopal', 'default_DVcG2eAw3E.jpg', '05-01-2022', 'JANUARY', 0, '2409:4043:4e0c:96c8::cb4a:c402'),
(147, 'f839fd26390656c491277e3160cd36_user', 'swethapawar2003@gmail.com', '$2y$12$XIJT3JOclTGfO6mtE/7K5eYAxaOAHF4gnvDRYI9ecSfz9NeJK.7dm', 'Swetha pawar vishlavath', 'ME', '1/2', 1, 'Manit. Bhopal Madhya Pradesh', 'default_DVcG2eAw3E.jpg', '24-01-2021', 'JANUARY', 0, ''),
(148, '0c34da76b234d8721cefef905ce261_user', 'harsh912bhagat@gmail.com', '$2y$12$T/YEYCMBHn0ZZSBbjRUhruEUoM5H/UBDS9bTg/IedFQ8IPgORZ1hK', 'Harsh', 'MME', '1/2', 1, 'MANIT BHOPAL', 'default_DVcG2eAw3E.jpg', '24-01-2021', 'JANUARY', 0, ''),
(149, 'b3389c6e60b1ca77d5142e97f57e83_user', 'rinkumeena052003@gmail.com', '$2y$12$62oHWagqnXBhfO.flQ3Zp.AyvDcFS0mEO3nt1Ywl4U5JA5STcyuIO', 'Rinku meena', 'ECE', '1/2', 1, 'Maulana Azad national institute of technology', 'default_DVcG2eAw3E.jpg', '24-01-2021', 'JANUARY', 0, ''),
(150, 'd90b6d4241feedccfbea4698d0b646_user', 'karanchourasiya19863@gmail.com', '$2y$12$hSVXVj0JNVKR.7guvX6BN.cUyNZ4m2pgt/dUGoavFZNRL/p6Zmlle', 'Karan Chourasiya', 'ECE', '1/2', 1, 'Maulana Azad National Institute of Technology,Bhopal', 'default_DVcG2eAw3E.jpg', '24-04-2021', 'APRIL', 0, '2405:201:3001:6059:45cb:656c:9012:beec'),
(151, 'fd7f5f30e4247985ffdd02bad37789_user', 'aniketmishra0rs@gmail.com', '$2y$12$UFaNRzvGcPGLxIeWQJ5lvuIbUg2jwkw/c5WhKnVaP5MmzmhRE.Mpa', 'Aniket mishra', 'ME', '1/2', 1, 'Manit', 'IMG_20210114_030148.jpg', '24-04-2021', 'APRIL', 0, '171.60.185.14'),
(152, '9367a8c4599af4852281bf77a4e78b_user', 'chvvamsidhar03@gmail.com', '$2y$12$Igf6bQY2xjd0ixV.zjYGC.hbNCg4E2Q5AOXUJY.bGlPIhh9OcOCYe', 'Chunduru Venkata Vamsidhar', 'ME', '1/2', 1, 'Maulana Azad National Institute of Technology, Bhopal ', 'default_DVcG2eAw3E.jpg', '24-01-2021', 'JANUARY', 0, ''),
(153, 'd7d634999147fda993eefcfd044930_user', 'dksofficial23@gmail.com', '$2y$12$CZTcvBfY7ACpUQ20kvILTOIzrfCB48dk3BN2M2mdAW2mbuk2tbgLe', 'asdfsadf', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '24-01-2021', 'JANUARY', 0, ''),
(154, '0248e972a469018ce71f2d6fd54210_user', 'sur.singh2205@gmail.com', '$2y$12$zylg9iVJoIELdYr.T0aC8uC0zmYswMDz/Q9AheDD0szZ5ZryHG2qy', 'Surya pratap singh', 'MME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '24-04-2021', 'APRIL', 0, '49.206.35.216'),
(155, 'ac0266ed13c46648ff64440d836221_user', 'satvikishukla@gmail.com', '$2y$12$AGhS3Msk4N18VWOOQgsfC.vO0y.ZyNjXhPkPBbpCy4VSKKQyIxjZW', 'Satviki Shukla', 'ME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '24-07-2021', 'JULY', 0, '106.201.254.17'),
(156, 'ce52bcdbfcebb356d4992fd2aed87f_user', 'utkarshsahu@gmail.com', '$2y$12$gNc2YwP786C7PZ0RKUz7iuJwQY26i/mTltoPfpLk4ptuxFPZpbL.K', 'Utkarsh Sahu', 'EE', '1/2', 1, 'Maulana Azad', 'default_DVcG2eAw3E.jpg', '25-01-2021', 'JAN', 0, '2409:4053:2d9d:571e:d89d:d53b:a129:4c3e'),
(157, '9632dfd36c4f8be195c4401a661734_user', 'utkarshsahu@gmail.com', '$2y$12$zEvSl4.gq43Td28NyW06j.PzIjLAu1NJMF7jpzp1JDsogtpFB/uM2', 'Utkarsh Sahu', 'MME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '30-01-2021', 'JAN', 0, '2405:201:600e:b840:8860:dd96:b0e6:eac9'),
(158, '32b35b6ee1382a4e349b5422860084_user', 'shashankreddy053@gmail.com', '$2y$12$ni41KmpVwIVZ1aMkMPsCde21HVPhIZodRhnIwfg0If1VsQxt8O2ti', 'Mukku Shashank Reddy', 'ECE', '1/2', 1, 'Maulana Azad National Institute of Technology, Bhopal ', 'default_DVcG2eAw3E.jpg', '24-07-2021', 'JULY', 0, ''),
(159, '685d171f7b41d3b1c981b3b1394d74_user', 'as17110763@gmail.com', '$2y$12$aonauxTTghqS2TCOJLFoRugpp65yftZhXYP150IgrJjAZAD7TtswS', 'Ankit sahu', 'ME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '25-01-2021', 'JANUARY', 0, ''),
(160, '254476cd6e458a73c9f1f864de4b99_user', 'pappu@mailinator.com', '$2y$12$y8eaAbWTO3SuvaestYSRK.1wzvhNDkK2OAVJE8FlWV3mno/ATajlW', 'koko', 'CSE', '1/2', 1, 'srit', 'default_DVcG2eAw3E.jpg', '25-01-2021', 'JANUARY', 0, ''),
(161, '254476cd6e458a73c9f1f864de4b99_user', 'pappu@mailinator.com', '$2y$12$EgBEQLxhSE7PGe9bdjrgwuuVUPYw69sPF2BHz/qOfdnKqB50BL/C2', 'koko', 'CSE', '1/2', 1, 'srit', 'default_DVcG2eAw3E.jpg', '25-01-2021', 'JANUARY', 0, ''),
(162, 'e6265c2774edd3398de716851d5041_user', 'satyam37890@gmail.com', '$2y$12$Gsl8vJVjrq/6SOqTZzkp3.qPKaxOIu.ozf3HRkiIZSN8Dp79Twv7O', 'Satyam tiwari', 'ME', '1/2', 1, 'Maulana azad national institute of technology bhopal', 'default_DVcG2eAw3E.jpg', '25-01-2021', 'JANUARY', 0, ''),
(163, 'cd99993b44e4b235e95112dbffa787_user', 'jagdishsdw@gmail.com', '$2y$12$lsbKuq89DUy7oPqTubpi6eUvChTTFmNVDGGuTRs.k3IsxgSDlUEOe', 'JJD', 'CSE', '1/2', 1, 'Manit Bhopal ', 'default_DVcG2eAw3E.jpg', '26-01-2021', 'JANUARY', 0, ''),
(164, '1ceb4074bc19a1571c136ee8a0896d_user', 'pratyushadipesh@gmail.com', '$2y$12$fsf6CFfMJN8mJzqMMAHawOGTp9ynWFPhkNzdNmMkkAUSdmHXYTdrG', 'Pratyusha Patidar', 'CSE', '1/2', 1, 'MANIT, Bhopal', 'default_DVcG2eAw3E.jpg', '26-01-2021', 'JANUARY', 0, ''),
(165, '1b28530c185c1b5284df39d6d485ac_user', 'bhanugavre@gmail.com', '$2y$12$4d7i6/pvHCPi80FaezSHLug29vf08sDIM7eneKainYuGKDPqYq6vq', 'Chandrabhanu Gavare', 'EE', '1/2', 1, 'Maulana Azad National Institute Of Technology Bhopal', 'default_DVcG2eAw3E.jpg', '26-07-2021', 'JULY', 0, '2409:4043:2d15:1b13:e074:ccb9:5cba:d6d2'),
(166, '089ef2a3468f360ac20caed13c6035_user', 'yash@gmail.com', '$2y$12$Tg4OTtpYSJHglgXwuJIz/ec/CSysX9clm.a5XpqVI5jknNLPhiSWi', 'Yash', 'ALL', '1/2', 1, 'Maulana', 'default_DVcG2eAw3E.jpg', '27-01-2021', 'JAN', 0, '132.154.226.188'),
(167, '526d1de8ca8459695f79d1a4d843ca_user', 'rishita.235@gmail.com', '$2y$12$i05zy9r6ja8.8y74qnx9kOZvncjaUpcgEO.gUz2nRf2iaARQlWJjO', 'Rishita Jain', 'CSE', '1/2', 1, 'Manit', 'default_DVcG2eAw3E.jpg', '27-01-2021', 'JANUARY', 0, ''),
(168, 'bd5847f3469401a917078310690a79_user', 'shobhitgoyal269@gmail.com', '$2y$12$ksnTRr6jLVsCSBN2oZ5J1.dhT.KKrI39Dj.dpgFvL3SU0s1gQlFKy', 'Shobhit goyal', 'ECE', '1/2', 1, 'MANIT bhopal', 'default_DVcG2eAw3E.jpg', '29-01-2021', 'JANUARY', 0, ''),
(171, 'd729a483f23ee1b8e6b69c219efa82_user', 'harsh@gmail.com', '$2y$12$P5jlt0fNBWJ6Ds17W9xtzuXkpdgWZSM5qxuMS0fhDSd5fwcucwILS', 'Timbak Tu Tu', 'CSE', '6', 3, 'MANIT', 'default_DVcG2eAw3E.jpg', '30-03-2021', 'MAR', 0, '2405:201:600e:b840:d952:3b20:637d:e5bb'),
(172, '552f5e04420f36a974af297dfb14e8_user', 'gayatriuk007@gmail.com', '$2y$12$KBVqD5L8B89jQYLh5EZD2ugkyuhBoppyJ.4QrW3rJ6ENx8SXf25A6', 'geetanjali', 'CSE', '6', 3, 'manit', 'default_DVcG2eAw3E.jpg', '06-05-2021', 'MAY', 0, '2401:4900:51db:5f6e:8c51:b224:7cfe:cbc0'),
(173, 'fcacf3cd969e2293cb312379f5ee07_user', 'shubhamdhakad432@gmail.com', '$2y$12$46d3.FMtCTuL25baP9yq4uDI67d7z90ljR3jWa5l9F5kwMpq5frqm', 'SHUBHAM DHAKAD', 'CSE', '6', 3, 'Manit', 'default_DVcG2eAw3E.jpg', '06-02-2021', 'FEBRUARY', 0, ''),
(174, 'df39476dcb6b8e7e771b449c73ef6d_user', 'niharoad304@gmail.com', '$2y$12$8vN.S0Jo0efh5YJckr/um.BufapH.mRN/3r/hqLTpSrCxrl4UqgTW', 'Nihar Oad', 'CSE', '6', 3, 'Manit', 'default_DVcG2eAw3E.jpg', '06-05-2021', 'MAY', 0, '103.85.11.207'),
(175, '75df9b33f05b833ac5603f90670312_user', 'tru79526@zwoho.com', '$2y$12$h8OtTdwPjkPfLB8luVS7YuGt3m0ArtzoQ/fily2YD7bI2FG7aBA/6', 'animesh', 'CSE', '6', 3, 'manit', 'default_DVcG2eAw3E.jpg', '06-02-2021', 'FEBRUARY', 0, ''),
(176, '495c82a3fe69cd7c195d1f1ba8fdc8_user', 'ishujain18123@gmail.com', '$2y$12$4Yxw.uKPujOLKErPuIVRZ.Mt2Lzi9x0q.bWQUlVE9b/sXFusi4pVC', 'Yashaswa jain', 'CSE', '6', 3, 'MANIT', 'default_DVcG2eAw3E.jpg', '07-02-2021', 'FEBRUARY', 0, ''),
(177, '5be352eacfbb10b886da7f9a4bde94_user', 'aysuh@gmail.com', '$2y$12$8hGFgXFxSeYC8o65mNzyHOChZynAIwDrs2elep7F18eBSOTViL69O', 'Ayush ', 'ALL', '1/2', 0, 'Maulana Azad ', 'default_DVcG2eAw3E.jpg', '10-02-2021', 'FEB', 0, ''),
(178, '43dade0f41c5f6fdd4b7da54685ad2_user', 'harshithreddy22102002@gmail.com', '$2y$12$sgXDgx9Jk4hDgITn8cdvTO5lPIIRM11wMWqjKXMbIaggX7iee.5KS', 'Harshith Reddy', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '10-08-2021', 'AUGUST', 0, '136.185.226.119'),
(179, '4f92d89ed3c5045b5cf94071609ea6_user', 'mohm.nasar.28@gmail.com', '$2y$12$i7BLnzuX2XiA6kTq7XAsDuBZt.1U81UhQ2ve2GhuFRhL2FBExQjuu', 'Md Nasar', 'CSE', '1/2', 1, 'MAULANA AZAD NATIONAL INSTITUTE OF TECHNOLOGY BHOPAL', 'default_DVcG2eAw3E.jpg', '20-02-2021', 'FEBRUARY', 0, ''),
(180, '0c52a89e0918042a81746edc24ca19_user', 'nikhilsanora.manit@gmail.com', '$2y$12$YuNo/jGaFT1rK1YtgnuW2O9f2BMjLeDWvbQjTgHJ6jlPsjQ2DYKom', 'Nikhil Sanora', 'CSE', '6', 3, 'NIT- Bhopal ', 'default_DVcG2eAw3E.jpg', '23-02-2021', 'FEBRUARY', 0, ''),
(181, '1908837680d51be203f5cfc5e5bb87_user', 'shubham21mar2002@gmail.com', '$2y$12$CCaX/oAYhRWvSZ6WXe2IPuB2DATFSyemnHgczfuYbYYUBIOiy73Am', 'Shubham singh', 'CSE', '1/2', 1, 'MANIT Bhopal', 'default_DVcG2eAw3E.jpg', '23-08-2021', 'AUGUST', 0, '117.199.187.170'),
(182, '3f58377d268e0891dd7d33356b5ae3_user', 'pankajnargesh786@gmail.com', '$2y$12$jEn2WEVsq1rMdaexk8gOnO0nliLfQbEpnfX3z09piLNqvIovEYn2u', 'Pankaj Nargesh', 'CSE', '6', 3, 'Maulana Azad National Institute of Technology', 'default_DVcG2eAw3E.jpg', '24-05-2021', 'MAY', 0, '2401:4900:16a3:57a7:bb6f:29ca:401a:1d21'),
(183, 'ada34721624e8275c3fc3e159cc7ca_user', 'aditikhandelwal2000@gmail.com', '$2y$12$2FbTiym3ARcxmDOTE/lgUuV13rfwlTx9zJvg.6RAtdOcACf0qY04i', 'Aditi Khandelwal', 'CSE', '6', 3, 'Manit', 'default_DVcG2eAw3E.jpg', '26-02-2021', 'FEBRUARY', 0, ''),
(184, '00274d0e052faf98f569e0b1edaa83_user', 'abc@gmail.co', '$2y$12$IBWcpfd1KjyBSaWQ0RODw.g14on0TXnuqxjnsGk7SczbWmlt7vF8W', 'Shubham Kumar', 'ALL', '1/2', 1, 'NIT Jalandhar', 'default_DVcG2eAw3E.jpg', '27-02-2021', 'FEB', 1, ''),
(185, 'e50e3a8bf519d4af3de695878cd559_user', 'abc@gmail.com', '$2y$12$rX8gOBe4N3A2I/8rs8r26ODl52zUz/HHQNNCK0MtEUU4BWNoB9C8C', 'Shubham Kumar', 'ALL', '1/2', 1, 'NIT Jalandhar', 'default_DVcG2eAw3E.jpg', '27-02-2021', 'FEB', 1, '101.0.53.37'),
(186, '677153fb65945a87958814fc434b65_user', 'xyz@gmail.com', '$2y$12$OruV.ZtVpEpSBb75vfkweuJvUzcQTqGiNM.XbLyCNJM75ikxDTMEy', 'XYZ', 'ALL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '28-02-2021', 'FEB', 1, ''),
(187, 'fcb3fb8211b1ac4e44b112dc06a4b0_user', 'ashut7088@gmail.com', '$2y$12$za3.ogYNEMeV7rVVDmF4Muz0ndwXRKfKHpRXePkaTeheNGy6Y58wW', 'Ashutosh', 'CSE', '1/2', 3, 'Manit', 'default_DVcG2eAw3E.jpg', '26-02-2021', 'FEBRUARY', 0, ''),
(188, '02448ab35d7752c98f986a8c221459_user', 'laxmanvennampally2020@gmail.com', '$2y$12$ylZTeJUOh7nOqG7LtTFMaOicdYap8HobcbTUlr47F9SQ9ZPTNTxte', 'Vennampally laxmanmurthy ', 'CSE', '1/2', 1, 'Maulana azad National Institute of technology', 'default_DVcG2eAw3E.jpg', '20-09-2021', 'SEPTEMBER', 0, '2401:4900:3677:c49b:ce0b:8c81:4b63:9936'),
(189, 'f8b63a8302616cd21e3eaafe972af3_user', 'sjg3390@gmail.com', '$2y$12$egSeaDG.bq/80bzv9iAvIeb862usxKneO3yzz/7TMoNv0BBvLrwj6', 'Prince ', 'ME', '1/2', 1, 'Sliet', 'default_DVcG2eAw3E.jpg', '27-08-2021', 'AUGUST', 0, '103.41.26.181'),
(190, 'ebbff43f6343ef59acc3346d63f34b_user', 'pqr@gmail.com', '$2y$12$.Ixp8LLCvW7PH3dbftTMl.SbR.h3dZs9VqHHEmR1c9eRu37i1GA8i', 'ABC', 'ALL', '1/2', 1, 'NIT BHOPAL', 'default_DVcG2eAw3E.jpg', '26-02-2021', 'FEB', 0, '2405:201:5006:7156:f922:2135:698e:204b'),
(191, '2714c9a7116d92e5b91ae957802990_user', 'askumar000018@gmail.com', '$2y$12$aCP4fmxBhB/fZdtw1sfO0uQbhbryD96Uf/GxTxykmnn0lIMIKszNa', 'Abhishek Kumar', 'ECE', '1/2', 1, 'NIT Goa', 'default_DVcG2eAw3E.jpg', '27-02-2021', 'FEBRUARY', 0, ''),
(192, 'c0dd856a227f47c2baee0186d97c39_user', 'kumarutkarsh534@gmail.com', '$2y$12$hGQtMd87vc4/7n2955QA1OQ5QWcnb0Uj5Do9Y4RYwMLT6cPdZ2oBm', 'Utkarsh kumar', 'EE', '1/2', 1, 'NIT Goa', 'default_DVcG2eAw3E.jpg', '27-02-2021', 'FEBRUARY', 0, ''),
(193, '8d3f248907685c65de0b782fe454e2_user', 'sanjanamalothu456@gmail.com', '$2y$12$cJKWXrz62ZN2lxHok97wru.e8FSBe/AVHkScPdjLy7EZe8ZXtHDxa', 'Sanjana malothu', 'ECE', '1/2', 1, 'National institute of technology goa', 'default_DVcG2eAw3E.jpg', '27-02-2021', 'FEBRUARY', 0, ''),
(194, '425996cb83f708a34230231b7f0146_user', 'mailtoashutosh02@gmail.com', '$2y$12$PVgseNi3R9G0UTyBmegyr.9y2ZKIMjz6w/RkT7f.O675f56MTf992', 'Ashutosh M', 'CIVIL', '1/2', 1, 'Nit goa', 'default_DVcG2eAw3E.jpg', '27-07-2021', 'JULY', 0, '103.119.209.169'),
(195, '93ab20081763c550d25219e0ef96db_user', 'siddhantbarmate@gmail.com', '$2y$12$gW/g01zrAwMm6azp/DzXDugGaJx20rPOKXncpV2L3m.Tg0PlpeqPa', 'Siddhant Barmate', 'ECE', '1/2', 1, 'Manit Bhopal', 'default_DVcG2eAw3E.jpg', '27-05-2021', 'MAY', 0, '103.160.236.141'),
(196, 'e3f92dba7731cbc0b4c12305a0c4b4_user', 'zubinshah6881@gmail.com', '$2y$12$BVLZC351/Xp.4prroaGqie1sM26UsyQOhygA6MysNH1PLI7mrR7zS', 'Zubin Shah', 'CSE', '1/2', 1, 'National Insititute Of technology Goa', 'default_DVcG2eAw3E.jpg', '28-02-2021', 'FEBRUARY', 0, ''),
(197, 'd838b4a7de78f8853de9ad5cc4a095_user', 'hemantahirwar647@gmail.com', '$2y$12$bYOPF7Lbadicz2PWWPgl2Ora7BnzX952IXSVd3fjqnN9j.WYe6xPa', 'Hemant ahirwar', 'CSE', '6', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '28-02-2021', 'FEBRUARY', 0, ''),
(198, '4bc561d1efd8043cbd4d7ab6bde678_user', 'garvitchy.gc@gmail.com', '$2y$12$u88c1rZmIEh9J2L6Tr46ZejifRzUSX04Y5JoNoWRQ9IohVpoYWtTu', 'Garvit Choudhary', 'CSE', '1/2', 1, 'MANIT BHOPAL', 'default_DVcG2eAw3E.jpg', '01-03-2021', 'MARCH', 0, ''),
(199, 'd8840fd67457aca1e7042f994ec5c9_user', 'annu06dec@gmail.com', '$2y$12$bXsjhWV0osTd9HwK4QOWieq..ZoOLGB5OFzhJ8JwQ5Plx.w82yiVe', 'Anushka Singh ', 'ME', '1/2', 1, 'Dr. BR Ambedkar National Institute of Technology ', 'default_DVcG2eAw3E.jpg', '01-06-2021', 'JUNE', 0, '61.0.77.244'),
(200, 'aa480ee54045c0d3e9a4dbdffff4c6_user', 'Vennampallylaxman12345@gmail.com', '$2y$12$zcgVvUwqH2LeZrJmlVPZY.8tE9BNq5aBTQr7RB8d0O/bxdOfy899e', 'Laxman ', 'CSE', '1/2', 1, 'Maulana azad National Institute of technology', 'default_DVcG2eAw3E.jpg', '01-03-2021', 'MARCH', 1, ''),
(201, '33849998d181218b9e7d7123cb4f42_user', 'laxman07071984@gmail.com', '$2y$12$crqhZ3Mp2vLk2W1yxns0buyN64hfSN3Hw9esBRysurZASxgEiEU/2', 'Laxman ', 'CSE', '1/2', 1, 'Maulana azad National Institute of technology', 'default_DVcG2eAw3E.jpg', '01-03-2021', 'MARCH', 1, ''),
(202, '82b671e31b6d6aa620c1223e873be6_user', 'manitbhopal2022@gmail.com', '$2y$12$DF5IquFLRR9ZzfLVyCOANe3N5tkT4TjiVBHupV9D5qvbylJGZ/cAS', 'r', 'CSE', '6', 3, 'nit b', 'default_DVcG2eAw3E.jpg', '02-03-2021', 'MARCH', 0, ''),
(203, '11537428780bee0d8b8597344c6776_user', 'rawatashutosh51@gmail.com', '$2y$12$xgJAHj/zOnv.4qQM1UwZQe6.ZQDBW0zwFLELXaMvq3g3fynp20kqG', 'Ashutosh rawat', 'MME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '02-03-2021', 'MARCH', 0, ''),
(204, 'ac0a6b94ee7255702c89303d9f147c_user', 'mgpmgpmgp2014@gmail.com', '$2y$12$7UZfsv0lFNeAHwz7MyEdJuzHqt2FrlsByTwOJH2Wu/MBnHlNBmB1.', 'gagan pareek', 'CSE', '1/2', 1, 'bhartiya ', 'default_DVcG2eAw3E.jpg', '04-03-2021', 'MARCH', 0, ''),
(205, '1feec55b5be6dbc97da02c5e2b48a9_user', 'pancholiaditya.791@gmail.com', '$2y$12$MJZPyW6Hxibj7BbX.lX20eUJriwN737DlOvxXBD7yvsdOjoEVpW02', 'Meet', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '09-03-2021', 'MARCH', 0, ''),
(206, '70bbe4f2cabb89b9328aba26894609_user', 'timepassone764@gmail.com', '$2y$12$ZVINd44ZAIB6TsZ6Ezy1suKfoiFEedR6CkOVwF4J2ehBtCX.A4EAe', 'Meet', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '09-03-2021', 'MARCH', 0, ''),
(207, '11052934d7ef263c0e6602ae31c9db_user', 'mayankdubey.ntse@gmail.com', '$2y$12$/OjURIvkEgXIp.IBV.lB6unxuGrRBa5eJPpxtpVeWmn1LyVULSE6.', 'mayank dubey ', 'CSE', '6', 3, 'manit ', 'default_DVcG2eAw3E.jpg', '09-03-2021', 'MARCH', 0, ''),
(208, 'a6c524bbf4b410c5e55b7b8620a5b1_user', 'sid.joharwal1210@gmail.com', '$2y$12$lZ/d9NDSkNFuIGctRbf02uhR5WH0sCkbOyEU232JGgfreLE98f6o2', 'Siddharth Joharwal', 'CSE', '6', 3, 'MANIT', 'default_DVcG2eAw3E.jpg', '21-03-2021', 'MARCH', 0, ''),
(209, '861be7b4d0ed2b51e5e6ba370c439c_user', 'dayashankarsunda@gmail.com', '$2y$12$zFpxSSOSIDiQpOD4LRNsNemNDOoz/pXz9VlQGbreEADqPOcfUrHte', 'Dayashankar Sunda', 'ECE', '1/2', 3, 'NIT Andhra Pradesh', 'default_DVcG2eAw3E.jpg', '23-03-2021', 'MARCH', 0, ''),
(210, '7f3476656925f410b46daeb327be44_user', 'mohitbaghel1213@gmail.com', '$2y$12$HxsWT0jDFpgB1TMZrgFK6Ouq.8S8/i/ykX/9.7ZflwV4XW2bWR3NS', 'Mohit Baghel', 'CSE', '6', 3, 'MANIT , Bhopal', 'default_DVcG2eAw3E.jpg', '06-04-2021', 'APRIL', 0, ''),
(211, '33be35e9ad8fa1afef3550cc455f44_user', 'nileshsomvansi@gmail.com', '$2y$12$d4SP7igS7S4oCTeUgqw.meQln6gzvfLsZyAi4jEYwvILRGfJfjUV2', 'Nilesh Singh', 'MME', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '12-08-2021', 'AUG', 0, '117.205.85.49'),
(212, 'b37cfe95c7c136284fa50a861c4aa9_user', 'ashmit@gmail.com', '$2y$12$cNWQQgEH6Aajrjq/zLWw0uDH40hGAlFe05.oVdmzvjyqqy7064lkC', 'Ashmit Prasad', 'ALL', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '01-01-2022', 'JAN', 0, '2401:4900:16da:1a42:7d80:49e8:c36e:ef87'),
(213, '481d0c7786f252f887a29e3f817218_user', 'support@notesnaka.com', '$2y$12$xWOfUrzUyU7InVd4TBbtgeGyPm2zVKPX84C/YL44e0NsXtY0swL82', 'Timbak Tu Tu', 'CSE', '1/2', 1, 'fff', 'default_DVcG2eAw3E.jpg', '06-10-2021', 'OCTOBER', 0, ''),
(214, '50e3df8e673c1bc3e4d751946512ea_user', 'dudus@gmail.com', '$2y$12$GicLCtNKy7WCzHXy9xru9OOUcgkzKyFYcIkxsTjBxVkIe7ROhM/XO', 'Hello', 'CSE', '1/2', 1, 'MANIT', 'default_DVcG2eAw3E.jpg', '06-10-2021', 'OCTOBER', 0, ''),
(215, '39e256810f87aa5e3e6cd91bfcb112_user', 'aditya.mishra6752@gmail.com', '$2y$12$.2s/ChbcoinPhDA7ApPOHu0EAgTZbD1J/ZweZtLw1zCZtZj.xJnQ.', 'Aditya Niranjan Mishra', 'CSE', '6', 3, 'NIT Bhopal', 'default_DVcG2eAw3E.jpg', '31-10-2021', 'OCTOBER', 0, ''),
(216, '8884351be7040a17ed320d125652b4_user', 'tempemail3112@gmail.com', '$2y$12$rmFMH9ZzVMztBehH2yZMUeBPK5BzCORuxT.TiBksb2DDQ4YBFZhZy', 'Utkarsh Sahu', 'CSE', '1/2', 1, 'IIT Indore', 'default_DVcG2eAw3E.jpg', '06-11-2021', 'NOVEMBER', 0, ''),
(217, '8884351be7040a17ed320d125652b4_user', 'tempemail3112@gmail.com', '$2y$12$N50oQ4qsSPAKKpagrfFuz.CwMfKdJmH68udO5C14ut.8LcicT3zve', 'Utkarsh Sahu', 'CSE', '1/2', 1, 'IIT Indore', 'default_DVcG2eAw3E.jpg', '06-02-2022', 'FEBRUARY', 0, '49.36.213.34');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int(15) NOT NULL,
  `video_dp` varchar(255) NOT NULL,
  `video_data` varchar(255) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `video_sub` varchar(255) NOT NULL,
  `video_sub_code` varchar(255) NOT NULL,
  `video_branch` varchar(255) NOT NULL,
  `video_sem` varchar(255) NOT NULL,
  `video_year` int(15) NOT NULL,
  `video_college` varchar(255) NOT NULL,
  `video_info_1` text NOT NULL,
  `video_info_2` text NOT NULL,
  `video_contri_name` varchar(255) NOT NULL,
  `video_contri_college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `video_dp`, `video_data`, `video_title`, `video_sub`, `video_sub_code`, `video_branch`, `video_sem`, `video_year`, `video_college`, `video_info_1`, `video_info_2`, `video_contri_name`, `video_contri_college`) VALUES
(3, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1_qHgHGL15DSRSyOyQeGQGm0wtTb-MxXs/view?usp=sharing', 'Engineering Chemistry Jain & Jain', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(4, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1Smdpma-klqWAU72bb8vgkBNbctFWMyHx/view?usp=sharing', 'Engineering Chemistry K. Mohan', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(5, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1bwZLzGiekLpFu4uhdClscSmda6Z3nsKM/view?usp=sharing', 'Engineering Chemistry Sashi Chawla', 'Chemistry', 'CH-122', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(6, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1WLNpJK82tYjz30EZ56jP1a94Wx47D2dz/view?usp=sharing', 'Environmental Studies Uma Mukherjee', 'Environmental Science', 'CH-123', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(7, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1U9k3RoucQRplHTHSTig94J1LRi7nM7w4/view?usp=sharing', 'Environmental Studies E Bharucha', 'Environmental Science', 'CH-123', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(8, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1DtchvCW1qO37Nxr__xLzKLE4_CEnEMSY/view?usp=sharing', 'Environmental Studies Kaushik & Kaushik', 'Environmental Science', 'CH-123', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(9, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/130MP4Y2V09NwmETAdBVjEk_uCC5mUG-B/view?usp=sharing', 'Engineering Mathematics B.S. Grewal', 'Mathematics', 'MTH-111 MTH-121', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(10, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1MQ_qsPYo5TkO-WYyKvZsBVC4c8LWNPWw/view?usp=sharing', 'Engineering Mathematics H.K. Das', 'Mathematics', 'MTH-111 MTH-121', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(11, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1Y2VsSEa4dv_XIng19kxj3Gb-ZpmgxJeX/view?usp=sharing', 'Engineering Physics Kshirsagar S.Chand', 'Physics', 'PHY-112', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(12, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/130DJ4FtXIBq6jsapxXPEzsDFiA9ICFof/view?usp=sharing', 'Chapter 1', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(13, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1TIA5OW1dWAEgL3c7_GqvHs-5j4i9h4zl/view?usp=sharing', 'Chapter 2', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(14, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/15zYWM-3ibSe--qrYWss46TtWEMxi1_Gz/view?usp=sharing', 'Chapter 3', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(15, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1HwAYomqEiVlC_yr0TMDoeKWxwEpMnQy2/view?usp=sharing', 'Chapter 4', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(16, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1nfqVJjm5isEoS4hMxc4bJVyx6cZcx6Lq/view?usp=sharing', 'Chapter 5', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(17, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/13lNKcfNr8FdTviIotzg22u8LIOQ9LnEL/view?usp=sharing', 'Chapter 6', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(18, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1XTF47oCXtRzBJGZ5-USZpc40xFwsHYU3/view?usp=sharing', 'Chapter 7', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(19, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1U9THxV_5DjajK-rrnxzmaRmPjeMZvtW0/view?usp=sharing', 'Chapter 8', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(20, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1cZa27Yha-b6m7uTpsbHIUlLR9cvVpYoC/view?usp=sharing', 'Chapter 9', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(21, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1QzNp3ATEGQxCwvZ93wM28EeMKhgEgl8S/view?usp=sharing', 'Chapter 12', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(22, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/117QlUA7o12mMlBnUKDkJYdkN0uG13slR/view?usp=sharing', 'Chapter 13', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(23, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1bqhttvVNowcQznfU-mL0rGtF6J5-3XBM/view?usp=sharing', 'Chapter 14', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(24, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1_2h_38LpBAKTfVvMuvDPOCcRjNYYrNIj/view?usp=sharing', 'Chapter 15', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(25, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1HERpNXay6US196NkL9M2BJvakICnzwOO/view?usp=sharing', 'Chapter 16', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(26, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1tiqqP8rVsv27uCAcuVAa01SfF_iVpjTZ/view?usp=sharing', 'Book Syllabus', 'Communication Skills', 'HUM-113', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(27, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1sw7k4NNAEqdVxjBEqOeTV6DexB3g8pu9/view?usp=sharing', 'Let Us C', 'CP', 'CSE-114', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(28, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1t_miPmR9BLfxnimG3XAbXG39YNbcldYs/view?usp=sharing', 'Let Us C Solution', 'CP', 'CSE-114', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(29, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1-gH3bs5HUIxfm4s9Gyq_VAan4aCGCjOR/view?usp=sharing', 'Chapter 7', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(30, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1qT25J-IZaJrepno1Lg4mysG-DqSNujIx/view?usp=sharing', 'Chapter 8', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(31, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1BISiNM-ndoNx1D7QVyntExQ5HyEQPFwQ/view?usp=sharing', 'Chapter 9', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(32, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1K_vc0DLzen8yP0uX1K2Bj6iCdsiC1gRg/view?usp=sharing', 'Chapter 10', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(33, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1zWf6kZ_XXRJKmVt8X36IrRhYC7H4I9Dz/view?usp=sharing', 'Chapter 11', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(34, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1C4wiuEKaFQXZYuHJoEhx2ePiGReJOggb/view?usp=sharing', 'Engineering Graphics N.D. Bhatt', 'Engineering Graphics', 'ME-115', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(35, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1VYVrFxPJ-1TplsgRGy6XmmfuXlWQDsCo/view?usp=sharing', 'BEEE B.L. Theraja', 'Engineering Graphics', 'EE-124', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(36, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1PkuZXhnyQxbCAKxTDFRF1RJfjCH9pB9b/view?usp=sharing', 'BEEE D.P. Kothari', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(37, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1cIXdrmhevafc2gqafAMU3jlOqScGHE71/view?usp=sharing', 'BEEE Mittle & Mittal', 'BEEE', 'EE-124', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(38, 'default_CaZ45vTe9b.jpg', 'https://drive.google.com/file/d/1p4U2GtKUXkO1YfudPSLsWXrFZbQiXkKi/view?usp=sharing', 'Applied Mechanics R.K. Rajput', 'Engineering Mechanics', 'CE-125', 'ALL', '1/2', 1, 'ALL', '', '', 'NOTES NAKA', 'MANIT'),
(41, 'Dip.jpg', 'https://www.youtube.com/watch?v=1ByFGRa92gM&list=PLgf1Sux4Qs4oH87IA8MsW4J778vUIFsql', 'Digital Image Processing Video Playlist', 'Digital Image Processing', 'CSE-393', 'CSE', '6', 3, 'ALL', 'This video is a part of the DIGITAL IMAGE PROCESSING series. We solve problems from various topics such as Introduction to Image Processing Systems, Digital Image Fundamentals:- Image model, Relationship between Pixels, Imaging geometry, Camera model, Image Sensing and Acquisition, Sampling and quantization, Image Enhancement and in spatial ', '', 'NOTES NAKA', 'MANIT'),
(42, 'default_CaZ45vTe9b.jpg', 'http://160592857366.free.fr/joe/ebooks/ShareData/Design%20of%20the%20Unix%20Operating%20System%20By%20Maurice%20Bach.pdf', 'Unix Internal & Shell Programming', 'Unix Internal & Shell Programming', 'CSE-354', 'CSE', '6', 3, 'ALL', 'Complete Book of UNIX for Architecture and other theory parts', '', 'NOTES NAKA', 'MANIT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contribute`
--
ALTER TABLE `contribute`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `qp`
--
ALTER TABLE `qp`
  ADD PRIMARY KEY (`qp_id`);

--
-- Indexes for table `renew`
--
ALTER TABLE `renew`
  ADD PRIMARY KEY (`renew_id`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;

--
-- AUTO_INCREMENT for table `contribute`
--
ALTER TABLE `contribute`
  MODIFY `con_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `pay_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `qp`
--
ALTER TABLE `qp`
  MODIFY `qp_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `renew`
--
ALTER TABLE `renew`
  MODIFY `renew_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `sub_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `data_id` int(31) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
