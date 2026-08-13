SELECT
  *,
CASE
  WHEN pref='東京'THEN'東日本'
  WHEN pref='和歌山'THEN'西日本'
  WHEN pref='埼玉'THEN'東日本'
  WHEN pref='熊本'THEN'西日本'
  WHEN pref='栃木'THEN'東日本'
END AS pref2
FROM
  `sql-project-******.section4.users`
