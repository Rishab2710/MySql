CREATE SCHEMA torronto;
USE torronto ;

DROP TABLES IF EXISTS events;
DROP TABLES IF EXISTS movies;
DROP TABLES IF EXISTS movies_reviews;
DROP TABLES IF EXISTS restaurants;
DROP TABLES IF EXISTS restaurants_reviews;
DROP TABLES IF EXISTS attractions;
DROP TABLES IF EXISTS theatre;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS province;

CREATE TABLE country(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
country VARCHAR(50),
country_abrev VARCHAR(3),
last_update TIMESTAMP
);

CREATE TABLE province(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
province VARCHAR(50),
province_abrev VARCHAR(3),
country_id INT,
last_update TIMESTAMP,
FOREIGN KEY(country_id) REFERENCES country(id)
);

CREATE TABLE city(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
city VARCHAR(45),
province_id INT,
last_update TIMESTAMP,
FOREIGN KEY(province_id) REFERENCES province(id)
);

CREATE TABLE address(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
address VARCHAR(45),
district VARCHAR(45),
city_id INT,
postal_code VARCHAR(6),
phone VARCHAR(12),
location_axis GEOMETRY,
last_update TIMESTAMP,
FOREIGN KEY(city_id) REFERENCES city(id)
);

CREATE TABLE location(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
location_name VARCHAR(255),
address_id INT,
FOREIGN KEY(address_id) REFERENCES address(id)
);

CREATE TABLE events(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
type VARCHAR(255),
description VARCHAR(255),
opr_hours VARCHAR(255) ,
start_date DATE ,
end_date DATE ,
admission_fee INT ,
location_id INT,
FOREIGN KEY(location_id) REFERENCES location(id)
);

CREATE TABLE theatre(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
theatre_name VARCHAR(45) NOT NULL,
location_id INT,
FOREIGN KEY(location_id) REFERENCES location(id)
);

      
CREATE TABLE movies(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) ,
genre VARCHAR(255) ,
director VARCHAR(255),
cast VARCHAR(255) ,
year VARCHAR(255) ,
language VARCHAR(255) ,
rating DECIMAL(3,2) ,
start_time TIME,
end_time TIME ,
theatre_id INT,
FOREIGN KEY(theatre_id) REFERENCES theatre(id)
);

CREATE TABLE attractions(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
type VARCHAR(255),
description VARCHAR(255) ,
opr_hours VARCHAR(255) ,
admission_fee INT ,
location_id INT,
FOREIGN KEY(location_id) REFERENCES location(id)
);

CREATE TABLE restaurants(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
cuisine VARCHAR(255),
max_price INT,
min_price INT,
rating DECIMAL(3,2),
location_id INT,
FOREIGN KEY(location_id) REFERENCES location(id)
);

CREATE TABLE restaurants_reviews(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(45),
review VARCHAR(255) ,
rating DECIMAL(3,2),
restaurant_id INT(11) NOT NULL,
FOREIGN KEY(restaurant_id) REFERENCES restaurants(id)
);

CREATE TABLE movies_reviews(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(45),
review VARCHAR(255),
rating DECIMAL(3,2),
movies_id INT(11) NOT NULL,
FOREIGN KEY(movies_id) REFERENCES movies(id)
);   