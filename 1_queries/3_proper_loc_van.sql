-- SELECT Properties.ID, title, cost_per_night, AVG(property_reviews.rating) AS average_RATING
-- FROM Properties
-- JOIN property_reviews ON guest_id = owner_id
-- WHERE city LIKE '%ancouv%'
-- GROUP BY Properties.ID
-- HAVING AVG(property_reviews.rating) >= 4
-- ORDER BY cost_per_night
-- LIMIT 10;
SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
LEFT JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;