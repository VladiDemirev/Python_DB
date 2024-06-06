-- OPTION 1
SELECT
  first_name,
  last_name,
  EXTRACT(year FROM born) AS year
FROM authors;
 
-- OPTION 2
SELECT
  first_name,
  last_name,
  TO_CHAR(born, 'YYYY') AS year
FROM authors;