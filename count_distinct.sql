SELECT
  COUNT(DISTINCT user_id) AS cnt
FROM
`sql-project-503912.section4.orders`
WHERE
  price >= 2000
