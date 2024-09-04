SELECT product_name, SUM(unit) AS unit
FROM Orders
INNER JOIN Products USING (product_id)
WHERE DATE_FORMAT(order_date, '%Y-%m') = '2020-02'
GROUP BY product_id
HAVING SUM(unit) >= 100