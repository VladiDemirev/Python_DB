SELECT
  UPPER(name),
  start_date
FROM
  projects
WHERE
  UPPER(name) LIKE 'MOUNT%'
ORDER BY
  id;