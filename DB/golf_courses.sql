BEGIN TRANSACTION;

DROP TABLE IF EXISTS golf_course;
DROP TABLE IF EXISTS driving_range;

CREATE TABLE golf_course
(
	id serial,
	name VARCHAR(100) not null,
	latitude DECIMAL(8,6) not null,
	longitude DECIMAL(9,6) not null,
	website VARCHAR(2048),
	street_name VARCHAR(150) not null,
	city VARCHAR(75) not null,
	state_code CHAR(2) not null,
	postal_code VARCHAR(10) not null,
	phone_number VARCHAR(10),
	description VARCHAR(2000),
	has_carts BOOLEAN,
	has_driving_range BOOLEAN,
	has_club_rental BOOLEAN,
	has_caddies BOOLEAN,
	has_golf_lessons BOOLEAN,
	is_byob BOOLEAN,
	has_bar_restaurant BOOLEAN,
	green_fees NUMERIC(6,2),
	num_holes NUMERIC(3),
	par NUMERIC(2),
	course_length NUMERIC(4),
	dress_code VARCHAR(2000),
	tee_times VARCHAR(2048)
);

CREATE TABLE driving_range
(
	id serial,
	name VARCHAR(100) not null,
	latitude DECIMAL(8,6) not null,
	longitude DECIMAL(9,6) not null,
	website VARCHAR(2048),
	street_name VARCHAR(150) not null,
	city VARCHAR(75) not null,
	state_code CHAR(2) not null,
	postal_code VARCHAR(10) not null,
	phone_number VARCHAR(10),
	description VARCHAR(2000),
	has_grass BOOLEAN,
	has_mat BOOLEAN,
	has_lighting BOOLEAN,
	has_golf_lessons BOOLEAN,
	price BOOLEAN,
	has_real_targets BOOLEAN,
	has_bunkers BOOLEAN,
	has_simulator BOOLEAN,
	has_top_tracer BOOLEAN,
	has_putting_green BOOLEAN,
	has_bar_restaurant BOOLEAN

);

INSERT INTO golf_course (name, latitude, longitude, website, street_name, city, state_code, postal_code, phone_number, description,
						 has_carts, has_driving_range, has_club_rental, has_caddies, has_golf_lessons, is_byob, 
						 has_bar_restaurant, green_fees, num_holes, par, course_length, dress_code, tee_times) VALUES
				('Raven Golf Club', '33.3808164', '-112.0057638', 'https://ravenphx.com/', '3636 E Baseline Rd', 'Phoenix', 'AZ', '85042', '6022433636', NULL, TRUE, TRUE, TRUE, FALSE, 
				 TRUE, NULL, TRUE, NULL, '18', '72', '7078', NULL, NULL);
				 
COMMIT;

ROLLBACK;
				
				