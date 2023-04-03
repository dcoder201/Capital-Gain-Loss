# Write your MySQL query statement below
SELECT stock_name, 
       SUM(CASE WHEN operation = 'Sell' THEN price ELSE -price END) AS capital_gain_loss 
FROM Stocks 
GROUP BY stock_name;




/* 
Case 1
Input
Stocks =
| stock_name   | operation | operation_day | price |
| ------------ | --------- | ------------- | ----- |
| Leetcode     | Buy       | 1             | 1000  |
| Corona Masks | Buy       | 2             | 10    |
| Leetcode     | Sell      | 5             | 9000  |
| Handbags     | Buy       | 17            | 30000 |
| Corona Masks | Sell      | 3             | 1010  |
| Corona Masks | Buy       | 4             | 1000  |...
View all 
Output
| stock_name   | capital_gain_loss |
| ------------ | ----------------- |
| Leetcode     | 8000              |
| Corona Masks | 9500              |
| Handbags     | -23000            |
Expected
| stock_name   | capital_gain_loss |
| ------------ | ----------------- |
| Leetcode     | 8000              |
| Corona Masks | 9500              |
| Handbags     | -23000            |

*/
