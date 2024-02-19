CREATE VIEW UserFinancialSummary AS
SELECT
    e.user_id,
    dbo.GetTotalExpense(e.user_id) AS totalExpense,
    dbo.GetTotalIncome(e.user_id) AS totalIncome,
    dbo.GetTotalBudget(e.user_id) AS totalBudget,
    CASE
        WHEN dbo.GetTotalExpense(e.user_id) <= dbo.GetTotalIncome(e.user_id)
        AND dbo.GetTotalBudget(e.user_id) <= dbo.GetTotalIncome(e.user_id)
             AND dbo.GetTotalBudget(e.user_id) >= dbo.GetTotalExpense(e.user_id) THEN 'Achieved'
        ELSE 'Not Achieved'
    END AS Status
FROM
    Expense e
GROUP BY
    e.user_id;