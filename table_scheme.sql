
DROP TABLE BeerReviews;

CREATE TABLE BeerReviews (
	brewery_id INT,
	brewery_name VARCHAR(120),
	review_time INT,
	review_overall FLOAT,
	review_aroma FLOAT,
	review_appearance FLOAT,
	review_profilename VARCHAR(60),
	beer_style VARCHAR(60),
	review_palate FLOAT,
	review_taste FLOAT,
	beer_name VARCHAR(200),
	beer_abv FLOAT,
	beer_beerid INT
);

SELECT * from BeerReviews;


DROP TABLE Happiness;

CREATE TABLE Happiness (
	country VARCHAR(60),
	region VARCHAR(60),
	hemispere VARCHAR(30),
	HappinessScore FLOAT,
	HDI INT,
	GDP_PerCapita FLOAT,
	Beer_PerCapita INT,
	Spirit_PerCapita INT,
	Wine_PerCapita INT,
	PRIMARY KEY(HappinessScore, Beer_PerCapita)
);
	
SELECT * from Happiness;


DROP TABLE Incarceration;

CREATE TABLE Incarceration (
	country VARCHAR(60),
	IncarRatePer100k INT,
	Prison INT,
	PRIMARY KEY (IncarRatePer100k, Prison)
);

SELECT * from Incarceration;