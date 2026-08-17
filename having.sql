SELECT
  user_id,
  SUM(price) AS sum_price
FROM 
  `sql-project-******.section4.orders`
GROUP BY
  user_id
HAVING
  sum_price >= 5000
