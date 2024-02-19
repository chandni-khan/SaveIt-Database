-- Insert sample data into User table
INSERT INTO [User] (user_name, email_id, mobile_no, password)
VALUES
('Oliver Taylor', 'oliver@example.com', '3334445555', 'securepass'),
('Emma Johnson', 'emma@example.com', '9998887777', 'password123'),
('Sophie Anderson', 'sophie@example.com', '5567112222', 'securepass'),
('Bob Williams', 'bob@example.com', '1112223333', 'securepass'),
('Eva Davis', 'eva@example.com', '4445556666', 'eva123');

 
 -- Insert  data into Expense table for user 

INSERT INTO Expense (expense_category,spend_date, amount_spended, user_id)
VALUES  
('Travel', '2024-02-15', 200.00, 64),
('Entertainment', '2024-02-14', 30.75, 64),
('Electronics', '2024-02-15', 120.00, 65),
('Fitness', '2024-02-14', 45.75, 65),
('Clothing', '2024-02-15', 75.66, 68),
('Home Decor', '2024-02-14', 40.25, 68),
('Transportation', '2024-02-15', 30.00, 66),
('Books', '2024-02-14', 15.75, 66),
('Groceries', '2024-02-15', 66.00, 67),
('Entertainment', '2024-02-14', 25.66, 67);
 



-- Insert  data into Income table for user 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Freelance Design', 8000.00, '2024-02-15', 64),
('Dividend Investments', 1660.25, '2024-02-14', 64),
('Business Sales', 12000.00, '2024-02-15', 65),
('Investment Returns', 3000.25, '2024-02-14', 65),
('Consulting Project', 18000.00, '2024-02-15', 68),
('Dividend Stocks', 2660.75, '2024-02-14', 68),
('Online Freelancing', 7000.66, '2024-02-13', 68),
('Part-time Job', 6000.00, '2024-02-15', 66),
('Consulting Fees', 16600.25, '2024-02-14', 66),
('Salary', 66000.00, '2024-02-15', 67),
('Freelance Work', 12000.66, '2024-02-14', 66);


-- Insert  data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, user_id)
VALUES
( 16600.00, '2024-02-01', '2024-02-28', 64),
( 2000.00, '2024-02-01', '2024-02-28',  65),
(6600.00, '2024-02-01', '2024-02-28',  65),
(9000.00, '2024-02-01', '2024-02-28', 68),
( 12000.00, '2024-02-01', '2024-02-28', 66),
(3000.00, '2024-02-01', '2024-02-28', 67),
( 16600.00, '2024-02-01', '2024-02-28', 66);


