SELECT 
	now(),
	CURRENT_DATE,
	CURRENT_TIME,
	CURRENT_USER,
	date_part('hours', now() ),
	date_part('minutes', now() ),
	date_part('seconds', now() ),
	date_part('days', now() ),
	date_part('months', now() ),
	date_part('year', now() );