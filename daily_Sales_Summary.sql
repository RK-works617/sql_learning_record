SELECT
  DATE(created,'Asia/Tokyo') AS _date,
  SUM(price) AS sum_price,
  gender
FROM `sql-project-******.section8.orders` AS orders
  INNER JOIN `sql-project-******.section8.users` AS users
  on orders.user_id = users.user_id
GROUP BY
  _date,gender
ORDER BY
  _date,gender
