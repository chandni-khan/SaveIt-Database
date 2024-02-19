-- Insert sample data into User table
INSERT INTO [User] (user_name, email_id, mobile_no, password)
VALUES
('Oliver Taylor', 'oliver@example.com', '3334445555', 'securepass'),
('Emma Johnson', 'emma@example.com', '9998887777', 'password123'),
('Sophie Anderson', 'sophie@example.com', '5551112222', 'securepass'),
('Bob Williams', 'bob@example.com', '1112223333', 'securepass'),
('Eva Davis', 'eva@example.com', '4445556666', 'eva123'),
('Michael Jackson', 'michael@example.com', '7778889999', 'thriller'),
('John Doe', 'john@example.com', '1234567890', 'password123'),
('Jane Smith', 'jane@example.com', '9876543210', 'pass123'),
('Alice Johnson', 'alice@example.com', '5555555555', 'securepwd');
 
 -- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category,spend_date, amount_spended, user_id)
 
VALUES  
 
('Travel', '2024-02-15', 200.00, 46),
 
('Entertainment', '2024-02-14', 30.75, 46),
 
('Clothing', '2024-02-13', 80.50, 46),
 
('Groceries', '2024-02-12', 60.25, 46),
 
('Home Decor', '2024-02-11', 100.00, 46);

 
-- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category,spend_date, amount_spended, user_id)
 
VALUES  
 
('Travel', '2024-02-15', 200.00, 46),
 
('Entertainment', '2024-02-14', 30.75, 46),
 
('Clothing', '2024-02-13', 80.50, 46),
 
('Groceries', '2024-02-12', 60.25, 46),
 
('Home Decor', '2024-02-11', 100.00, 46);
 
 
 
-- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category,spend_date, amount_spended, user_id)
 
VALUES  
 
('Electronics', '2024-02-15', 120.00, 47),
 
('Fitness', '2024-02-14', 45.75, 47),
 
('Books', '2024-02-13', 25.50, 47),
 
('Dining out', '2024-02-12', 90.25, 47),
 
('Home Improvement', '2024-02-11', 150.00, 47);
 
 
 
-- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
 
VALUES  
 
('Clothing', '2024-02-15', 75.50, 48),
 
('Home Decor', '2024-02-14', 40.25, 48),
 
('Gadgets', '2024-02-13', 120.75, 48),
 
('Hobbies', '2024-02-12', 60.00, 48),
 
('Vacation', '2024-02-11', 500.00, 48);
 
 
 
 
-- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
 
VALUES  
 
('Transportation', '2024-02-15', 30.00, 50),
 
('Books', '2024-02-14', 15.75, 50),
 
('Electronics', '2024-02-13', 200.50, 50),
 
('Fitness', '2024-02-12', 50.25, 50),
 
('Travel', '2024-02-11', 300.00, 50);
 
 
 
-- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
 
VALUES
('Groceries', '2024-02-15', 50.00, 51),
 
('Entertainment', '2024-02-14', 25.50, 51),
 
('Utilities', '2024-02-13', 100.00, 51),
 
('Dining out', '2024-02-12', 75.25, 51),
 
('Shopping', '2024-02-11', 120.50, 51);


-- Insert sample data into Income table for user 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Freelance Design', 800.00, '2024-02-15', 46),
('Dividend Investments', 150.25, '2024-02-14', 46),
('Programming Projects', 600.50, '2024-02-13', 46),
('E-commerce Sales', 350.75, '2024-02-12', 46),
('Real Estate Rental', 1200.00, '2024-02-11', 46);
 
 
-- Insert sample data into Income table for user 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Business Sales', 1200.00, '2024-02-15', 47),
('Investment Returns', 300.25, '2024-02-14', 47),
('Consultancy Income', 500.50, '2024-02-13', 47),
('Freelance Writing', 200.75, '2024-02-12', 47),
('Online Courses', 1000.00, '2024-02-11', 47);
 
 
-- Insert sample data into Income table for user 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Consulting Project', 1800.00, '2024-02-15', 48),
('Dividend Stocks', 250.75, '2024-02-14', 48),
('Online Freelancing', 700.50, '2024-02-13', 48),
('E-commerce Sales', 450.25, '2024-02-12', 48),
('Investment Gains', 1200.00, '2024-02-11', 48);
 
 
-- Insert sample data into Income table for user 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Part-time Job', 600.00, '2024-02-15', 50),
('Consulting Fees', 1500.25, '2024-02-14', 50),
('Stock Dividends', 200.50, '2024-02-13', 50),
('Online Sales', 400.75, '2024-02-12', 50),
('Tutoring', 300.00, '2024-02-11', 50);
 
 
-- Insert sample data into Income table for user 

INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Salary', 5000.00, '2024-02-15', 51),
('Freelance Work', 1200.50, '2024-02-14', 50),
('Investment Dividends', 300.00, '2024-02-13', 48),
('Side Business', 800.75, '2024-02-12', 47),
('Rental Income', 1000.00, '2024-02-11', 46);

-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
( 1500.00, '2024-02-01', '2024-02-28', 200.00, 46),
( 100.00, '2024-02-01', '2024-02-28', 10.00, 46),
( 50.00, '2024-02-01', '2024-02-28', 15.00, 46),
( 300.00, '2024-02-01', '2024-02-28', 40.00, 46),
( 75.00, '2024-02-01', '2024-02-28', 5.00, 46);
 
 
-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
( 200.00, '2024-02-01', '2024-02-28', 30.00, 47),
(50.00, '2024-02-01', '2024-02-28', 5.00, 47),
(120.00, '2024-02-01', '2024-02-28', 15.00, 47),
( 80.00, '2024-02-01', '2024-02-28', 10.00, 47),
(150.00, '2024-02-01', '2024-02-28', 20.00, 47);
 
 
-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
(150.00, '2024-02-01', '2024-02-28', 20.00, 48),
(300.00, '2024-02-01', '2024-02-28', 40.00, 48),
( 50.00, '2024-02-01', '2024-02-28', 10.00, 48),
( 100.00, '2024-02-01', '2024-02-28', 15.00, 48),
( 80.00, '2024-02-01', '2024-02-28', 25.00, 48);
 
 
-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
( 1200.00, '2024-02-01', '2024-02-28', 100.00, 50),
( 100.00, '2024-02-01', '2024-02-28', 15.00, 50),
( 50.00, '2024-02-01', '2024-02-28', 10.00, 50),
(200.00, '2024-02-01', '2024-02-28', 25.00, 50),
( 75.00, '2024-02-01', '2024-02-28', 5.00, 50);
 
 
-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
(300.00, '2024-02-01', '2024-02-28', 50.00, 51),
( 150.00, '2024-02-01', '2024-02-28', 20.00, 50),
( 200.00, '2024-02-01', '2024-02-28', 30.00, 48),
( 100.00, '2024-02-01', '2024-02-28', 15.00, 47),
( 250.00, '2024-02-01', '2024-02-28', 40.00, 46);

