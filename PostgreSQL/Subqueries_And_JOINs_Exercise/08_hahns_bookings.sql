SELECT
  COUNT(*)
FROM
  customers
WHERE
  last_name = 'Hahn';
 
-- OPTION 2
 
-- SELECT
--   COUNT(*)
-- FROM
--   customers
-- JOIN
--   bookings
-- USING
--   (customer_id)
-- WHERE
--   last_name = 'Hahn';