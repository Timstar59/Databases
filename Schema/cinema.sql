
DROP DATABASE IF EXISTS cinema;
CREATE DATABASE cinema;
USE cinema;

CREATE TABLE movies (
	moviename_id VARCHAR(70),
	movie_genre VARCHAR(50) NOT NULL,
	movie_price DECIMAL NOT NULL,
    movie_rating DECIMAL NOT NULL,
	PRIMARY KEY (moviename_id)
);

CREATE TABLE customer (
	customer_id INT, 
	customer_name VARCHAR(50),
	customer_address VARCHAR(70),
	new_memeber BOOLEAN,
	PRIMARY KEY (customer_id)	
);

CREATE TABLE  film_booking (
	booking_price_id DECIMAL, 
	fk_customer_id VARCHAR(50),
	movie_restrictions VARCHAR(70),
	movie_avaliabilty DATETIME NOT NULL,
    premium_seats BOOLEAN,
    fk_moviename_id VARCHAR(70),
	PRIMARY KEY (booking_price_id),
    FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (fk_moviename_id) REFERENCES movies(moviename_id) 	
);

