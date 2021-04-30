
DROP TABLE BeerReviews;

CREATE TABLE BeerReviews (
	brewery_id INT,
	brewery_name VARCHAR(60),
	review_time INT,
	review_overall FLOAT,
	review_aroma FLOAT,
	review_appearance FLOAT,
	review_profilename VARCHAR(60),
	beer_style VARCHAR(60),
	review_palate FLOAT,
	review_taste FLOAT,
	beer_name VARCHAR(60),
	beer_abv FLOAT,
	beer_beerid INT,
	PRIMARY KEY(brewery_id, beer_beerid)
);

SELECT * from BeerReviews;