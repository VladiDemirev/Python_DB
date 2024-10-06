CREATE OR REPLACE FUNCTION fn_count_employees_by_town (town_name VARCHAR(20))
RETURNS INT
AS
$$
DECLARE
  count INT;
BEGIN
  SELECT
    COUNT(e.employee_id) as count
  FROM
    towns AS t
  JOIN
    addresses AS a
  USING
    (town_id)
  JOIN
    employees AS e
  USING
    (address_id)
  WHERE
     t.name = town_name
  INTO count;
  RETURN count;
END;
$$
LANGUAGE plpgsql;