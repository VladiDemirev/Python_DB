SELECT
	CONCAT(address, ' ', address_2) AS apartment_address,
	booked_for AS nights
FROM
	apartments
JOIN
	bookings
USING
	(booking_id)
ORDER BY
	apartments.apartment_id ASC;