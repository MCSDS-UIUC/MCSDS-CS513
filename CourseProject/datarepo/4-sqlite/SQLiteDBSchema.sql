-- Create the 'Movies' Table
CREATE TABLE IF NOT EXISTS tbl_movies (
seqid INTEGER,
budget   INTEGER ,
genres   TEXT ,
genres_id_name_pair   TEXT ,
genres_list   TEXT ,
homepage   TEXT ,
homepage_domain   TEXT ,
id   INTEGER PRIMARY KEY ,
keywords   TEXT ,
original_language   TEXT ,
original_title   TEXT ,
overview   TEXT ,
popularity   REAL ,
production_companies   TEXT ,
production_companies_id_name_pair   TEXT ,
production_companies_list   TEXT ,
production_countries   TEXT ,
production_countrycode_list   TEXT ,
release_date   TEXT ,
revenue   INTEGER ,
runtime   REAL ,
spoken_languages   TEXT ,
spoken_languages_list   TEXT ,
status   TEXT ,
tagline   TEXT ,
title   TEXT ,
vote_average   REAL ,
vote_count   INTEGER ,
genre_type_action   INTEGER ,
genre_type_adventure   INTEGER ,
genre_type_animation   INTEGER ,
genre_type_comedy   INTEGER ,
genre_type_crime   INTEGER ,
genre_type_documentary   INTEGER ,
genre_type_drama   INTEGER ,
genre_type_family   INTEGER ,
genre_type_fantasy   INTEGER ,
genre_type_foreign   INTEGER ,
genre_type_history   INTEGER ,
genre_type_horror   INTEGER ,
genre_type_music   INTEGER ,
genre_type_mystery   INTEGER ,
genre_type_romance   INTEGER ,
genre_type_science_fiction   INTEGER ,
genre_type_tv_movie   INTEGER ,
genre_type_thriller   INTEGER ,
genre_type_war   INTEGER ,
genre_type_western   INTEGER
);

-- Create the 'Credits' Table
CREATE TABLE IF NOT EXISTS tbl_credits (
movie_id                        INTEGER,
title                           TEXT,
cast                            TEXT,
cast_charactername_actorname    TEXT,
crew                            TEXT,
crew_crewname_job               TEXT,
FOREIGN KEY(movie_id) REFERENCES tbl_movies(movie_id)
);

-- Create the 'Credit-Cast' Table
CREATE TABLE IF NOT EXISTS tbl_credits_cast (
cast_id         INTEGER,
character       TEXT,
credit_id       TEXT,
gender          INTEGER,
id              INTEGER,
movie_id        INTEGER,
movie_title     TEXT,
name            TEXT,
order_id           INTEGER,
FOREIGN KEY(movie_id) REFERENCES tbl_movies(movie_id)
);

-- Create the 'Credit-Crew' Table
CREATE TABLE IF NOT EXISTS tbl_credits_crew (
credit_id      TEXT,
department     TEXT,
gender         INTEGER,
id             INTEGER,
job            TEXT,
movie_id       INTEGER,
movie_title    TEXT,
name           TEXT,
FOREIGN KEY(movie_id) REFERENCES tbl_movies(movie_id)
);
