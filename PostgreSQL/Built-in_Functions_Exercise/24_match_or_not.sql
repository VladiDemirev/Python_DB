SELECT
  companion_full_name,
  email
FROM
  users
WHERE
  LOWER(companion_full_name) LIKE LOWER('%aNd%')
                AND
  email NOT LIKE '%@gmail';