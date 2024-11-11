--Create new table
CREATE TABLE programming_languages(
	id SERIAL PRIMARY KEY,
	language VARCHAR(20),
	rating INT
);

--Insert data into table
INSERT INTO programming_languages(language, rating)
VALUES ('HTML', 95),
	('JS', 99),
	('JQuery', 98),
	('MySQL', 70),
	('MySQL', 70);

--Display table
SELECT * FROM programming_languages;

--Query the table to return the rows containing MySQL, and then delete one of the duplicates.
SELECT * FROM programming_languages
WHERE language = 'MySQL';

DELETE FROM programming_languages
WHERE id=5;

--Verify row has been dropped.
SELECT * FROM programming_languages;

--Add additional data
INSERT INTO programming_languages (language, rating)
VALUES ('Python', 98),
	('C++', 73),
	('R', 95);

SELECT * FROM programming_languages;

--Update JS to JavaScript
UPDATE programming_languages
SET language = 'Javascript'
WHERE id = 2;

SELECT * FROM programming_languages;

--Change HTML's rating to 90
UPDATE programming_languages
SET rating = 90
WHERE id = 1;

SELECT * FROM programming_languages;

--Add an "expert" column with the boolean default of true
ALTER TABLE programming_languages
ADD COLUMN expert BOOLEAN default true;

SELECT * FROM programming_languages;
	