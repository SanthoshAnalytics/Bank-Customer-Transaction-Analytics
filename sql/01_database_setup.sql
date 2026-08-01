/*=========================================
  BANK CUSTOMER & TRANSACTION ANALYTICS
  SECTION 1 : DATABASE SETUP
=========================================*/

CREATE DATABASE banking_analytics;

USE banking_analytics;

SHOW DATABASES;

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

-- Import the CSV using MySQL Workbench
-- Table Data Import Wizard
