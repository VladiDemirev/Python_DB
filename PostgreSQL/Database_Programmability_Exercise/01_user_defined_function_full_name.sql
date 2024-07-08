-- CREATE OR REPLACE FUNCTION fn_full_name(
--   first_name VARCHAR(20),
--   last_name VARCHAR(20)
-- ) RETURNS VARCHAR
-- LANGUAGE plpgsql
-- AS
-- $$
-- DECLARE
--   full_name VARCHAR;
-- BEGIN
--   SELECT
--     CONCAT(INITCAP(first_name), ' ', INITCAP(last_name)) INTO full_name;
--   RETURN full_name;
-- END;
-- $$;
 
-- OPTION 2
 
CREATE OR REPLACE FUNCTION fn_full_name(
  first_name VARCHAR(20),
  last_name VARCHAR(20)
) RETURNS VARCHAR
LANGUAGE plpgsql
AS
$$
DECLARE
  full_name VARCHAR;
BEGIN
  full_name := CONCAT(INITCAP(first_name), ' ', INITCAP(last_name));
  RETURN full_name;
END;
$$;