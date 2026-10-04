SELECT
  created,//日付が格納されているカラム
  CONCAT(ROUND((like_cnt / view_cnt) * 100),'%') as like_rate
FROM `sql-project-******.section7.action_logs4`
