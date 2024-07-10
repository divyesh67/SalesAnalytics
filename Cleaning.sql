SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.transactions.market_code = 'Mark001';
        
        
SELECT 
    *
FROM
    sales.transactions
WHERE
    sales_amount <= 0;

use sales;

SELECT 
    COUNT(*)
FROM
    transactions
WHERE
    transactions.currency = 'INR';
SELECT 
    COUNT(*)
FROM
    transactions
WHERE
    transactions.currency = 'INR';

SELECT 
    *
FROM
    transactions
WHERE
    transactions.currency = 'USD'
        OR transactions.currency = 'USD';