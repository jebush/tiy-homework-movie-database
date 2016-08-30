//This will dispay the title and year of movies from the movie table and join it with the genre
SELECT m.title, m.year, g.movieid, g.genre
FROM movie AS m JOIN moviegenre AS g
  ON g.movieid = m.movieid
ORDER BY m.movieid;