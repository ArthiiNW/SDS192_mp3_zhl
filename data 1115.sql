SELECT info_type_id, movie_info.movie_id, info, keyword, title.phonetic_code, production_year, title
 FROM imdb.title
 JOIN imdb.movie_info ON movie_info.movie_id = title.id
 JOIN imdb.keyword ON imdb.title.phonetic_code = keyword.phonetic_code
 HAVING info_type_id = 3 AND info = 'Western';