SELECT
  *
FROM 
  `sql-project-******.section7.orders`
WHERE
  TIMESTAMP_DIFF(TIMESTAMP('2023-01-01 00:00:00 UTC'),created,day)<=30


WITH orders2 AS(
  SELECT
    created,
    TIMESTAMP_TRUNC(created,month) AS month 
  FROM `sql-project-503912.section7.orders`)

SELECT
  month,
  COUNT(*) AS cnt
FROM
  orders2
GROUP BY
  month
