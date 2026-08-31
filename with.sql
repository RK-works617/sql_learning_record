WITH view1 AS 
  (SELECT orders.user_id,orders.price,age
   FROM `sql-project-******.section6.orders` AS orders
   INNER JOIN `sql-project-******.section6.users` AS users
   on orders.user_id = users.user_id),
view2 AS
  (SELECT 
    CASE
      WHEN age>=20 and age<=29 THEN '20代'
      WHEN age>=30 and age<=39 THEN '30代'
      WHEN age>=40 and age<=49 THEN '40代'
    END AS generation,
    age,
    price
   FROM view1),
view3 AS
  (SELECT view1.user_id,view1.price,view1.age,view2.generation
   FROM view1 INNER JOIN view2 on view1.age = view2.age)
SELECT 
  generation,
  SUM(price) AS sum_price
FROM
  view2
GROUP BY
  view2.generation
ORDER BY
  view2.generation
