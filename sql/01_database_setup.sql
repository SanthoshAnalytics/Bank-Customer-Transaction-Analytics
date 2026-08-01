/*=========================================================
        BANK CUSTOMER & TRANSACTION ANALYTICS
===========================================================

Project : End-to-End Bank Customer & Transaction Analytics
Database: banking_analytics
Author  : Santhosh
=========================================================*/


/*=========================================================
SECTION 1 : CREATE DATABASE
=========================================================*/

CREATE DATABASE banking_analytics;

USE banking_analytics;

SHOW DATABASES;


/*=========================================================
SECTION 2 : CREATE TABLE
=========================================================*/

CREATE TABLE transactions (

TransactionID INT PRIMARY KEY,
CustomerID INT,
AccountID INT,
TransactionDate DATE,
TransactionType VARCHAR(20),
TransactionAmount DECIMAL(12,2),
BalanceAfterTransaction DECIMAL(12,2),
Location VARCHAR(100),
Channel VARCHAR(50),
AgeGroup VARCHAR(20),
CustomerOccupation VARCHAR(100)

);


/*=========================================================
SECTION 3 : IMPORT DATA
=========================================================*/

-- Use Table Data Import Wizard
-- OR

LOAD DATA INFILE 'Bank_Transactions.csv'
INTO TABLE transactions
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;


/*=========================================================
SECTION 4 : DATA VALIDATION
=========================================================*/

SELECT *
FROM transactions
LIMIT 10;

SELECT COUNT(*)
FROM transactions;

DESCRIBE transactions;

SHOW TABLES;


/*=========================================================
SECTION 5 : KPI QUERIES
=========================================================*/

-- Total Transactions

SELECT COUNT(*) AS Total_Transactions
FROM transactions;


-- Total Accounts

SELECT COUNT(DISTINCT AccountID) AS Total_Accounts
FROM transactions;


-- Total Transaction Value

SELECT SUM(TransactionAmount) AS Total_Transaction_Value
FROM transactions;


-- Average Transaction Value

SELECT AVG(TransactionAmount) AS Average_Transaction_Value
FROM transactions;


-- Average Account Balance

SELECT AVG(BalanceAfterTransaction) AS Average_Account_Balance
FROM transactions;


/*=========================================================
SECTION 6 : BUSINESS ANALYSIS
=========================================================*/

-- Monthly Trend

SELECT
DATE_FORMAT(TransactionDate,'%Y-%m') AS Month,
SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY Month
ORDER BY Month;


-- Debit vs Credit

SELECT
TransactionType,
SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY TransactionType;


-- Channel Analysis

SELECT
Channel,
SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY Channel
ORDER BY Total_Amount DESC;


-- Top 10 Locations

SELECT
Location,
SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY Location
ORDER BY Total_Amount DESC
LIMIT 10;


-- Age Group Analysis

SELECT
AgeGroup,
SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY AgeGroup;


-- Customer Occupation Analysis

SELECT
CustomerOccupation,
SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY CustomerOccupation
ORDER BY Total_Amount DESC;


-- Top 10 Accounts

SELECT
AccountID,
SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY AccountID
ORDER BY Total_Amount DESC
LIMIT 10;


/*=========================================================
SECTION 7 : END OF PROJECT
=========================================================*/

SELECT 'Project Executed Successfully' AS Status;
