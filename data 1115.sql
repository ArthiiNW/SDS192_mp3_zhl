SELECT info_type_id, movie_info.movie_id, info, keyword, aka_title.phonetic_code, production_year, title, keyword
 FROM imdb.aka_title
 JOIN imdb.movie_info ON movie_info.movie_id = aka_title.movie_id
 JOIN imdb.keyword ON imdb.aka_title.phonetic_code = keyword.phonetic_code
 HAVING info_type_id = 3 AND info = 'Western';