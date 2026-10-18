WITH data_mart AS(
  SELECT
    o.order_id,
    o.user_id,
    o.item_id,
    o.price,
    i.category_id,
    c.name
  FROM `sql-project-503912.section8.orders` AS o
    INNER JOIN `sql-project-503912.section8.items` AS i
    ON o.item_id = i.item_id
    INNER JOIN `sql-project-503912.section8.categories` AS c
    ON i.category_id = c.category_id)

SELECT
  category_id,
  name,
  COUNT(DISTINCT(user_id)) AS uu,
  SUM(price) AS sum_price,
  ROUND(SUM(price) / COUNT(DISTINCT(user_id)),1) AS per_user_sales
FROM
  data_mart
GROUP BY
  category_id,name
