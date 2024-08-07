SELECT
  cr.last_name AS last_name,
  CEIL(AVG(bg.rating)) AS average_rating,
  p.name AS publisher_name
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
JOIN
  publishers AS p
ON
  p.id = bg.publisher_id
WHERE
  p.name = 'Stonemaier Games'
GROUP BY
  last_name,
  publisher_name
ORDER BY
  average_rating DESC;