-- USE my_portfolio;

-- This query calculates the "Aging" and "Overdue" metrics per department
-- It helps Finance teams spot who is losing money.

SELECT 
    d.name as department_name,
    COUNT(f.invoice_id) AS total_invoices,
    FORMAT(SUM(f.invoice_amount), 2) AS total_billed,
    FORMAT(SUM(f.paid_amount), 2) AS total_paid,
    -- Calculate overdue amount only if status is 'Overdue'
    FORMAT(SUM(CASE WHEN f.status = 'Overdue' THEN f.invoice_amount ELSE 0 END), 2) AS overdue_amount
FROM fact_invoices f
JOIN dim_department d ON f.department_id = d.id
GROUP BY d.name;
