/*=========================================
  SECTION 3 : KPI QUERIES
=========================================*/

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
