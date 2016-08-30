//This will create a table that shows the movie and the actors that are in them
FROM movie AS m JOIN actors AS a
    ON a.movieid = m.movieid
ORDER BY m.movieid;