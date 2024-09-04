SELECT P.product_id, IFNULL(ROUND(SUM(units * price)/SUM(units) , 2), 0) AS average_price
FROM UnitsSold U
RIGHT JOIN Prices P 
    ON start_date <= purchase_date AND purchase_date <= end_date AND U.product_id = P.product_id
GROUP BY product_id