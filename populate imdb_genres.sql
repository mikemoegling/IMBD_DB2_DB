insert into
  MMOEGLING1.IMDB_GENRES (
    GENRE,
    /* GENRE    CHARACTER(25)               */ USER_CHANGED /* USERCHG  CHARACTER(50)  User Changed */
  )
select
  genres,
  'MMOEGLING'
from
  MMOEGLING1.IMDB_GENRES_IN
group by
  genres
order by
  genres;