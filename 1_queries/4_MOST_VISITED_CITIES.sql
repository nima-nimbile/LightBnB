SELECT properties.city, count(reservations) AS total_reservations
FROM properties
LEFT JOIN Reservations ON Properties.ID = property_id
GROUP BY properties.city
ORDER BY total_reservations DESC; 