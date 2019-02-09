-- Samantha Deokinanan
-- CUNY MSDS DATA 607 Assignment 2
-- Database: SHINee Ranking 2/5/2019
-- Host: localhost    
-- ------------------------------------------------------

-- Table structure for contengency table 'SHINeeRanking' 
DROP TABLE IF EXISTS `SHINeeRanking`;
CREATE TABLE `SHINeeRanking` (
  `ID` integer NOT NULL,
  `mvs` varchar(100) NOT NULL,
  `first_visual` varchar(100) NOT NULL,
  `second_visual` varchar(100) NOT NULL,
  `third_visual` varchar(100) NOT NULL,
  `forth_visual` varchar(100) NOT NULL,
  `fifth_visual` varchar(100) NOT NULL,
  `first_theme_story` varchar(100) NOT NULL,
  `second_theme_story` varchar(100) NOT NULL,
  `third_theme_story` varchar(100) NOT NULL,
  `forth_theme_story` varchar(100) NOT NULL,
  `fifth_theme_story` varchar(100) NOT NULL,
  `first_performance` varchar(100) NOT NULL,
  `second_performance` varchar(100) NOT NULL,
  `third_performance` varchar(100) NOT NULL,
  `forth_performance` varchar(100) NOT NULL,
  `fifth_performance` varchar(100) NOT NULL,
   PRIMARY KEY (`ID`)
  );

-- Dumping data for table `SHINeeRanking`
LOAD DATA INFILE 'path\to\hw2dataset_SHINeeRanking.csv'
INTO TABLE SHINeeRanking
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;