-- OPTION 1
SELECT
  title
FROM
  books
WHERE
  title LIKE 'The%'
ORDER BY
  id;
 
-- OPTION 2
SELECT
  title
FROM
  books
WHERE
  SUBSTRING(title, 1, 4) = 'The '
ORDER BY
  id;