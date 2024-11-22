INSERT INTO ExpenseReports (Dates, TotalSavings, Categories, AnalysisID, UserID)
SELECT CURDATE(), 5000, 'High Spender', 1, UserID
FROM Expense
WHERE TotalExpense > 10000;


UPDATE Expense
SET ExpenseCategory = 'Archived'
WHERE DateOfExpense < '2023-01-01';


DELETE FROM Transaction
WHERE ExpenseID IN (
    SELECT ExpenseID
    FROM Expense
    WHERE ExpensePaid < 100
);


