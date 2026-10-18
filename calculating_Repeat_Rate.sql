WITH f AS(
  SELECT
    user_id,
    MIN(created) AS first_created
  FROM 
    `sql-project-******.section8.orders`
  GROUP BY
    user_id),


data_mart AS(
  SELECT
    f.user_id,
    COUNT(f.user_id) AS cnt
  FROM
    `sql-project-******.section8.orders` AS o
    INNER JOIN f
    ON f.user_id = o.user_id
    AND f.first_created < o.created
    AND DATE_DIFF(o.created,f.first_created,DAY) <= 30
  GROUP BY
    f.user_id
  HAVING
    cnt >= 2)


  SELECT
    COUNT(DISTINCT(o.user_id)) AS all_user_cnt,
    COUNT(DISTINCT(data_mart.user_id)) AS repeat_user_cnt,
    COUNT(DISTINCT(data_mart.user_id)) / COUNT(DISTINCT(o.user_id)) AS repeat_rate
  FROM
   `sql-project-******.section8.orders` AS o
    LEFT JOIN data_mart
    ON o.user_id = data_mart.user_id
  
