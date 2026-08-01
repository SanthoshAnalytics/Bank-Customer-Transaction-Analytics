/*=========================================
  SECTION 2 : DATA VALIDATION
=========================================*/

-- Preview records
SELECT *
FROM transactions
LIMIT 10;

-- Total records
SELECT COUNT(*) AS Total_Records
FROM transactions;

-- Table structure
DESCRIBE transactions;

-- Available tables
SHOW TABLES;
