SELECT
  COUNT(DISTINCT user_id) AS cnt
FROM
  `sql-project-******.section4.orders`
WHERE
  price >= 2000
