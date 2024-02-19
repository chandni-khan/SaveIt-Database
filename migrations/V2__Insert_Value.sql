-- Insert sample data into User table
INSERT INTO [User] (user_name, email_id, mobile_no, password)
VALUES
('Oliver Taylor', 'oliver@example.com', '3334445555', 'securepass'),
('Emma Johnson', 'emma@example.com', '9998887777', 'password123'),
('Sophie Anderson', 'sophie@example.com', '5567112222', 'securepass'),
('Bob Williams', 'bob@example.com', '1112223333', 'securepass'),
('Eva Davis', 'eva@example.com', '4445556666', 'eva123'),

 
 -- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category,spend_date, amount_spended, user_id)
 
VALUES  
 
('Travel', '2024-02-15', 200.00, 64),
 
('Entertainment', '2024-02-14', 30.75, 64);
 


 
 
 
-- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category,spend_date, amount_spended, user_id)
 
VALUES  
 
('Electronics', '2024-02-15', 120.00, 65),
 
('Fitness', '2024-02-14', 45.75, 65);

 
 
 
-- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
 
VALUES  
 
('Clothing', '2024-02-15', 75.66, 68),
 
('Home Decor', '2024-02-14', 40.25, 68);

 
 
 
 
-- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
 
VALUES  
 
('Transportation', '2024-02-15', 30.00, 66),
 
('Books', '2024-02-14', 15.75, 66);
 

 
 
 
-- Insert sample data into Expense table for user 

INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
 
VALUES
('Groceries', '2024-02-15', 66.00, 67),
 
('Entertainment', '2024-02-14', 25.66, 67);
 



-- Insert sample data into Income table for user 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Freelance Design', 800.00, '2024-02-15', 64),
('Dividend Investments', 166.25, '2024-02-14', 64);

 
 
-- Insert sample data into Income table for user 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Business Sales', 1200.00, '2024-02-15', 65),
('Investment Returns', 300.25, '2024-02-14', 65);

 
-- Insert sample data into Income table for user 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Consulting Project', 1800.00, '2024-02-15', 68),
('Dividend Stocks', 266.75, '2024-02-14', 68),
('Online Freelancing', 700.66, '2024-02-13', 68);
;
 
 
-- Insert sample data into Income table for user 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Part-time Job', 600.00, '2024-02-15', 66),
('Consulting Fees', 1660.25, '2024-02-14', 66);

 
 
-- Insert sample data into Income table for user 

INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Salary', 6600.00, '2024-02-15', 67),
('Freelance Work', 1200.66, '2024-02-14', 66);


-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
( 16600.00, '2024-02-01', '2024-02-28', 64),
( 1080.00, '2024-02-01', '2024-02-28', 64);

 
 
-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
( 2000.00, '2024-02-01', '2024-02-28',  65),
(6600.00, '2024-02-01', '2024-02-28',  65);

 
-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
(16600.00, '2024-02-01', '2024-02-28', 68),
(3000.00, '2024-02-01', '2024-02-28',, 68);

 
 
-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
( 12000.00, '2024-02-01', '2024-02-28', 66),
( 10000.00, '2024-02-01', '2024-02-28', 66);

 
 
-- Insert sample data into Budget table for user 
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
(30000.00, '2024-02-01', '2024-02-28', 67),
( 16600.00, '2024-02-01', '2024-02-28', 66);


