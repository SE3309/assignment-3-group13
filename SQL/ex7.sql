CREATE VIEW HighExpenses AS
SELECT 
    u.UserID,
    u.Username,
    e.ExpenseCategory,
    e.TotalExpense
FROM 
    User u
JOIN 
    Expense e ON u.UserID = e.UserID
WHERE 
    e.TotalExpense > 5000;



SELECT * FROM HighExpenses WHERE ExpenseCategory = 'Travel';


CREATE VIEW IncomeSummary AS
SELECT 
    u.UserID,
    u.Username,
    SUM(i.TotalIncome) AS TotalIncome
FROM 
    User u
JOIN 
    Income i ON u.UserID = i.UserID
GROUP BY 
    u.UserID, u.Username;



SELECT * FROM IncomeSummary WHERE TotalIncome > 20000;

/*Updated SQL sent to Lakshman*/