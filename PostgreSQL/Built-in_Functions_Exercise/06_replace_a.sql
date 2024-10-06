SELECT
  REPLACE(mountain_range, 'a', '@') AS  replace_a,
  REPLACE(mountain_range, 'A', '$') as replace_A
FROM
  mountains;