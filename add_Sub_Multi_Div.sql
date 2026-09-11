SELECT
  like_cnt + view_cnt AS add,
  like_cnt - view_cnt AS sub,
  like_cnt * view_cnt AS multi,
  like_cnt / view_cnt AS div
FROM 
  `sql-project-503912.section7.action_logs`
