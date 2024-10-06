SELECT
  CONCAT(cr.first_name, ' ', cr.last_name) AS full_name,
  cr.email,
  MAX(bg.rating) AS rating
FROM
  creators AS cr
JOIN
  creators_board_games AS cbg
ON
  cbg.creator_id = cr.id
JOIN
  board_games AS bg
ON
  bg.id = cbg.board_game_id
WHERE
  cr.email LIKE '%.com'
GROUP BY
  full_name,
  cr.email
ORDER BY
  full_name ASC;