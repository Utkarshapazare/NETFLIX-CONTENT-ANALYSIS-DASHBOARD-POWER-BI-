#TOTAL MOVIES 

SELECT COUNT(*) AS total_movies
FROM netflix_titles
WHERE type = 'Movie';

#TOTAL TV SHOWS

SELECT COUNT(*) AS total_tv_shows
FROM netflix_titles
WHERE type = 'TV Show';

#TOTAL CONTENT

SELECT COUNT(*) AS total_content
FROM netflix_titles;

#TYPE BY SHOW ID

SELECT type, COUNT(show_id) AS count
FROM netflix_titles
GROUP BY type;

#DIRECTOR BY TITLE

SELECT director, COUNT(title) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

# RATED BY RELLEASE YEAR

SELECT release_year, rating, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year, rating
ORDER BY release_year;


# TOTAL TV SHOWS BY DURATION 

SELECT duration, COUNT(*) AS total_tv_shows
FROM netflix_titles
WHERE type = 'TV Show'
GROUP BY duration
ORDER BY total_tv_shows DESC;

# NO OF TITLES PER YEAR

SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;