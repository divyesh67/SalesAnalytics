-- Show transactions in 2020 join by date table

SELECT 
    transactions.*, date.*
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020;

-- Show total revenue in year 2020,

SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020
        AND transactions.currency = 'INR'
        OR transactions.currency = 'USD';

-- Show total revenue in year 2020, January Month,

SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020
        AND date.month_name = 'January'
        AND (transactions.currency = 'INR'
        OR transactions.currency = 'USD');


-- Show total revenue in year 2020 in Chennai

SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020
        AND transactions.market_code = 'Mark001';