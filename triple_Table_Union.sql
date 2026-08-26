SELECT
  DISTINCT(items.name)
FROM 
  `sql-project-******.section5.users_exercise` AS users
  INNER JOIN `sql-project-******.section5.orders_exercise` AS orders
  on users.user_id=orders.user_id
  INNER JOIN `sql-project-******.section5.items_exercise` AS items
  on orders.item_id=items.item_id
WHERE
  gender='男性'
