CREATE VIEW UserFinancialSummary AS
SELECT
    e.user_id,
    dbo.GetTotalExpense(e.user_id) AS totalExpense,
    dbo.GetTotalIncome(e.user_id) AS totalIncome,
    dbo.GetTotalBudget(e.user_id) AS totalBudget
FROM
    Expense e
GROUP BY
    e.user_id;