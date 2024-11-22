import random
from faker import Faker

# Initialize Faker
fake = Faker()

# Parameters
num_users = 5  # For the 'User' table
num_incomes = 5  # For the 'Income' table
num_expenses = 5  # For the 'Expense' table
num_transactions = 3  # For the 'Transaction' table
num_reports = 3  # For the 'ExpenseReports' table

# Generate Users
with open("users.sql", "w") as f:
    f.write("-- Insert Users\n")
    for i in range(num_users):
        username = fake.unique.user_name()
        password = fake.password(length=10)
        first_name = fake.first_name()
        last_name = fake.last_name()
        phone = fake.phone_number()
        f.write(f"INSERT INTO User (Username, Password, FirstName, LastName, PhoneNumber) "
                f"VALUES ('{username}', '{password}', '{first_name}', '{last_name}', '{phone}');\n")

# Generate Incomes
with open("income.sql", "w") as f:
    f.write("-- Insert Income\n")
    for i in range(num_incomes):
        user_id = random.randint(1, num_users)
        income_source = random.choice(['Job', 'Freelancing', 'Investments', 'Other'])
        date_of_income = fake.date_between(start_date='-2y', end_date='today')
        income_received = round(random.uniform(500, 5000), 2)
        total_income = income_received * random.randint(1, 12)  # Simulating monthly income
        f.write(f"INSERT INTO Income (IncomeSources, DateOfIncome, IncomeReceived, TotalIncome, UserID) "
                f"VALUES ('{income_source}', '{date_of_income}', {income_received}, {total_income}, {user_id});\n")

# Generate Expenses
with open("expense.sql", "w") as f:
    f.write("-- Insert Expenses\n")
    for i in range(num_expenses):
        user_id = random.randint(1, num_users)
        category = random.choice(['Food', 'Transport', 'Utilities', 'Entertainment'])
        date_of_expense = fake.date_between(start_date='-2y', end_date='today')
        expense_paid = round(random.uniform(10, 500), 2)
        total_expense = expense_paid * random.randint(1, 10)  # Simulating multiple expenses
        f.write(f"INSERT INTO Expense (ExpenseCategory, DateOfExpense, ExpensePaid, TotalExpense, UserID) "
                f"VALUES ('{category}', '{date_of_expense}', {expense_paid}, {total_expense}, {user_id});\n")

# Generate Transactions
with open("transactions.sql", "w") as f:
    f.write("-- Insert Transactions\n")
    for i in range(num_transactions):
        expense_id = random.randint(1, num_expenses)
        time = fake.time()
        date = fake.date_between(start_date='-2y', end_date='today')
        total_price = round(random.uniform(10, 500), 2)
        f.write(f"INSERT INTO Transaction (Time, Date, TotalPrice, ExpenseID) "
                f"VALUES ('{time}', '{date}', {total_price}, {expense_id});\n")

# Generate Expense Reports
with open("expense_reports.sql", "w") as f:
    f.write("-- Insert Expense Reports\n")
    for i in range(num_reports):
        user_id = random.randint(1, num_users)
        analysis_id = random.randint(1, num_reports)  # Assuming prior analysis IDs
        date = fake.date_between(start_date='-2y', end_date='today')
        total_savings = round(random.uniform(100, 1000), 2)
        categories = random.choice(['Food, Transport', 'Utilities, Entertainment', 'Other'])
        f.write(f"INSERT INTO ExpenseReports (Dates, TotalSavings, Categories, AnalysisID, UserID) "
                f"VALUES ('{date}', {total_savings}, '{categories}', {analysis_id}, {user_id});\n")
