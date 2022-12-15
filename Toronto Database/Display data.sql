SELECT *
FROM address;

SELECT *
FROM city;

SELECT *
FROM province;

SELECT *
FROM country;

SELECT *
FROM location;

SELECT *
FROM events;

SELECT * 
FROM attractions;

SELECT *
FROM movies;

SELECT *
FROM movies_reviews;

SELECT * 
FROM restaurants;

SELECT *
FROM restaurants_reviews;

SELECT *
FROM theatre;

SELECT events.name, events.type, events.description , events.opr_hours, events.start_date,
events.end_date, events.admission_fee, location.location_name, address.address,city.city,
province.province_abrev AS province , country.country_abrev AS country
FROM events
INNER JOIN location
ON events.location_id = location.id
INNER JOIN address 
ON location.address_id = address.id
INNER JOIN city
ON address.city_id = city.id
INNER JOIN province
ON city.province_id = province.id
INNER JOIN country
ON province.country_id = country.id
ORDER BY 1;

SELECT movies.name,movies.genre,movies.director,movies.cast,movies.year,movies.language,
movies.rating,movies.start_time,movies.end_time,movies_reviews.name,movies_reviews.review,movies_reviews.rating
FROM movies
INNER JOIN movies_reviews
ON movies.id=movies_reviews.movies_id;

SELECT *
FROM movies
INNER JOIN movies_reviews
ON movies.id=movies_reviews.movies_id
INNER JOIN theatre
ON movies.theatre_id=theatre.id;

SELECT restaurants.id,restaurants.name,restaurants.cuisine,
restaurants.max_price,restaurants.min_price,restaurants.rating,
restaurants_reviews.name,restaurants_reviews.review,restaurants_reviews.rating
FROM restaurants
JOIN restaurants_reviews
ON restaurants.id=restaurants_reviews.restaurant_id;

SELECT restaurants.id,restaurants.name,restaurants.cuisine,
restaurants.max_price,restaurants.min_price,restaurants.rating,
restaurants_reviews.name,restaurants_reviews.review,restaurants_reviews.rating,location.location_name,
address.address,city.city,province.province_abrev AS province , country.country_abrev AS country
FROM restaurants
INNER JOIN restaurants_reviews
ON restaurants.id=restaurants_reviews.restaurant_id
INNER JOIN location
ON restaurants.location_id = location.id
INNER JOIN address
ON location.address_id = address.id
INNER JOIN city
ON address.city_id = city.id
INNER JOIN province
ON city.province_id = province.id
INNER JOIN country
ON province.country_id = country.id;

SELECT *
FROM movies
INNER JOIN movies_reviews
ON movies.id=movies_reviews.movies_id
INNER JOIN theatre
ON movies.theatre_id=theatre.id
INNER JOIN location
ON theatre.location_id = location.id
INNER JOIN address
ON location.address_id = address.id
INNER JOIN city
ON address.city_id = city.id
INNER JOIN province
ON city.province_id = province.id
INNER JOIN country
ON province.country_id = country.id
