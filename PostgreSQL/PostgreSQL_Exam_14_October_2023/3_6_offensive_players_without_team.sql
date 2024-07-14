SELECT
  p.id,
  CONCAT(p.first_name, ' ', p.last_name) AS full_name,
  p.age,
  p.position,
  p.salary,
  sd.pace,
  sd.shooting
FROM
  players AS p
LEFT JOIN
  teams AS t
ON
  t.id = p.team_id
LEFT JOIN
  skills_data AS sd
ON
  sd.id = p.skills_data_id
WHERE
  p.position = 'A'
    AND
  p.team_id IS NULL
    AND
  (sd.pace + sd.shooting) > 130;