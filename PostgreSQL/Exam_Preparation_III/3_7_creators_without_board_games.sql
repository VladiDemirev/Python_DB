SELECT
  cr.id,
  CONCAT(cr.first_name, ' ', cr.last_name) AS creator_name,
  email
FROM
  creators AS cr
LEFT JOIN
  creators_board_games AS cbg
ON
  cr.id = cbg.creator_id
WHERE
  cbg.creator_id IS NULL
ORDER BY
  creator_name ASC;