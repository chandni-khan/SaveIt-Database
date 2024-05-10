USE dbsaveit;
--User table
CREATE TABLE [User] (
   user_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
     user_name VARCHAR(50) NOT NULL,
   email_id VARCHAR(50) NOT NULL,
   mobile_no VARCHAR(15) NOT NULL
);
 
---Expense table
CREATE TABLE Expense (
   expense_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   expense_description VARCHAR(255),
   spend_date DATE NOT NULL,
   amount_spended MONEY NOT NULL, -- Specified data type as MONEY
   user_id INT FOREIGN KEY REFERENCES [Users](user_id),
   expense_category_id INT FOREIGN KEY REFERENCES [ExpenseCategory](expense_category_id)
);

 CREATE TABLE ExpenseCategory (
   expense_category_id INT PRIMARY KEY,
   expense_category_name VARCHAR(50) NOT NULL,
   expense_category_desc VARCHAR(255),
);
 
--Income table
CREATE TABLE Income (
   income_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   income_description VARCHAR(255),
   income MONEY NOT NULL,
   income_date DATE NOT NULL,
   user_id INT FOREIGN KEY REFERENCES [Users](user_id),
   income_category_id INT FOREIGN KEY REFERENCES [IncomeCategory](income_category_id)
);
 
CREATE TABLE IncomeCategory (
    income_category_id INT PRIMARY KEY,
    income_category_name VARCHAR(50) NOT NULL,
    income_category_desc VARCHAR(255)
);

--Budget table
CREATE TABLE Budget (
   budget_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   amount MONEY NOT NULL,
   start_date DATE NOT NULL,
   end_date DATE NOT NULL,
   budget_description VARCHAR(255),
   user_id INT FOREIGN KEY REFERENCES [Users](user_id),
   budget_category_id INT FOREIGN KEY REFERENCES [BudgetCategory](budget_category_id)
);
 
 CREATE TABLE BudgetCategory (
    budget_category_id INT PRIMARY KEY,
    budget_category_name VARCHAR(50) NOT NULL,
    budget_category_desc VARCHAR(255),
);

--Goal table
CREATE TABLE Goal (
   goal_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   goal_for VARCHAR(50) NOT NULL,
   target_amount DECIMAL(18,2),
   desired_date DATE NOT NULL,
   saved_already DECIMAL(18,2) NOT NULL,
   user_id INT FOREIGN KEY REFERENCES [User](user_id)
);
 
 
--reminder table
CREATE TABLE Reminder (
   reminder_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   remind_for VARCHAR(50) NOT NULL,
   reminder_description VARCHAR(255),
   remind_date DATE NOT NULL,
   due_date DATE NOT NULL,
   user_id INT FOREIGN KEY REFERENCES [User](user_id)
);

--Notification 
CREATE TABLE Alert (
   alert_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   alert_for VARCHAR(50) NOT NULL,
   alert_description VARCHAR(255),
   user_id INT FOREIGN KEY REFERENCES [User](user_id)
);
 
