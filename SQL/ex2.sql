-- Select the existing database
USE expensetracker;

-- Drop tables if they exist to avoid errors
DROP TABLE IF EXISTS ExpenseReports;
DROP TABLE IF EXISTS Analysis;
DROP TABLE IF EXISTS Search;
DROP TABLE IF EXISTS Transaction;
DROP TABLE IF EXISTS Expense;
DROP TABLE IF EXISTS Income;
DROP TABLE IF EXISTS User;

-- Creating User Table
CREATE TABLE User (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    PhoneNumber VARCHAR(15)
);

-- Creating Income Table
CREATE TABLE Income (
    IncomeID INT AUTO_INCREMENT PRIMARY KEY,
    IncomeSources VARCHAR(50),
    DateOfIncome DATE,
    IncomeReceived DECIMAL(10, 2),
    TotalIncome DECIMAL(10, 2),
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- Creating Expense Table
CREATE TABLE Expense (
    ExpenseID INT AUTO_INCREMENT PRIMARY KEY,
    ExpenseCategory VARCHAR(50),
    DateOfExpense DATE,
    ExpensePaid DECIMAL(10, 2),
    TotalExpense DECIMAL(10, 2),
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- Creating Transaction Table
CREATE TABLE Transaction (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    Time TIME,
    Date DATE,
    TotalPrice DECIMAL(10, 2),
    ExpenseID INT,
    FOREIGN KEY (ExpenseID) REFERENCES Expense(ExpenseID)
);

-- Creating Search Table
CREATE TABLE Search (
    SearchID INT AUTO_INCREMENT PRIMARY KEY,
    DateOfExpense DATE,
    `Range` VARCHAR(50),  -- Enclose Range in backticks to avoid syntax issues
    Category VARCHAR(50),
    Amount DECIMAL(10, 2),
    ExpenseID INT,
    FOREIGN KEY (ExpenseID) REFERENCES Expense(ExpenseID)
);

-- Creating Analysis Table
CREATE TABLE Analysis (
    AnalysisID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryAnalysis VARCHAR(255),
    IncomeAnalysis VARCHAR(255),
    ExpenseAnalysis VARCHAR(255),
    SavingsAnalysis VARCHAR(255)
);

-- Creating ExpenseReports Table
CREATE TABLE ExpenseReports (
    ReportID INT AUTO_INCREMENT PRIMARY KEY,
    Dates DATE,
    TotalSavings DECIMAL(10, 2),
    Categories VARCHAR(255),
    AnalysisID INT,
    UserID INT,
    FOREIGN KEY (AnalysisID) REFERENCES Analysis(AnalysisID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);
