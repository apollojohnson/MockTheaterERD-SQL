-- create customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(50),
	birthdate DATE
);

-- create concession table
CREATE TABLE concession(
	food_id SERIAL PRIMARY KEY,
	food_name VARCHAR(20),
	price INTEGER
);

-- create movie table
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	description VARCHAR(225),
	price INTEGER
);

-- create ticket table
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	price NUMERIC,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

-- create inventory table
CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id),
	food_id INTEGER NOT NULL,
	FOREIGN KEY(food_id) REFERENCES concession(food_id)
);

-- create purchase table
CREATE TABLE purchase(
	purchase_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	food_id INTEGER,
	FOREIGN KEY(food_id) REFERENCES concession(food_id),
	ticket_id INTEGER,
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);


