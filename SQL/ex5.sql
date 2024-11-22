SELECT Username, PhoneNumber
FROM User;


SELECT User.Username, Expense.ExpenseCategory, Expense.DateOfExpense, Expense.ExpensePaid
FROM User
JOIN Expense ON User.UserID = Expense.UserID;


SELECT Username
FROM User
WHERE UserID IN (
    SELECT UserID
    FROM Income
    WHERE TotalIncome > 50000
);


SELECT UserID, SUM(TotalExpense) AS TotalExpenses
FROM Expense
GROUP BY UserID;


SELECT Username
FROM User
WHERE EXISTS (
    SELECT 1
    FROM Expense
    WHERE User.UserID = Expense.UserID
);


SELECT Transaction.TransactionID, Transaction.TotalPrice, Expense.ExpenseCategory
FROM Transaction
JOIN Expense ON Transaction.ExpenseID = Expense.ExpenseID
WHERE Transaction.TotalPrice > 1000;



SELECT User.Username, ExpenseReports.TotalSavings, Analysis.CategoryAnalysis
FROM User
JOIN ExpenseReports ON User.UserID = ExpenseReports.UserID
JOIN Analysis ON ExpenseReports.AnalysisID = Analysis.AnalysisID
WHERE ExpenseReports.Dates > '2023-01-01';
