SELECT stock_name , 
SUM(CASE WHEN operation='Sell' THEN price ELSE 0 END) - SUM(CASE WHEN operation='Buy' THEN price END) capital_gain_loss
FROM Stocks
GROUP BY stock_name;