WITH view AS 
(SELECT
  orders.order_id,
  orders.price,
  parent_categories.name
FROM 
  `sql-project-******.section8.orders` AS orders
  INNER JOIN `sql-project-******.section8.items` AS items
  ON orders.item_id = items.item_id
  INNER JOIN `sql-project-******.section8.categories2` AS categories2
  ON items.category_id = categories2.category_id
  INNER JOIN `sql-project-******.section8.parent_categories` AS parent_categories
  ON categories2.parent_id = parent_categories.id)

SELECT
  SUM(price) AS sum_price,
  name
FROM
  view
GROUP BY
  name
