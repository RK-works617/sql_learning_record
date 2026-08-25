SELECT
  items.name,
  orders.order_id
FROM 
  `sql-project-******.section5.items_exercise` AS items
  LEFT JOIN `sql-project-******.section5.orders_exercise` AS orders
  on items.item_id = orders.item_id
WHERE
  orders.order_id is null
