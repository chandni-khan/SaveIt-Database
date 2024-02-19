CREATE FUNCTION GetTotalExpense(@user_id INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
DECLARE @totalExpense DECIMAL(18,2);
SELECT @totalExpense = SUM(amount_spended)
FROM Expense
WHERE user_id = @user_id;
RETURN ISNULL(@totalExpense, 0);
END;
GO

CREATE FUNCTION GetTotalIncome(@userId INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
   DECLARE @totalIncome DECIMAL(18,2);
   
   SELECT @totalIncome = SUM(income)
   FROM Income
   WHERE user_id = @userId;
 
   RETURN ISNULL(@totalIncome, 0);
END;
GO

CREATE FUNCTION GetTotalBudget(@userId INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
   DECLARE @totalBudget DECIMAL(18,2);
   
   SELECT @totalBudget = SUM(amount)
   FROM Budget
   WHERE user_id = @userId and month(start_date)=month(end_date) and year(start_date)=year(end_date);
   RETURN ISNULL(@totalBudget, 0);
END;
GO
