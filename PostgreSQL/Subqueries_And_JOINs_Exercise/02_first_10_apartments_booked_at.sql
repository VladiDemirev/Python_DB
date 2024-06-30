SELECT
  name,
  country,
  bookings.booked_at::DATE
FROM
  apartments
LEFT JOIN
    bookings
USING
  (booking_id)
LIMIT 10;