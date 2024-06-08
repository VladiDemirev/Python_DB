SELECT
  LEFT(first_name, 2) AS initials,
  count (*) AS user_count
FROM
  users
GROUP BY
  initials
ORDER BY
  user_count DESC,
  initials ASC;