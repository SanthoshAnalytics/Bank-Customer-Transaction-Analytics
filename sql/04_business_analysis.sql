/*=========================================
  SECTION 4 : BUSINESS ANALYSIS
=========================================*/

-- Monthly Trend
SELECT DATE_FORMAT(TransactionDate,'%Y-%m') AS Month,
       SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY Month
ORDER BY Month;

-- Debit vs Credit
SELECT TransactionType,
       SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY TransactionType;

-- Channel Analysis
SELECT Channel,
       SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY Channel
ORDER BY Total_Amount DESC;

-- Top 10 Locations
SELECT Location,
       SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY Location
ORDER BY Total_Amount DESC
LIMIT 10;

-- Age Group Analysis
SELECT AgeGroup,
       SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY AgeGroup;

-- Customer Occupation Analysis
SELECT CustomerOccupation,
       SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY CustomerOccupation
ORDER BY Total_Amount DESC;

-- Top 10 Accounts
SELECT AccountID,
       SUM(TransactionAmount) AS Total_Amount
FROM transactions
GROUP BY AccountID
ORDER BY Total_Amount DESC
LIMIT 10;
