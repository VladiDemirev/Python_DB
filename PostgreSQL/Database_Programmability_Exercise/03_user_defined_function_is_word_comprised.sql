CREATE OR REPLACE FUNCTION fn_is_word_comprised (
  set_of_letters VARCHAR(50),
  word VARCHAR(50)
)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN TRIM(LOWER(word), LOWER(set_of_letters)) = '';
END;
$$;

-- OPTION 2
 
-- CREATE FUNCTION fn_is_word_comprised (
--   set_of_letters VARCHAR(50),
--   word VARCHAR(50)
-- )
-- RETURNS BOOLEAN
-- LANGUAGE plpgsql
-- AS
-- $$
-- DECLARE
--   counter INT := 0;
--   letter VARCHAR;
-- BEGIN
--   WHILE counter <= LENGTH(word) LOOP
--     letter := SUBSTRING(lower(word), counter, 1);
--     IF POSITION(letter IN LOWER(set_of_letters)) = 0 THEN
--       RETURN FALSE;
--     END IF;
--     counter := counter + 1;
--   END LOOP;
--   RETURN TRUE;
-- END;
-- $$;