use insurance;
SELECT * FROM fees;
SELECT * FROM brokerage;
SELECT * FROM invoice;
SELECT * FROM meeting;
SELECT * FROM opportunity;
SELECT * FROM individualbudgets;

SELECT AccountExe ,COUNT(invoice_number) AS number_of_invoices
FROM invoice
GROUP BY AccountExe;


SELECT YEAR(meeting_date) AS year, COUNT(*) AS meeting_count
FROM meeting
GROUP BY YEAR(meeting_date);


SELECT AccountExe, target, achieved, invoice
FROM cross_sell;


SELECT AccountExe, target, achieved, invoice
FROM new1;


SELECT AccountExe, target, achieved, invoice
FROM renewal;


SELECT account_executive, COUNT(meeting_id) AS number_of_meetings
FROM meetings
GROUP BY account_executive
ORDER BY number_of_meetings DESC;


SELECT opportunity_name, sum(revenue_amount) as rm
FROM opportunity
Group by opportunity_name;


