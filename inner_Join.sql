SELECT
  gender,
  AVG(price) AS average
FROM 
  `sql-project-******.section5.orders_exercise` AS orders
  INNER JOIN `sql-project-******.section5.users_exercise` as users
  on orders.user_id = users.user_id
GROUP BY
  gender
