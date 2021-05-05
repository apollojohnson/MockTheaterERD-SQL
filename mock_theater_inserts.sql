-- add data to customer table (one by one)
INSERT INTO customer(
	first_name,
	last_name,
	birthdate
)VALUES(
	'Leon',
	'Kuwata',
	'1996-09-02'
);

INSERT INTO customer(
	first_name,
	last_name,
	birthdate
)VALUES(
	'Maki',
	'Harukawa',
	'1995-05-12'
);

-- add data to concession table (multiple additions)
INSERT INTO concession(
	food_name,
	price
)VALUES(
	'Large Popcorn',
	'7'
),
(
	'Small Popcorn',
 	'5'
),
(
	'Fountain Drink',
	'1'
),
(
	'Assorted Candy',
	'4'
),
(
	'Nachos',
	'6'
),
(
	'Unlimited Refills',
	'1'
);

-- add data to movie table
INSERT INTO movie(
	name,
	description,
	price
)VALUES(
	'The Wizard of Oz',
	'',
	'5'
),
(
	'Black Panther',
	'',
	'10'
),
(
	'Parasite',
	'',
	'10'
),
(
	'Avengers: Endgame',
	'',
	'8'
),
(
	'The Incredibles',
	'',
	'5'
);

-- add data to ticket table
INSERT INTO ticket(
	price,
	movie_id
)VALUES(
	'5',
	'1'
),
(
	'10',
	'2'
),
(
	'10',
	'3'
),
(
	'8',
	'4'
),
(
	'5',
	'5'
);

-- add data to inventory table
INSERT INTO inventory(
	ticket_id,
	food_id
)VALUES(
	'1',
	'4'
),
(
	'2',
	'3'
),
(
	'3',
	'1'
),
(
	'4',
	'2'
),
(
	'5',
	'2'
);

-- add data to purchase table
INSERT INTO purchase(
	customer_id,
	food_id,
	ticket_id
)VALUES(
	'1',
	'4',
	'2'
),
(
	'2',
	'2',
	'3'
),
(
	'1',
	'5',
	'2'
),
(
	'2',
	'3',
	'5'
),
(
	'2',
	'5',
	'1'
);