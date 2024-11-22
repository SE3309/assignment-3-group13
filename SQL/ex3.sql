INSERT INTO User (Username, Password, FirstName, LastName, PhoneNumber)
VALUES 
('john_doe', 'securepass123', 'John', 'Doe', '123-456-7890'),
('jane_smith', 'password123', 'Jane', 'Smith', '987-654-3210'),
('alex_brown', 'alex2024', 'Alex', 'Brown', '555-666-7777'),
('emma_white', 'emmaPW22', 'Emma', 'White', '444-555-6666'),
('mike_jones', 'mike123!', 'Mike', 'Jones', '333-444-5555');



INSERT INTO Income (IncomeSources, DateOfIncome, IncomeReceived, TotalIncome, UserID)
VALUES 
('Salary', '2024-11-01', 5000.00, 5200.00, 1),
('Freelancing', '2024-11-10', 1200.00, 1300.00, 1),
('Investments', '2024-10-20', 800.00, 950.00, 2),
('Part-time Job', '2024-09-15', 1500.00, 1600.00, 3),
('Gift', '2024-11-05', 400.00, 400.00, 4);


INSERT INTO Expense (ExpenseCategory, DateOfExpense, ExpensePaid, TotalExpense, UserID)
VALUES 
('Food', '2024-11-03', 100.00, 120.00, 1),
('Transport', '2024-11-05', 50.00, 60.00, 2),
('Entertainment', '2024-11-08', 200.00, 230.00, 3),
('Utilities', '2024-10-25', 300.00, 320.00, 4),
('Shopping', '2024-11-15', 400.00, 450.00, 5);


INSERT INTO Transaction (Time, Date, TotalPrice, ExpenseID)
VALUES 
('10:30:00', '2024-11-03', 120.00, 1),
('15:00:00', '2024-11-05', 60.00, 2),
('19:45:00', '2024-11-08', 230.00, 3),
('08:00:00', '2024-10-25', 320.00, 4),
('12:15:00', '2024-11-15', 450.00, 5);


INSERT INTO Search (DateOfExpense, `Range`, Category, Amount, ExpenseID)
VALUES 
('2024-11-03', 'Last Week', 'Food', 120.00, 1),
('2024-11-05', 'This Month', 'Transport', 60.00, 2),
('2024-11-08', 'Last Week', 'Entertainment', 230.00, 3),
('2024-10-25', 'Last Month', 'Utilities', 320.00, 4),
('2024-11-15', 'This Month', 'Shopping', 450.00, 5);


INSERT INTO Analysis (CategoryAnalysis, IncomeAnalysis, ExpenseAnalysis, SavingsAnalysis)
VALUES 
('High spending on Food', 'Consistent Salary Income', 'Controlled Transport Expenses', 'Savings above average'),
('Moderate Entertainment Expenses', 'Steady Freelancing Income', 'No significant overspending', 'Savings need improvement'),
('Utilities dominate expenses', 'Investment growth steady', 'Budget exceeded for Shopping', 'Good Savings');



INSERT INTO ExpenseReports (Dates, TotalSavings, Categories, AnalysisID, UserID)
VALUES 
('2024-11-16', 1500.00, 'Food, Transport', 1, 1),
('2024-11-10', 1200.00, 'Entertainment, Utilities', 2, 2),
('2024-11-08', 1000.00, 'Shopping, Food', 3, 3);


