DROP SEQUENCE user_sequense;

create SEQUENCE user_sequense;

SELECT nextval('user_sequense'), currval('user_sequense'), nextval('user_sequense');

CREATE table users6(
	user_id INTEGER PRIMARY KEY DEFAULT nextval('user_sequense'),
	user_name VARCHAR
);