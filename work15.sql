//This will show a table of the movie, actors in it, and their person type
SELECT m.title, m.year, p.person, pt.persontype
FROM movie AS m JOIN actors AS a
    ON a.movieid = m.movieid
  JOIN person AS p
  ON a.actors = p.personid
  JOIN  persontype AS pt
  ON p.persontype = pt.persontypeid

ORDER BY m.movieid;