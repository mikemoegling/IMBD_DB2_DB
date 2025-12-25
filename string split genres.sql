--select 
--    varchar(trim(ELEMENT), 20) as "Genre"
--from
--    imdb_in,  table(SYSTOOLS.SPLIT (genres, ','))




INSERT INTO imdb_genres_in (
            temp_genres /* GENRES  CHARACTER(50)  Temp_genres */
        )
    SELECT VARCHAR(TRIM(element), 20) AS "Genre"
        FROM imdb_in,
             TABLE (
                 systools.split(genres, ',')
             )
