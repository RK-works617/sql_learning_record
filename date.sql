SELECT
  created,
  DATETIME(created,'Asia/Tokyo') AS _datetime_jst
FROM `sql-project-******.section7.orders`
