SELECT
  user_id,
  SUM(price),
  IF(SUM(price)>=3000,'10%','5%') AS coupon
FROM
  `sql-project-503912.section4.orders`
GROUP BY
  user_id
